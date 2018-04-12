using System;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.IO.Compression;
using System.Runtime.InteropServices;
using System.Security;
using System.Security.Cryptography;
using System.Security.Principal;
using System.Text;
using System.Text.RegularExpressions;
using System.Timers;
using System.Web;
using System.Web.Mail;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;

namespace Argentini.Carbide
{
    /// <summary>
    /// The TemporalHelpers class contains methods and properties for manipulating, 
    /// evaluating, or displaying dates and times.
    /// </summary>
    public static class TemporalHelpers
    {
        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// A string with the version number of the class.
        /// </value>
        public static String Version
        {
            get
            {
                return "2018.04.09A";
            }
        }

        #endregion

        #region Constants

        /// <summary>
        /// Enumeration used in the DateDiff method to specify what date/time increment to use.
        /// </summary>
        public enum DateDiffComparisonType
        {
            /// <summary>
            /// Minutes (fractional).
            /// </summary>
            Minutes,

            /// <summary>
            /// Hours (fractional).
            /// </summary>
            Hours,

            /// <summary>
            /// Seconds (fractional).
            /// </summary>
            Seconds,

            /// <summary>
            /// CPU ticks (fractional).
            /// </summary>
            Ticks,

            /// <summary>
            /// Milliseconds (fractional).
            /// </summary>
            Milliseconds,

            /// <summary>
            /// Years (fractional).
            /// </summary>
            Years,

            /// <summary>
            /// Quarters (fractional).
            /// </summary>
            Quarters,

            /// <summary>
            /// Days (fractional).
            /// </summary>
            Days,

            /// <summary>
            /// Months (fractional).
            /// </summary>
            Months,

            /// <summary>
            /// Days (whole number; ignores time).
            /// Result is exclusive (e.g. 1/1/2008 and 1/7/2008 returns 6).
            /// </summary>
            DaysWhole,

            /// <summary>
            /// Age in Years (whole number, takes leap year into account, many options - see CalculateAge for more details).
            /// Takes Leap Year into account: with a 2/29/2000 birthday, if today is 2/28/2011 age is 10, if today is 3/1/2011 age is 11.
            /// </summary>
            Age
        }

        /// <summary>
        /// Enumeration used with the DateFormat method, specifying the format of the output date.
        /// </summary>
        public enum DateFormats
        {
            /// <summary>
            /// 2007-12-20
            /// </summary>
            Sortable,

            /// <summary>
            /// 12/20/2007
            /// </summary>
            Slashes,

            /// <summary>
            /// 12.20.2007
            /// </summary>
            Dots,

            /// <summary>
            /// Friday; December 20, 2007
            /// </summary>
            Full,

            /// <summary>
            /// Friday; December 20
            /// </summary>
            Daily,

            /// <summary>
            /// Dec 1, 2007
            /// </summary>
            Tidy,

            /// <summary>
            /// Friday
            /// </summary>
            Weekday,

            /// <summary>
            /// Fri
            /// </summary>
            WeekdayShort,

            /// <summary>
            /// December
            /// </summary>
            Month,

            /// <summary>
            /// Dec
            /// </summary>
            MonthShort,

            /// <summary>
            /// 12/2007
            /// </summary>
            Corporate,

            /// <summary>
            /// December 20, 2007
            /// </summary>
            PressRelease,

            /// <summary>
            /// 12-20-2007
            /// </summary>
            Standard,

            /// <summary>
            /// 2007-12-20T09:45:24Z
            /// </summary>
            Rss,

            /// <summary>
            /// Fri-Dec-20-2007
            /// </summary>
            AbbreviatedFull,

            /// <summary>
            /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", or "on m/d/yyyy"
            /// </summary>
            Friendly,

            /// <summary>
            /// No dates, only abstractions based on the current date and time;
            /// "X minutes ago", "X hours ago", "yesterday", "X days ago", "a week ago", "a month ago", "x months ago", "a year ago", "almost 2 years ago", etc.
            /// </summary>
            Abstract
        }

        /// <summary>
        /// Enumeration used to format times of day with the TimeFormat method.
        /// </summary>
        public enum TimeFormats
        {
            /// <summary>
            /// 10:23PM
            /// </summary>
            Standard,

