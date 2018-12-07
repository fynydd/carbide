﻿using System;
using System.Diagnostics;
using System.Web;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The TemporalHelpers class contains methods and properties for manipulating, 
    /// evaluating, or displaying dates and times.
    /// ]]></summary>
    public static class TemporalHelpers
    {
        /// <summary><![CDATA[
        /// Calculate an age with a given birthdate. Assumes current timezone.
        /// ]]></summary>
        /// <param name="dob">A <see cref="DateTime" /> value representing a birthday./></param>
        /// <returns>Age in years as an integer</returns>
        public static int CalculateAge(this DateTime dob)
        {
            return CalculateAge(dob, TimeZone.CurrentTimeZone.GetUtcOffset(DateTime.Now).Hours);
        }
        /// <summary><![CDATA[
        /// Calculate an age with a given birthdate.
        /// ]]></summary>
        /// <param name="dob">A <see cref="DateTime" /> value representing a birthday./></param>
        /// <param name="utcOffset">An <see cref="int"/> value indicating the offset to apply to UTC.</param>
        /// <returns>Age in years as an integer</returns>
        public static int CalculateAge(this DateTime dob, int utcOffset)
        {
            return Convert.ToInt32(Math.Truncate(DateDiff<double>(dob, DateTime.UtcNow, DateDiffComparisonType.Age, utcOffset, 0)));
        }

        /// <summary><![CDATA[
        /// Compares 2 dates and determine the time interval between them.
        /// ]]></summary>
        /// <example>
        /// For example, if using "Days" for comparison, startDate = "1/1/2008", and endDate = "1/7/2008",
        /// the return value is 6. Likewise, reversing the dates yields -6.
        /// </example>
        /// <param name="howtocompare">String specifying comparison type.</param>
        /// <param name="startDate">First date for comparison. If earlier than endDate, a positive result is returned.</param>
        /// <param name="endDate">Last date for comparison. If later than startDate, a positive result is returned.</param>
        /// <returns>-1 on failure, or the date difference as a double.</returns>
        public static T DateDiff<T>(this DateTime startDate, DateTime endDate, DateDiffComparisonType howtocompare)
        {
            return DateDiff<T>(startDate, endDate, howtocompare, TimeZone.CurrentTimeZone.GetUtcOffset(startDate).Hours, TimeZone.CurrentTimeZone.GetUtcOffset(endDate).Hours);
        }

        /// <summary><![CDATA[
        /// Compares 2 dates and determine the time interval between them taking time zones into account.
        /// ]]></summary>
        /// <example>
        /// For example, if using "age" for comparison, startDate = "2000-02-29 00:00:00.000", and endDate = "2010-2-28 23:30:00:00.000",
        /// and the startDate timezone is CST the return value is 9.
        /// </example>
        /// <param name="howtocompare">String specifying compare type</param>
        /// <param name="startDate">First date for comparison. If earlier than endDate, a positive result is returned.</param>
        /// <param name="startDateOffset">UTC offset value for startDate datetime.</param>
        /// <param name="endDate">Last date for comparison. If later than startDate, a positive result is returned.</param>
        /// <param name="endDateOffset">UTC offset value for endDate datetime.</param>
        /// <returns></returns>
        public static T DateDiff<T>(this DateTime startDate, DateTime endDate, DateDiffComparisonType howtocompare, int startDateOffset = 0, int endDateOffset = 0)
        {
            double diff = 0;

			if (startDate.Kind != DateTimeKind.Utc)
			{
				startDate = (new DateTimeOffset(startDate, new TimeSpan(startDateOffset, 0, 0))).UtcDateTime;
			}

			if (endDate.Kind != DateTimeKind.Utc)
			{
				endDate = (new DateTimeOffset(endDate, new TimeSpan(endDateOffset, 0, 0))).UtcDateTime;
			}

            try
            {
                #region Non-Fractional conversion options

                if (howtocompare == DateDiffComparisonType.DaysWhole)
                {
                    DateTime sd = new DateTime(startDate.Year, startDate.Month, startDate.Day, 0, 0, 0);
                    DateTime ed = new DateTime(endDate.Year, endDate.Month, endDate.Day, 0, 0, 0);

                    System.TimeSpan TS = new System.TimeSpan(ed.Ticks - sd.Ticks);

                    diff = Convert.ToDouble(TS.TotalDays);
                }

                else if (howtocompare == DateDiffComparisonType.Age)
                {
                    int age = endDate.Year - startDate.Year;    //people perceive their age in years

                    if (endDate.Month < startDate.Month || ((endDate.Month == startDate.Month) && (endDate.Day < startDate.Day)))
                    {
                        age--;  //birthday in current year not yet reached, so we are 1 year younger
                                //note that this structure explicitly places March 1st as the non-leapyear birthday for those born on Feb 29th.
                    }

                    diff = Convert.ToDouble(age);
                }

                #endregion

                else
                {
                    System.TimeSpan TS = new System.TimeSpan(endDate.Ticks - startDate.Ticks);

                    #region Fractional conversion options

                    switch (howtocompare)
                    {
                        case DateDiffComparisonType.Minutes:
                            diff = Convert.ToDouble(TS.TotalMinutes);
                            break;

                        case DateDiffComparisonType.Hours:
                            diff = Convert.ToDouble(TS.TotalHours);
                            break;

                        case DateDiffComparisonType.Seconds:
                            diff = Convert.ToDouble(TS.TotalSeconds);
                            break;

                        case DateDiffComparisonType.Ticks:
                            diff = Convert.ToDouble(TS.Ticks);
                            break;

                        case DateDiffComparisonType.Milliseconds:
                            diff = Convert.ToDouble(TS.TotalMilliseconds);
                            break;

                        case DateDiffComparisonType.Months:
                            diff = Convert.ToDouble(TS.TotalDays / 30.438);
                            break;

                        case DateDiffComparisonType.Years:
                            diff = Convert.ToDouble(TS.TotalDays / 365.255);
                            break;

                        case DateDiffComparisonType.Quarters: //TO DO: not use a calculation, but instead use Jan 1, Apr 1, July 1, Oct 1 to determine current quarter of this year (and how many quarters of the initial year) and add the remaining years as 4 quarters each
                            diff = Convert.ToDouble((TS.TotalDays / 365.255) / 4);
                            break;

                        default:
                            diff = Convert.ToDouble(TS.TotalDays); break;
                    }

                    #endregion
                }
            }

            catch
            {
                diff = -1;
            }

            return (T)Convert.ChangeType(diff, typeof(T));
        }

        /// <summary><![CDATA[
        /// Format a date/time variable for output.
        /// ]]></summary>
        /// <param name="date">DateTime variable to format.</param>
        /// <param name="format">Date format.</param>
        /// <returns>String with the date formatted as requested.</returns>
        public static string DateFormat(this DateTime date, DateFormats format)
        {
            string thedate = string.Empty;

            try
            {
                switch (format)
                {
                    case DateFormats.Sortable:
                        thedate = date.ToString("yyyy-MM-dd");
                        break;

                    case DateFormats.Slashes:
                        thedate = date.ToString("M/d/yyyy");
                        break;

                    case DateFormats.Dots:
                        thedate = date.ToString("M.d.yyyy");
                        break;

                    case DateFormats.Full:
                        thedate = date.ToString("dddd; MMMM d, yyyy");
                        break;

                    case DateFormats.Daily:
                        thedate = date.ToString("dddd; MMMM d");
                        break;

                    case DateFormats.Tidy:
                        thedate = date.ToString("MMM d, yyyy");
                        break;

                    case DateFormats.Weekday:
                        thedate = date.ToString("dddd");
                        break;

                    case DateFormats.WeekdayShort:
                        thedate = date.ToString("ddd");
                        break;

                    case DateFormats.Month:
                        thedate = date.ToString("MMMM");
                        break;

                    case DateFormats.MonthShort:
                        thedate = date.ToString("MMM");
                        break;

                    case DateFormats.Corporate:
                        thedate = date.ToString("M/yyyy");
                        break;

                    case DateFormats.PressRelease:
                        thedate = date.ToString("MMMM d, yyyy");
                        break;

                    case DateFormats.European:
                        thedate = date.ToString("dd-MMM-yyyy").ToUpper();
                        break;

                    case DateFormats.Rss:
					case DateFormats.Utc:

						thedate = date.ToString("yyyy-MM-dd") + "T" + date.ToString("HH:mm:ss") + "Z";
                        break;

                    case DateFormats.AbbreviatedFull:
                        thedate = date.ToString("ddd-MMM-dd-yyyy");
                        break;

                    case DateFormats.Friendly:

                        double days = Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Days)));
                        bool future = false;

                        if (DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes) <= 0)
                        {
                            future = true;
                        }

                        thedate = "today";

                        if (Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours)) < 13 && Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours)) >= 0)
                        {
                            if (Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes)) < 60 && Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes)) > 0)
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes))).ToString() + " minute";

                                if (Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }

                            else
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours))).ToString() + " hour";

                                if (Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }
                        }

                        else
                        {
                            if (days < 7 && days > 0)
                            {
                                if (days == 1)
                                {
                                    thedate = (future ? "tomorrow" : "yesterday");
                                }

                                else
                                {
                                    thedate = days.ToString() + " day";

                                    if (days != 1)
                                    {
                                        thedate += "s";
                                    }

                                    thedate += (future ? " from now" : " ago") + ", on " + date.ToString("M/d/yyyy");
                                }
                            }

                            else
                            {
                                if (days == 7)
                                {
                                    thedate = (future ? "a week from now" : "a week ago");
                                }

                                else
                                {
                                    thedate = "on " + date.ToString("M/d/yyyy");
                                }
                            }
                        }

                        break;

                    case DateFormats.Abstract:

                        days = Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Days));

                        future = false;

                        if (DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes) <= 0)
                        {
                            future = true;
                        }

                        thedate = "today";

                        if (Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours)) < 24 && Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours)) >= 0)
                        {
                            if (Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes)) < 60 && Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes)) > 0)
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes))).ToString() + " minute";

                                if (Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Minutes))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }

                            else
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours))).ToString() + " hour";

                                if (Convert.ToInt32(Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Hours))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }
                        }

                        else
                        {
                            if (days < 7 && days > 0)
                            {
                                if (days <= 1)
                                {
                                    thedate = (future ? "tomorrow" : "yesterday");
                                }

                                else
                                {
                                    thedate = FormatAbstract(days, "day", 0.3, 0.6, 0.8, future);
                                }
                            }

                            else
                            {
                                double weeks = days / 7;

                                if (weeks < 4)
                                {
                                    thedate = FormatAbstract(weeks, "week", 0.3, 0.6, 0.8, future);
                                }

                                else
                                {
                                    double months = Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Months));

                                    if (months < 12)
                                    {
                                        thedate = FormatAbstract(months, "month", 0.3, 0.6, 0.8, future);
                                    }

                                    else
                                    {
                                        double years = Math.Abs(DateDiff<double>(date, System.DateTime.Now, DateDiffComparisonType.Years));

                                        thedate = FormatAbstract(years, "year", 0.3, 0.6, 0.8, future);
                                    }
                                }
                            }
                        }

                        break;

                    default:
                        thedate = date.ToString("M-d-yyyy");
                        break;
                }
            }

            catch
            { }

            return (thedate);
        }

        /// <summary><![CDATA[
        /// Format a date/time variable for output.
        /// ]]></summary>
        /// <param name="value">DateTime variable to format.</param>
        /// <param name="format">Date format.</param>
        /// <returns>String with the date formatted as requested.</returns>
        public static string DateFormat(this string value, DateFormats format)
        {
            if (string.IsNullOrEmpty(value) == false)
            {
                DateTime date = Convert.ToDateTime(value);

                if (date != null)
                {
                    return DateFormat(date, format);
                }

                else
                {
                    return string.Empty;
                }
            }

            else
            {
                return string.Empty;
            }
        }

        /// <summary><![CDATA[
        /// Used to render abstract dates, given rounding thresholds.
        /// ]]></summary>
        /// <param name="value">Number of items to evaluate (e.g. days, like 1.4).</param>
        /// <param name="increment">Singular form of the text value to display for increments (e.g. "day").</param>
        /// <param name="lowend">Fractional value for determing low end (e.g. 0.4 makes a value of 3.4 "days" render as "3 days ago").</param>
        /// <param name="halfway">Fractional value for determing the maximum halfway point (e.g. 0.6 makes a value of 3.6 "days" render as "over 3 days ago").</param>
        /// <param name="almost">Fractional value for determing when a value should round up (e.g. 0.9 makes a value of 3.9 "days" render as "almost 4 days ago").</param>
        /// <param name="future">True if the date is in the future.</param>
        /// <returns>String representing the abstracted value.</returns>
        public static string FormatAbstract<T>(this T value, string increment, double lowend, double halfway, double almost, bool future)
        {
            string result = "";

            if (
                typeof(T) == typeof(short) || typeof(T) == typeof(Int16) || typeof(T) == typeof(ushort) || typeof(T) == typeof(UInt16) ||
                typeof(T) == typeof(int) || typeof(T) == typeof(Int32) || typeof(T) == typeof(uint) || typeof(T) == typeof(UInt32) ||
                typeof(T) == typeof(long) || typeof(T) == typeof(Int64) || typeof(T) == typeof(ulong) || typeof(T) == typeof(UInt64) ||
                typeof(T) == typeof(float) || typeof(T) == typeof(Single) ||
                typeof(T) == typeof(double) || typeof(T) == typeof(Double)
                )
            {
                double count = Convert.ToDouble(value);

                if (count < (1 + lowend))
                {
                    result = "a " + increment + (future ? " from now" : " ago");
                }

                else if (count >= (1 + lowend) && count < (1 + halfway))
                {
                    result = "over a " + increment + (future ? " from now" : " ago");
                }

                else
                {
                    double countwhole = count - (count % 1);
                    double mod = (count % 1);

                    if (mod < lowend)
                    {
                        result = countwhole.ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                    }

                    else if (mod >= lowend && mod < halfway)
                    {
                        result = (future ? "more than " : "over ") + countwhole.ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                    }

                    else if (mod >= halfway && mod < almost)
                    {
                        result = (future ? "about " : "almost ") + (countwhole + 1).ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                    }

                    else if (mod >= almost)
                    {
                        result = (countwhole + 1).ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                    }
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Format a time of day for output.
        /// ]]></summary>
        /// <param name="date">Time variable to format.</param>
        /// <param name="format">Time format.</param>
        /// <returns>String with the time of day formatted as requested.</returns>
        public static string TimeFormat(this DateTime date, TimeFormats format)
        {
            string result = string.Empty;

            try
            {
                switch (format)
                {
                    case TimeFormats.Standard:
                        result = date.ToString("h:mmtt");
                        break;
                    case TimeFormats.SqlMilitary:
                        result = date.ToString("HH:mm:ss");
                        break;
                    case TimeFormats.Military:
                        result = date.ToString("HH:mm");
                        break;
                    default:
                        result = date.ToString("h:mmtt");
                        break;
                }
            }
            catch
            { }

            return result;
        }

        /// <summary><![CDATA[
        /// Format a time of day for output.
        /// ]]></summary>
        /// <param name="date">Time variable to format.</param>
        /// <param name="format">Time format.</param>
        /// <returns>String with the time of day formatted as requested.</returns>
        public static string TimeFormat(this string date, TimeFormats format)
        {
            return TimeFormat(Convert.ToDateTime(date), format);
        }

        /// <summary><![CDATA[
        /// Returns a struct with a start and end date for a given start date and interval.
        /// ]]></summary>
        /// <example>
        /// If you pass the current date, and wish to know the first
        /// and last days of the week based on the current day:
        /// <code><![CDATA[
        /// DateRangeStruct result = DateTime.Now.DateRange(TemporalHelpers.DateRangeOptions.Week);
        /// Response.Write ("The first day of the week is " + result.startDate.ToString() + 
        /// ", and the last day of the week is " + result.endDate.ToString());
        /// ]]></code>
        /// </example>
        /// <param name="relativeDate">Date to use as the basis for calculating the start and end date of the range.</param>
        /// <param name="dateRangeOptions">Enumeration value specifying which abstracted date range to evaluate. Note, weeks begin on Sunday and end on Saturday.</param>
        /// <returns>DateTimeStruct with the start and end date of the range.</returns>
        public static DateRangeStruct DateRange(this DateTime relativeDate, DateRangeOptions dateRangeOptions)
        {
            DateTime[] dates = { DateTime.Today, DateTime.Today };
            DateTime myDate = relativeDate;

            switch (dateRangeOptions)
            {
                case DateRangeOptions.Week:

                    if (myDate.DayOfWeek > 0) myDate = myDate.AddDays(-1 * Convert.ToInt32(myDate.DayOfWeek));

                    dates[0] = myDate;
                    dates[1] = myDate.AddDays(6);

                    break;

                case DateRangeOptions.Month:

                    if (myDate.Day > 1) myDate = myDate.AddDays(-1 * (myDate.Day - 1));

                    dates[0] = myDate;
                    dates[1] = myDate.AddMonths(1);
                    dates[1] = dates[1].AddDays(-1);

                    break;

                case DateRangeOptions.Quarter:

                    if (myDate.Month < 4) dates[0] = Convert.ToDateTime("1/1/" + myDate.Year.ToString());
                    if (myDate.Month > 3 && myDate.Month < 7) dates[0] = Convert.ToDateTime("4/1/" + myDate.Year.ToString());
                    if (myDate.Month > 6 && myDate.Month < 10) dates[0] = Convert.ToDateTime("7/1/" + myDate.Year.ToString());
                    if (myDate.Month > 9) dates[0] = Convert.ToDateTime("10/1/" + myDate.Year.ToString());

                    dates[1] = dates[0].AddMonths(3);
                    dates[1] = dates[1].AddDays(-1);

                    break;

                case DateRangeOptions.Year:

                    dates[0] = Convert.ToDateTime("1/1/" + myDate.Year.ToString());
                    dates[1] = Convert.ToDateTime("12/31/" + myDate.Year.ToString());

                    break;
            }

            DateRangeStruct result = new DateRangeStruct();
            result.startDate = dates[0];
            result.endDate = dates[1];

            return result;
        }

        /// <summary><![CDATA[
        /// Returns a struct with a start and end date for a given start date and interval.
        /// ]]></summary>
        /// <example>
        /// If you pass the current date, and wish to know the first
        /// and last days of the week based on the current day:
        /// <code><![CDATA[
        /// DateRangeStruct result = DateTime.Now.DateRange(TemporalHelpers.DateRangeOptions.Week);
        /// Response.Write ("The first day of the week is " + result.startDate.ToString() + 
        /// ", and the last day of the week is " + result.endDate.ToString());
        /// ]]></code>
        /// </example>
        /// <param name="relativeDate">Date to use as the basis for calculating the start and end date of the range.</param>
        /// <param name="dateRangeOptions">Enumeration value specifying which abstracted date range to evaluate. Note, weeks begin on Sunday and end on Saturday.</param>
        /// <returns>DateTimeStruct with the start and end date of the range.</returns>
        public static DateRangeStruct DateRange(this string relativeDate, DateRangeOptions dateRangeOptions)
        {
            return DateRange(Convert.ToDateTime(relativeDate), dateRangeOptions);
        }

        /// <summary><![CDATA[
        /// Get the month name by its number.
        /// ]]></summary>
        /// <param name="value">Month number for which a name is requested (1 to 12).</param>
        /// <param name="returnAbbreviation">Set to "true" to return month names abbreviation (e.g. Dec).</param>
        /// <returns>Month name or abbreviation, or an empty string on error.</returns>
        public static string GetMonthName<T>(this T value, bool returnAbbreviation = false)
        {
            string monthName = "";
            int monthNumber = 0;

            if (typeof(T) == typeof(DateTime))
            {
                monthNumber = ((DateTime)Convert.ChangeType(value, typeof(DateTime))).Month;
            }

            if (typeof(T) == typeof(string))
            {
                string mn = ((string)Convert.ChangeType(value, typeof(string)));

                if (mn.IsPureNumeric())
                {
                    monthNumber = Convert.ToInt32(mn);
                }
            }

            if (
                typeof(T) == typeof(short) || typeof(T) == typeof(Int16) || typeof(T) == typeof(ushort) || typeof(T) == typeof(UInt16) ||
                typeof(T) == typeof(int) || typeof(T) == typeof(Int32) || typeof(T) == typeof(uint) || typeof(T) == typeof(UInt32) ||
                typeof(T) == typeof(long) || typeof(T) == typeof(Int64) || typeof(T) == typeof(ulong) || typeof(T) == typeof(UInt64) ||
                typeof(T) == typeof(float) || typeof(T) == typeof(Single) ||
                typeof(T) == typeof(double) || typeof(T) == typeof(Double)
                )
            {
                monthNumber = Convert.ToInt32(value);
            }

            if (monthNumber > 0 && monthNumber < 13)
            {
                if (returnAbbreviation)
                {
                    monthName = DateFormat(monthNumber + "/1/2009", DateFormats.MonthShort);
                }

                else
                {
                    monthName = DateFormat(monthNumber + "/1/2009", DateFormats.Month);
                }
            }

            return monthName;
        }

        /// <summary><![CDATA[
        /// Convert a DateTime value to a given time zone, automatically handling DST if using .NET CLR 3.5 or later.
        /// ]]></summary>
        /// <param name="dateTime">DateTime value to convert.</param>
        /// <param name="timeZoneText">Text value of the desired time zone. Examples include "Eastern Standard Time", "Central Standard Time", "Mountain Standard Time", "Pacific Standard Time".</param>
        /// <returns>dateTime converted to the desired time zone.</returns>
        public static DateTime ConvertDateToTimeZone(this DateTime dateTime, string timeZoneText)
        {
            var destinationTimeZone = TimeZoneInfo.FindSystemTimeZoneById(timeZoneText);

            if (destinationTimeZone.Id == TimeZoneInfo.Local.Id)
            {
                return dateTime;
            }

            else
            {
                if (dateTime.Kind == DateTimeKind.Utc)
                {
                    return TimeZoneInfo.ConvertTimeFromUtc(dateTime, destinationTimeZone);
                }

                else
                {
                    return TimeZoneInfo.ConvertTime(dateTime, destinationTimeZone);
                }
            }
        }

        /// <summary><![CDATA[
        /// Locking pause in execution for the calling code block.
        /// Useful for delays before retrying an operation.
        /// ]]></summary>
        /// <param name="milliseconds">Length of time in milliseconds to wait</param>
        public static void PauseExecution(int milliseconds)
        {
            var wait = new StopWatch();
            wait.Start();

            while (wait.GetTime<int>() < milliseconds)
            { }

            wait.Stop();
        }

        /// <summary><![CDATA[
        /// Task Interval methods help manage scheduled activities triggered by web page views.
        /// These methods only track status and time. They do not execute anything.
        /// 
        /// Start by running TaskIntervalInit(). This can be placed on a web page and will skip
        /// its processes if it has been run prior. This establishes the name of the task and the
        /// time interval in seconds (or greater) before it will run again.
        /// ]]></summary>
        /// <param name="activityName">Name of the activity, like "TwitterImport".</param>
        /// <param name="seconds">Number of seconds between runs.</param>
        /// <param name="context">Manually set the context if running the method from a thread.</param>
        public static void TaskIntervalInit(string activityName, double seconds, HttpContext context = null)
        {
            try
            {
                if (context == null)
                {
                    context = HttpContext.Current;
                }

                if (CacheHelpers.CacheExists(activityName + "_Seconds", context) == false || CacheHelpers.CacheExists(activityName + "_Running", context) == false)
                {
                    CacheHelpers.CacheAddPermanent(activityName + "_Running", false, context);
                    CacheHelpers.CacheAddPermanent(activityName + "_Seconds", seconds, context);
                    CacheHelpers.CacheDelete(activityName + "_Waiting", context);

                    Debug.WriteLine("Carbide.TemporalHelpers.TaskIntervalInit (" + activityName + ") - INITIALIZED");
                }

                else
                {
                    Debug.WriteLine("Carbide.TemporalHelpers.TaskIntervalInit (" + activityName + ") - ALREADY INITIALIZED, skipping");
                }
            }

            catch (Exception e)
            {
                Debug.WriteLine("Carbide.Temporal EXCEPTION: TaskIntervalInit (" + activityName + ") - " + e.Message);
            }
        }

        /// <summary><![CDATA[
        /// Task Interval methods help manage scheduled activities triggered by web page views.
        /// These methods only track status and time. They do not execute anything.
        /// 
        /// Run TimeIntervalStart() from your actual task method to indicate that it has begun.
        /// ]]></summary>
        /// <param name="activityName">Name of the activity, like "TwitterImport".</param>
        /// <param name="context">Manually set the context if running the method from a thread.</param>
        public static void TaskIntervalStart(string activityName, HttpContext context = null)
        {
            try
            {
                if (context == null)
                {
                    context = HttpContext.Current;
                }

                CacheHelpers.CacheAddPermanent(activityName + "_Running", true, context);
                CacheHelpers.CacheDelete(activityName + "_Waiting", context);

                Debug.WriteLine("Carbide.TemporalHelpers.TaskIntervalStart (" + activityName + ") - STARTED");
            }

            catch (Exception e)
            {
                Debug.WriteLine("Carbide.Temporal EXCEPTION: TaskIntervalStart (" + activityName + ") - " + e.Message);
            }
        }

        /// <summary><![CDATA[
        /// Task Interval methods help manage scheduled activities triggered by web page views.
        /// These methods only track status and time. They do not execute anything.
        /// 
        /// Run TimeIntervalStop() from your actual task method to indicate that it has ended.
        /// ]]></summary>
        /// <param name="activityName">Name of the activity, like "TwitterImport".</param>
        /// <param name="context">Manually set the context if running the method from a thread.</param>
        public static void TaskIntervalStop(string activityName, HttpContext context = null)
        {
            try
            {
                if (context == null)
                {
                    context = HttpContext.Current;
                }

                CacheHelpers.CacheAddPermanent(activityName + "_Running", false, context);

                if (CacheHelpers.CacheExists(activityName + "_Seconds", context))
                {
                    CacheHelpers.CacheAdd(activityName + "_Waiting", DateTime.Now.AddSeconds(CacheHelpers.Cache<double>(activityName + "_Seconds", context)), DateTime.Now.AddSeconds(CacheHelpers.Cache<double>(activityName + "_Seconds", context)), context);

                    Debug.WriteLine("Carbide.TemporalHelpers.TaskIntervalStop (" + activityName + ") - STOPPED");
                }

                else
                {
                    CacheHelpers.CacheDelete(activityName + "_Running", context);
                    CacheHelpers.CacheDelete(activityName + "_Seconds", context);
                    CacheHelpers.CacheDelete(activityName + "_Waiting", context);

                    Debug.WriteLine("Carbide.TemporalHelpers.TaskIntervalStop (" + activityName + ") - task time doesn't exist; resetting");
                }
            }

            catch (Exception e)
            {
                Debug.WriteLine("Carbide.Temporal EXCEPTION: TaskIntervalStop (" + activityName + ") - " + e.Message);
            }
        }

        /// <summary><![CDATA[
        /// Task Interval methods help manage scheduled activities triggered by web page views.
        /// These methods only track status and time. They do not execute anything.
        /// 
        /// Check to see if a task is currently running (as indicated by running TimeIntervalStart()).
        /// ]]></summary>
        /// <param name="activityName">Name of the activity, like "TwitterImport".</param>
        /// <param name="context">Manually set the context if running the method from a thread.</param>
        public static bool TaskIsRunning(string activityName, HttpContext context = null)
        {
            bool result = false;

            if (context == null)
            {
                context = HttpContext.Current;
            }

            if (CacheHelpers.CacheExists(activityName + "_Running", context) == true)
            {
                result = CacheHelpers.Cache<bool>(activityName + "_Running", context);
            }

            Debug.WriteLine("Carbide.TemporalHelpers.TaskIsRunning (" + activityName + ") - " + (result == true ? "YES" : "NO"));

            return result;
        }

        /// <summary><![CDATA[
        /// Task Interval methods help manage scheduled activities triggered by web page views.
        /// These methods only track status and time. They do not execute anything.
        /// 
        /// Check to see if a task should be run again. It ensures that the task is not currently running
        /// and that the task time in seconds set in TimeIntervalInit() has elapsed.
        /// ]]></summary>
        /// <param name="activityName">Name of the activity, like "TwitterImport".</param>
        /// <param name="context">Manually set the context if running the method from a thread.</param>
        public static bool TaskShouldBeRun(string activityName, HttpContext context = null)
        {
            bool result = true;

            if (context == null)
            {
                context = HttpContext.Current;
            }

            if (CacheHelpers.CacheExists(activityName + "_Waiting", context) == false)
            {
                try
                {
                    if (TaskIsRunning(activityName, context) == true)
                    {
                        result = false;

                        Debug.WriteLine("Carbide.TemporalHelpers.TaskShouldBeRun (" + activityName + ") - ALREADY RUNNING");
                    }
                }

                catch (Exception e)
                {
                    Debug.WriteLine("Carbide.Temporal EXCEPTION: TaskShouldBeRun (" + activityName + ") - " + e.Message);
                }
            }

            else
            {
                result = false;

                Debug.WriteLine("Carbide.TemporalHelpers.TaskShouldBeRun (" + activityName + ") - TOO SOON; " + FormatTimer((int)(TemporalHelpers.DateDiff<double>(DateTime.Now, CacheHelpers.Cache<DateTime>(activityName + "_Waiting", context), DateDiffComparisonType.Seconds)), " ") + " to go");
            }

            Debug.WriteLine("Carbide.TemporalHelpers.TaskShouldBeRun (" + activityName + ") - " + (result == true ? "YES" : "NO"));

            return result;
        }

        /// <summary><![CDATA[
        /// Format seconds as a more friendly timespan with a custom delimitter.
        /// Like: 3d : 5h : 12m : 15s or 3d+5h+12m+15s
        /// ]]></summary>
        /// <param name="seconds">Number of seconds to format.</param>
        /// <param name="delimitter">Text to separate time elements; defaults to " : ".</param>
        /// <returns>Formatted timespan</returns>
        public static string FormatTimer(int seconds, string delimitter = " : ")
        {
            var result = "0 seconds";

            if (seconds > 0)
            {
                result = (int)seconds + "s";

                if (seconds >= 60)
                {
                    TimeSpan ts = new TimeSpan(0, 0, seconds);

                    result = ts.Minutes.ToString() + "m" + delimitter + ts.Seconds.ToString() + "s";

                    if (ts.Hours > 0)
                    {
                        result = ts.Hours.ToString() + "h" + delimitter + ts.Minutes.ToString() + "m" + delimitter + ts.Seconds.ToString() + "s";
                    }

                    if (ts.Days > 0)
                    {
                        result = ts.Days + "d" + delimitter + ts.Hours.ToString() + "h" + delimitter + ts.Minutes.ToString() + "m" + delimitter + ts.Seconds.ToString() + "s";
                    }
                }
            }

            return result;
        }
    }

    /// <summary><![CDATA[
    /// Accurate, Simple, and Easy to use Stopwatch Class. This class
    /// can be used to track process execution time in seconds and milliseconds.
    /// ]]></summary>
    /// <example>
    /// Sample usage:
    /// <code><![CDATA[
    /// StopWatch sw = new StopWatch();
    /// sw.Start();
    /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
    /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
    /// sw.Stop()
    /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
    /// ]]></code>
    /// </example>
    public class StopWatch
    {
        #region Properties

        /// <summary><![CDATA[
        /// Stop watch start time
        /// ]]></summary>
        public DateTime StartDate { get; set; }

        /// <summary><![CDATA[
        /// Stopwatch stop time
        /// ]]></summary>
        public DateTime StopDate { get; set; }

        #endregion

        #region Constructors

        /// <summary><![CDATA[
        /// Initializes the StopWatch to 0.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]></code>
        /// </example>
        public StopWatch()
        {
            Reset();
        }

        #endregion

        /// <summary><![CDATA[
        /// Starts the Stopwatch.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// stopwatch.Stop();
        /// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetSeconds()");
        /// ]]></code>
        /// </example>
        public void Start()
        {
            StartDate = DateTime.Now;
        }

        /// <summary><![CDATA[
        /// Stops the Stopwatch.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// stopwatch.Stop();
        /// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetSeconds()");
        /// ]]></code>
        /// </example>
        public void Stop()
        {
            StopDate = DateTime.Now;
        }

        /// <summary><![CDATA[
        /// Reset the Stopwatch to 0.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// stopwatch.Stop();
        /// stopwatch.Reset();
        /// Assert.AreEqual(0, stopwatch.GetSeconds<int>(), "GetSeconds()");
        /// ]]></code>
        /// </example>
        public void Reset()
        {
            StartDate = DateTime.Now;
            StopDate = StartDate;
        }

        /// <summary><![CDATA[
        /// Returns the elapsed time in milliseconds since the StopWatch was started.
        /// If the stopwatch has been stopped, the returned time will always be the same,
        /// otherwise it will continue to increase.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// Assert.AreEqual(2000, stopwatch.GetTime<int>(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// stopwatch.Stop();
        /// Assert.AreEqual(3000, stopwatch.GetTime<int>(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// Assert.AreEqual(3000, stopwatch.GetTime<int>(), "GetTime()");
        /// ]]></code>
        /// </example>
        /// <returns>Milliseconds since the stopwatch was started.</returns>
        public T GetTime<T>()
        {
            double Elapsed = 0;

            if (StartDate.Ticks < StopDate.Ticks)
            {
                Elapsed = TimeSpan.FromTicks(StopDate.Ticks - StartDate.Ticks).TotalMilliseconds;
            }

            else
            {
                Elapsed = TimeSpan.FromTicks(DateTime.Now.Ticks - StartDate.Ticks).TotalMilliseconds;
            }

            return (T)(Convert.ChangeType(Elapsed, typeof(T)));
        }

        /// <summary><![CDATA[
        /// Returns the elapsed time in milliseconds since the StopWatch was started.
        /// If the stopwatch has been stopped, the returned time will always be the same,
        /// otherwise it will continue to increase.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// Assert.AreEqual("2000", stopwatch.GetTime(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// stopwatch.Stop();
        /// Assert.AreEqual("3000", stopwatch.GetTime(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// Assert.AreEqual("3000", stopwatch.GetTime(), "GetTime()");
        /// ]]></code>
        /// </example>
        /// <returns>Milliseconds since the stopwatch was started.</returns>
        public string GetTime()
        {
            return GetTime<string>();
        }

        /// <summary><![CDATA[
        /// Returns the elapsed time in seconds since the StopWatch was started.
        /// If the stopwatch has been stopped, the returned time will always be the same,
        /// otherwise it will continue to increase.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// stopwatch.Stop();
        /// Assert.AreEqual(3, stopwatch.GetSeconds<int>(), "GetTime()");
        /// TemporalHelpers.PauseExecution(1000);
        /// Assert.AreEqual(3, stopwatch.GetSeconds<int>(), "GetTime()");
        /// ]]></code>
        /// </example>
        /// <returns>Seconds since the stopwatch was started.</returns>
        public T GetSeconds<T>()
        {
            double seconds = GetTime<double>() / (double)1000;

            return (T)(Convert.ChangeType(seconds, typeof(T)));
        }

        /// <summary><![CDATA[
        /// Returns the elapsed time in seconds since the StopWatch was started.
        /// If the stopwatch has been stopped, the returned time will always be the same,
        /// otherwise it will continue to increase.
        /// ]]></summary>
        /// <example>
        /// Sample usage:
        /// <code><![CDATA[
        /// StopWatch stopwatch = new StopWatch();
        /// stopwatch.Start();
        /// TemporalHelpers.PauseExecution(2000);
        /// stopwatch.Stop();
        /// Assert.AreEqual("00:00:02", stopwatch.GetTimeSpan().ToString(@"hh\:mm\:ss"), "GetTimeSpan() 1 second");
        /// ]]></code>
        /// </example>
        /// <returns>TimeSpan value of the elapsed time.</returns>
        public TimeSpan GetTimeSpan()
        {
            return TimeSpan.FromMilliseconds(GetTime<double>());
        }
    }
}