            /// <summary>
            /// 15:30:00
            /// </summary>
            SqlMilitary,

            /// <summary>
            /// 15:30
            /// </summary>
            Military
        }

        /// <summary>
        /// Enumeration used to define date intervals for the DateRange method.
        /// </summary>
        [Flags]
        public enum DateRangeOptions : byte
        {
            /// <summary>
            /// Weeks
            /// </summary>
            Week = 1,

            /// <summary>
            /// Months
            /// </summary>
            Month = 2,

            /// <summary>
            /// Quarters
            /// </summary>
            Quarter = 4,

            /// <summary>
            /// Years
            /// </summary>
            Year = 5
        }

        /// <summary>
        /// Struct used to define the return value format for the DateRange method.
        /// </summary>
        public struct DateRangeStruct
        {
            /// <summary>
            /// Start Date is the first element.
            /// </summary>
            public DateTime startDate;

            /// <summary>
            /// End Date is the second element.
            /// </summary>
            public DateTime endDate;
        }

        #endregion

        #region Methods

        /// <summary>
        /// Calculate an age with a given birthdate. Assumes current timezone.
        /// </summary>
        /// <param name="birthday">A <see cref="DateTime" /> value representing a birthday./></param>
        /// <returns>Age as a <see cref="Double"/></returns>
        public static int CalculateAge(DateTime birthday)
        {
            return CalculateAge(birthday, TimeZone.CurrentTimeZone.GetUtcOffset(DateTime.Now).Hours);
        }
        /// <summary>
        /// Calculate an age with a given birthdate.
        /// </summary>
        /// <param name="birthday">A <see cref="DateTime" /> value representing a birthday./></param>
        /// <param name="utcOffset">An <see cref="int"/> value indicating the offset to apply to UTC.</param>
        /// <returns>Age as a <see cref="Double"/></returns>
        public static int CalculateAge(DateTime birthday, int utcOffset)
        {
            return Convert.ToInt32(Math.Truncate(DateDiff(DateDiffComparisonType.Age, birthday, utcOffset, DateTime.UtcNow, 0)));
        }

        /// <summary>
        /// Compares 2 dates and determine the time interval between them.
        /// </summary>
        /// <example>
        /// For example, if using "Days" for comparison, startDate = "1/1/2008", and endDate = "1/7/2008",
        /// the return value is 6. Likewise, reversing the dates yields -6.
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// double result = TemporalHelpers.DateDiff(
        ///		TemporalHelpers.DateDiffComparisonType.days,
        ///		startDate,
        ///		endDate);
        /// </code>
        /// </example>
        /// <param name="howtocompare">String specifying comparison type.</param>
        /// <param name="startDate">First date for comparison. If earlier than endDate, a positive result is returned.</param>
        /// <param name="endDate">Last date for comparison. If later than startDate, a positive result is returned.</param>
        /// <returns>-1 on failure, or the date difference as a double.</returns>
        public static double DateDiff(DateDiffComparisonType howtocompare, System.DateTime startDate, System.DateTime endDate)
        {
            return DateDiff(howtocompare, startDate, TimeZone.CurrentTimeZone.GetUtcOffset(startDate).Hours, endDate, TimeZone.CurrentTimeZone.GetUtcOffset(endDate).Hours);
        }
        /// <summary>
        /// Compares 2 dates and determine the time interval between them taking time zones into account.
        /// </summary>
        /// <example>
        /// For example, if using "age" for comparison, startDate = "2000-02-29 00:00:00.000", and endDate = "2010-2-28 23:30:00:00.000",
        /// and the startDate timezone is CST the return value is 9.
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// double result = TemporalHelpers.DateDiff(
        ///		TemporalHelpers.DateDiffComparisonType.days,
        ///		startDate,
        ///		endDate);
        /// </code>
        /// </example>
        /// <param name="howtocompare">String specifying compare type</param>
        /// <param name="startDate">First date for comparison. If earlier than endDate, a positive result is returned.</param>
        /// <param name="startDateOffset">UTC offset value for startDate datetime.</param>
        /// <param name="endDate">Last date for comparison. If later than startDate, a positive result is returned.</param>
        /// <param name="endDateOffset">UTC offset value for endDate datetime.</param>
        /// <returns></returns>
        public static double DateDiff(DateDiffComparisonType howtocompare, System.DateTime startDate, int startDateOffset, System.DateTime endDate, int endDateOffset)
        {
            double diff = 0;

            startDate = (new DateTimeOffset(startDate, new TimeSpan(startDateOffset, 0, 0))).UtcDateTime;
            endDate = (new DateTimeOffset(endDate, new TimeSpan(endDateOffset, 0, 0))).UtcDateTime;

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

            return diff;
        }

        /// <summary>
        /// Format a date/time variable for output.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = TemporalHelpers.DateFormat(
        ///		theDate,
        ///		TemporalHelpers.DateFormats.friendly);
        /// </code>
        /// </example>
        /// <param name="date">DateTime variable to format.</param>
        /// <param name="format">Date format.</param>
        /// <returns>String with the date formatted as requested.</returns>
        public static string DateFormat(System.DateTime date, DateFormats format)
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

                    case DateFormats.Rss:
                        //thedate = date.ToUniversalTime().ToString("o");
                        thedate = date.ToString("yyyy-MM-dd") + "T" + date.ToString("HH:mm:ss") + "Z";
                        break;

                    case DateFormats.AbbreviatedFull:
                        thedate = date.ToString("ddd-MMM-dd-yyyy");
                        break;

                    case DateFormats.Friendly:

                        double days = Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Days, date, System.DateTime.Now)));
                        bool future = false;

                        if (DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now) <= 0)
                        {
                            future = true;
                        }

                        thedate = "today";

                        if (Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now)) < 13 && Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now)) >= 0)
                        {
                            if (Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now)) < 60 && Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now)) > 0)
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now))).ToString() + " minute";

                                if (Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }

                            else
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now))).ToString() + " hour";

                                if (Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now))) != 1)
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

                        days = Math.Abs(DateDiff(DateDiffComparisonType.Days, date, System.DateTime.Now));

                        future = false;

                        if (DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now) <= 0)
                        {
                            future = true;
                        }

                        thedate = "today";

                        if (Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now)) < 24 && Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now)) >= 0)
                        {
                            if (Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now)) < 60 && Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now)) > 0)
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now))).ToString() + " minute";

                                if (Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Minutes, date, System.DateTime.Now))) != 1)
                                {
                                    thedate += "s";
                                }

                                thedate += (future ? " from now" : " ago");
                            }

                            else
                            {
                                thedate = Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now))).ToString() + " hour";

                                if (Convert.ToInt32(Math.Abs(DateDiff(DateDiffComparisonType.Hours, date, System.DateTime.Now))) != 1)
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
                                    double months = Math.Abs(DateDiff(DateDiffComparisonType.Months, date, System.DateTime.Now));

                                    if (months < 12)
                                    {
                                        thedate = FormatAbstract(months, "month", 0.3, 0.6, 0.8, future);
                                    }

                                    else
                                    {
                                        double years = Math.Abs(DateDiff(DateDiffComparisonType.Years, date, System.DateTime.Now));

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

        /// <summary>
        /// Format a date/time variable for output.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = TemporalHelpers.DateFormat(
        ///		theDate,
        ///		TemporalHelpers.DateFormats.friendly);
        /// </code>
        /// </example>
        /// <param name="date">DateTime variable to format.</param>
        /// <param name="format">Date format.</param>
        /// <returns>String with the date formatted as requested.</returns>
        public static string DateFormat(string date, DateFormats format)
        {
            if (!String.IsNullOrEmpty(date))
            {
                if (IsDate(date))
                {
                    return DateFormat(Convert.ToDateTime(date), format);
                }

                else
                {
                    return String.Empty;
                }
            }

            else
            {
                return String.Empty;
            }
        }

        /// <summary>
        /// Determines if a string value is a valid date.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// if (TemporalHelpers.IsDate(value))...
        /// </code>
        /// </example>
        /// <param name="input">The string to process.</param>
        /// <returns>true or false.</returns>
        public static bool IsDate(string input)
        {
            Boolean retVal = false;

            if (!String.IsNullOrEmpty(input))
            {
                try
                {
                    DateTime dt = Convert.ToDateTime(input);
                    retVal = true;
                }

                catch
                {
                    retVal = false;
                }
            }

            return retVal;
        }

        /// <summary>
        /// Used to render abstract dates.
        /// </summary>
        /// <param name="value">Number of items to evaluate (e.g. days, like 1.4).</param>
        /// <param name="increment">Singular form of the text value to display for increments (e.g. "day").</param>
        /// <param name="lowend">Fractional value for determing low end (e.g. 0.4 makes a value of 3.4 "days" render as "3 days ago").</param>
        /// <param name="halfway">Fractional value for determing the maximum halfway point (e.g. 0.6 makes a value of 3.6 "days" render as "over 3 days ago").</param>
        /// <param name="almost">Fractional value for determing when a value should round up (e.g. 0.9 makes a value of 3.9 "days" render as "almost 4 days ago").</param>
        /// <param name="future">True if the date is in the future.</param>
        /// <returns>String representing the abstracted value.</returns>
        private static string FormatAbstract(double value, string increment, double lowend, double halfway, double almost, bool future)
        {
            String abstraction = "";

            if (value < (1 + lowend))
            {
                abstraction = "a " + increment + (future ? " from now" : " ago");
            }

            else if (value >= (1 + lowend) && value < (1 + halfway))
            {
                abstraction = "over a " + increment + (future ? " from now" : " ago");
            }

            else
            {
                double valuewhole = value - (value % 1);
                double mod = (value % 1);

                if (mod < lowend)
                {
                    abstraction = valuewhole.ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                }

                else if (mod >= lowend && mod < halfway)
                {
                    abstraction = (future ? "more than " : "over ") + valuewhole.ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                }

                else if (mod >= halfway && mod < almost)
                {
                    abstraction = (future ? "about " : "almost ") + (valuewhole + 1).ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                }

                else if (mod >= almost)
                {
                    abstraction = (valuewhole + 1).ToString() + " " + increment + "s" + (future ? " from now" : " ago");
                }
            }

            return abstraction;
        }

        /// <summary>
        /// Format a time of day for output.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = TemporalHelpers.TimeFormat(
        ///		theTime,
        ///		TemporalHelpers.TimeFormats.standard);
        /// </code>
        /// </example>
        /// <param name="date">Time variable to format.</param>
        /// <param name="format">Time format.</param>
        /// <returns>String with the time of day formatted as requested.</returns>
        public static string TimeFormat(System.DateTime date, TimeFormats format)
        {
            string thedate = string.Empty;

            try
            {
                switch (format)
                {
                    case TimeFormats.Standard:
                        thedate = date.ToString("h:mmtt");
                        break;
                    case TimeFormats.SqlMilitary:
                        thedate = date.ToString("HH:mm:ss");
                        break;
                    case TimeFormats.Military:
                        thedate = date.ToString("HH:mm");
                        break;
                    default:
                        thedate = date.ToString("h:mmtt");
                        break;
                }
            }
            catch
            { }

            return (thedate);
        }

        /// <summary>
        /// Format a time of day for output.
        /// </summary>
        /// <example>
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// string result = TemporalHelpers.TimeFormat(
        ///		theTime,
        ///		TemporalHelpers.TimeFormats.standard);
        /// </code>
        /// </example>
        /// <param name="date">Time variable to format.</param>
        /// <param name="format">Time format.</param>
        /// <returns>String with the time of day formatted as requested.</returns>
        public static string TimeFormat(string date, TimeFormats format)
        {
            return TimeFormat(Convert.ToDateTime(date), format);
        }

        /// <summary>
        /// Returns a string array with start and end dates for a given range.
        /// </summary>
        /// <example>
        /// If you pass the current date, and wish to know the first
        /// and last days of the week based on the current day:
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// DateRangeStruct result = TemporalHelpers.DateRange(
        ///		TemporalHelpers.DateRangeOptions.Week,
        ///		DateTime.Now
        ///		);
        ///		
        /// Response.Write ("The first day of the week is " + result.startDate.ToString() + 
        /// ", and the last day of the week is " + result.endDate.ToString());
        /// </code>
        /// </example>
        /// <param name="dateRangeOptions">Enumeration value specifying which abstracted date range to evaluate. Note, weeks begin on Sunday and end on Saturday.</param>
        /// <param name="relativeDate">Date to use as the basis for calculating the start and end date of the range.</param>
        /// <returns>DateTimeStruct with the start and end date of the range.</returns>
        public static DateRangeStruct DateRange(DateRangeOptions dateRangeOptions, DateTime relativeDate)
        {
            DateTime[] retValue = { DateTime.Today, DateTime.Today };
            DateTime myDate = relativeDate;

            switch (dateRangeOptions)
            {
                case DateRangeOptions.Week:

                    if (myDate.DayOfWeek > 0) myDate = myDate.AddDays(-1 * Convert.ToInt32(myDate.DayOfWeek));

                    retValue[0] = myDate;
                    retValue[1] = myDate.AddDays(6);

                    break;

                case DateRangeOptions.Month:

                    if (myDate.Day > 1) myDate = myDate.AddDays(-1 * (myDate.Day - 1));

                    retValue[0] = myDate;
                    retValue[1] = myDate.AddMonths(1);
                    retValue[1] = retValue[1].AddDays(-1);

                    break;

                case DateRangeOptions.Quarter:

                    if (myDate.Month < 4) retValue[0] = Convert.ToDateTime("1/1/" + myDate.Year.ToString());
                    if (myDate.Month > 3 && myDate.Month < 7) retValue[0] = Convert.ToDateTime("4/1/" + myDate.Year.ToString());
                    if (myDate.Month > 6 && myDate.Month < 10) retValue[0] = Convert.ToDateTime("7/1/" + myDate.Year.ToString());
                    if (myDate.Month > 9) retValue[0] = Convert.ToDateTime("10/1/" + myDate.Year.ToString());

                    retValue[1] = retValue[0].AddMonths(3);
                    retValue[1] = retValue[1].AddDays(-1);

                    break;

                case DateRangeOptions.Year:

                    retValue[0] = Convert.ToDateTime("1/1/" + myDate.Year.ToString());
                    retValue[1] = Convert.ToDateTime("12/31/" + myDate.Year.ToString());

                    break;
            }

            DateRangeStruct retVal;
            retVal.startDate = retValue[0];
            retVal.endDate = retValue[1];

            return retVal;
        }

        /// <summary>
        /// Returns a string array with start and end dates for a given range.
        /// </summary>
        /// <example>
        /// If you pass the current date, and wish to know the first
        /// and last days of the week based on the current day:
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        /// DateRangeStruct result = TemporalHelpers.DateRange(
        ///		TemporalHelpers.DateRangeOptions.Week,
        ///		DateTime.Now
        ///		);
        ///		
        /// Response.Write ("The first day of the week is " + result.startDate.ToString() + 
        /// ", and the last day of the week is " + result.endDate.ToString());
        /// </code>
        /// </example>
        /// <param name="dateRangeOptions">Enumeration value specifying which abstracted date range to evaluate. Note, weeks begin on Sunday and end on Saturday.</param>
        /// <param name="relativeDate">Date to use as the basis for calculating the start and end date of the range.</param>
        /// <returns>DateTimeStruct with the start and end date of the range.</returns>
        public static DateRangeStruct DateRange(DateRangeOptions dateRangeOptions, string relativeDate)
        {
            return DateRange(dateRangeOptions, Convert.ToDateTime(relativeDate));
        }

        /// <summary>
        /// Get the month name by its number.
        /// </summary>
        /// <param name="monthNumber">Month number for which a name is requested (1 to 12).</param>
        /// <param name="returnAbbreviation">Set to "true" to return month names abbreviation (e.g. Dec).</param>
        /// <returns>Month name or abbreviation, or an empty string on error.</returns>
        public static string GetMonthName(int monthNumber, bool returnAbbreviation)
        {
            string monthName = "";

            if (monthNumber > 0 && monthNumber < 13)
            {
                if (returnAbbreviation)
                {
                    monthName = TemporalHelpers.DateFormat(monthNumber + "/1/2009", DateFormats.MonthShort);
                }

                else
                {
                    monthName = TemporalHelpers.DateFormat(monthNumber + "/1/2009", DateFormats.Month);
                }
            }

            return monthName;
        }

        /// <summary>
        /// Get the month name by its number.
        /// </summary>
        /// <param name="monthNumber">Month number for which a name is requested (1 to 12).</param>
        /// <param name="returnAbbreviation">Set to "true" to return month names abbreviation (e.g. Dec).</param>
        /// <returns>Month name or abbreviation, or an empty string on error.</returns>
        public static string GetMonthName(string monthNumber, bool returnAbbreviation)
        {
            return GetMonthName(Convert.ToInt32(monthNumber), returnAbbreviation);
        }

        /// <summary>
        /// Get the start and end day of a week range for a given date withina month.
        /// </summary>
        /// <example>
        /// In the example below, the variable "result" would be "June 8 through 14".
        /// <code>
        /// using Argentini.Carbide;
        /// ...
        ///	DateTime date = Convert.ToDateTime("6/10/2009");
        /// Int32[] range = TemporalHelpers.GetWeekRange(date);
        /// String result = TemporalHelpers.GetMonthName(date.Month) + " " + range[0] + " through " + range[1];
        /// </code>
        /// </example>
        /// <param name="date">Date for which you'd like the week day range.</param>
        /// <returns>An integer array with the start and end day of the week in which the given date occurs.</returns>
        public static int[] GetWeekRange(DateTime date)
        {
            int[] retVal = { 0, 0 };
            DateTime startDate = Convert.ToDateTime(date.Month + "/1/" + date.Year);
            DateTime endDate = Convert.ToDateTime(date.AddMonths(1).Month + "/1/" + date.AddMonths(1).Year).AddDays(-1);
            DateTime nextDate = startDate.AddDays(6);

            while (startDate < endDate)
            {
                if (date >= startDate && date <= nextDate)
                {
                    retVal[0] = startDate.Day;
                    retVal[1] = nextDate.Day;
                    startDate = endDate;
                }

                startDate = startDate.AddDays(7);
                nextDate = startDate.AddDays(6);

                if (nextDate > endDate)
                {
                    nextDate = endDate;
                }
            }

            return retVal;
        }

        /// <summary>
        /// Return the current date as a string.
        /// </summary>
        /// <param name="format">TemporalHelpers.DateFormats value for formatting the date.</param>
        /// <returns>Today's date as a string.</returns>
        public static string Today(DateFormats format)
        {
            return DateFormat(DateTime.Today, format);
        }

        /// <summary>
        /// Return the current date as a string using slashes as delimitters (e.g. 12/31/2009).
        /// </summary>
        /// <returns>Today's date as a string.</returns>
        public static string Today()
        {
            return Today(DateFormats.Slashes);
        }

        /// <summary>
        /// Convert a DateTime value to a given time zone, automatically handling DST if using .NET CLR 3.5 or later.
        /// </summary>
        /// <param name="dateTime">DateTime value to convert.</param>
        /// <param name="timeZoneText">Text value of the desired time zone. Examples include "Eastern Standard Time", "Central Standard Time", "Mountain Standard Time", "Pacific Standard Time".</param>
        /// <returns>dateTime converted to the desired time zone.</returns>
        public static DateTime ConvertDateToTimeZone(DateTime dateTime, string timeZoneText)
        {
            var destinationTimeZone = TimeZoneInfo.FindSystemTimeZoneById(timeZoneText);

            if (dateTime.Kind == DateTimeKind.Utc)
            {
                return TimeZoneInfo.ConvertTimeFromUtc(dateTime, destinationTimeZone);
            }

            else
            {
                return TimeZoneInfo.ConvertTime(dateTime, destinationTimeZone);
            }
        }

        #endregion
    }

    /// <summary>
    /// Accurate, Simple, and Easy to use Stopwatch Class. This class
    /// can be used to track process execution time in seconds and milliseconds.
    /// </summary>
    /// <example>
    /// Sample usage:
    /// <code>
    /// <![CDATA[
    /// using Argentini.Carbide;
    /// ...
    /// StopWatch sw = new StopWatch();
    /// sw.Start();
    /// 
    /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
    /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
    /// sw.Stop()
    /// 
    /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
    /// ]]>
    /// </code>
    /// </example>
    public class StopWatch
    {
        #region Variables

        private int _StartTime;
        private int _StopTime;

        #endregion

        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// String version number of the class.
        /// </value>
        public string Version
        {
            get
            {
                return "2018.04.12A";
            }
        }

        private int StartTime
        {
            get
            {
                return this._StartTime;
            }

            set
            {
                this._StartTime = value;
            }
        }

        private int StopTime
        {
            get
            {
                return this._StopTime;
            }

            set
            {
                this._StopTime = value;
            }
        }

        #endregion

        #region Constructors

        /// <summary>
        /// Initializes the StopWatch to 0.
        /// </summary>
        /// <example>
        /// Sample usage:
        /// <code>
        /// <![CDATA[
        /// using Argentini.Carbide;
        /// ...
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// 
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// 
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]>
        /// </code>
        /// </example>
        public StopWatch()
        {
            StartTime = 0;
            StopTime = 0;
        }

        #endregion

        #region Methods

        /// <summary>
        /// Starts the Stopwatch.
        /// </summary>
        /// <example>
        /// Sample usage:
        /// <code>
        /// <![CDATA[
        /// using Argentini.Carbide;
        /// ...
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// 
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// 
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]>
        /// </code>
        /// </example>
        public void Start()
        {
            StartTime =
                DateTime.Now.Hour * 60 * 60 * 1000 +
                DateTime.Now.Minute * 60 * 1000 +
                DateTime.Now.Second * 1000 +
                DateTime.Now.Millisecond;
        }

        /// <summary>
        /// Stops the Stopwatch.
        /// </summary>
        /// <example>
        /// Sample usage:
        /// <code>
        /// <![CDATA[
        /// using Argentini.Carbide;
        /// ...
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// 
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// 
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]>
        /// </code>
        /// </example>
        public void Stop()
        {
            StopTime =
                DateTime.Now.Hour * 60 * 60 * 1000 +
                DateTime.Now.Minute * 60 * 1000 +
                DateTime.Now.Second * 1000 +
                DateTime.Now.Millisecond;
        }

        /// <summary>
        /// Reset the Stopwatch to 0.
        /// </summary>
        /// <example>
        /// Sample usage:
        /// <code>
        /// <![CDATA[
        /// using Argentini.Carbide;
        /// ...
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// 
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// sw.Reset();
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// 
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]>
        /// </code>
        /// </example>
        public void Reset()
        {
            StartTime = DateTime.Now.Millisecond;
            StopTime = DateTime.Now.Millisecond;
        }

        /// <summary>
        /// Returns a string containing the elasped time since the Start
        /// of the StopWatch.
        /// <para>(If Called after the Stop Method)
        /// Returns a string containing the elasped time between the Start
        /// of the StopWatch and the Stop of the StopWatch</para>
        /// </summary>
        /// <example>
        /// Sample usage:
        /// <code>
        /// <![CDATA[
        /// using Argentini.Carbide;
        /// ...
        /// StopWatch sw = new StopWatch();
        /// sw.Start();
        /// 
        /// Trace.Write("Stopwatch", "Process1:" sw.GetTime());
        /// Trace.Write("Stopwatch", "Process2:" sw.GetTime());
        /// sw.Stop()
        /// 
        /// Trace.Write("Stopwatch", "Process 1 & 2:" sw.GetTime());
        /// ]]>
        /// </code>
        /// </example>
        public string GetTime()
        {
            int CurrentTime;
            float Elasped;

            CurrentTime =
                DateTime.Now.Hour * 60 * 60 * 1000 +
                DateTime.Now.Minute * 60 * 1000 +
                DateTime.Now.Second * 1000 +
                DateTime.Now.Millisecond;

            if (StopTime == 0)
            {
                Elasped = (CurrentTime - StartTime) / (float)1000;
            }

            else
            {
                Elasped = (StopTime - StartTime) / (float)1000;
            }

            return Elasped.ToString();
        }

        #endregion
    }
}
