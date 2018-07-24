using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide.UnitTests
{
    /// <summary>
    /// Summary description for TemporalUnitTests
    /// </summary>
    [TestClass]
    public class TemporalUnitTests
    {
        DateTime dob = new DateTime(1968, 1, 1);
        DateTime distantPastDate = new DateTime(2010, 1, 1, 12, 0, 0);
        DateTime pastDate = new DateTime(2018, 1, 1, 12, 0, 0);

        [TestMethod]
        public void CalculateAge()
        {
            Assert.AreEqual(50 + DateTime.Now.Year - Convert.ToDateTime("January 1, 2018").Year, dob.CalculateAge());
        }

        [TestMethod]
        public void DateDiff()
        {
            Assert.AreEqual(50 * 12, dob.DateDiff<int>(Convert.ToDateTime("January 1, 2018"), DateDiffComparisonType.Months));
            Assert.AreEqual(8 * 12, distantPastDate.DateDiff<int>(pastDate, DateDiffComparisonType.Months));
            Assert.AreEqual(-8 * 12, pastDate.DateDiff<int>(distantPastDate, DateDiffComparisonType.Months));
        }

        [TestMethod]
        public void DateFormat()
        {
            Assert.AreEqual("01-JAN-1968", dob.DateFormat(DateFormats.European));
            Assert.AreEqual("over " + (50 + DateTime.Now.Year - Convert.ToDateTime("January 1, 2018").Year) + " years ago", dob.DateFormat(DateFormats.Abstract));
        }

        [TestMethod]
        public void TimeFormat()
        {
            Assert.AreEqual("12:00", pastDate.TimeFormat(TimeFormats.Military));
        }

        [TestMethod]
        public void DateRange()
        {
            DateRangeStruct dates = pastDate.DateRange(DateRangeOptions.Week);

            Assert.AreEqual("31-DEC-2017", dates.startDate.DateFormat(DateFormats.European));
            Assert.AreEqual("06-JAN-2018", dates.endDate.DateFormat(DateFormats.European));
        }

        [TestMethod]
        public void GetMonthName()
        {
            string monthnumber = "1";
            Assert.AreEqual("January", pastDate.Month.GetMonthName());
            Assert.AreEqual("January", pastDate.GetMonthName());
            Assert.AreEqual("January", monthnumber.GetMonthName());
        }

        [TestMethod]
        public void ConvertToTimezone()
        {
            DateTimeOffset estDate = new DateTimeOffset(pastDate, new TimeSpan(-8, 0, 0));

            // Checks against local time if it's EST; adjust for your own local time
            // Assert.AreEqual("01-JAN-2018 15:00", estDate.ToLocalTime().DateTime.DateFormat(DateFormats.European) 
            //    + " " 
            //    + estDate.ToLocalTime().DateTime.TimeFormat(TimeFormats.Military));

            Assert.AreEqual("01-JAN-2018 12:00", estDate.DateTime.DateFormat(DateFormats.European) 
                + " " 
                + estDate.DateTime.TimeFormat(TimeFormats.Military));
            
            Assert.AreEqual("01-JAN-2018 12:00", estDate.ToLocalTime().DateTime.ConvertDateToTimeZone("Pacific Standard Time").DateFormat(DateFormats.European) 
                + " "
                + estDate.ToLocalTime().DateTime.ConvertDateToTimeZone("Pacific Standard Time").TimeFormat(TimeFormats.Military));
        }

        [TestMethod]
        public void StopWatch()
        {
            StopWatch stopwatch = new StopWatch();

            stopwatch.Start();
            Temporal.PauseExecution(2000);
            stopwatch.Stop();

            Assert.AreEqual(2, stopwatch.GetSeconds<int>(), "GetSeconds()");

            stopwatch.StopDate = stopwatch.StartDate.AddSeconds(1);
            Assert.AreEqual("00:00:01", stopwatch.GetTimeSpan().ToString(@"hh\:mm\:ss"), "GetTimeSpan() 1 second");

            stopwatch.StopDate = stopwatch.StartDate.AddDays(1);
            Assert.AreEqual("1.00:00:00", stopwatch.GetTimeSpan().ToString(@"d\.hh\:mm\:ss"), "GetTimeSpan() 1 day");

            stopwatch.StopDate = stopwatch.StartDate.AddDays(3).AddHours(5).AddMinutes(7).AddSeconds(15);
            Assert.AreEqual("3.05:07:15", stopwatch.GetTimeSpan().ToString(@"d\.hh\:mm\:ss"), "GetTimeSpan() complex");

            stopwatch.StopDate = stopwatch.StartDate.AddDays(3).AddHours(5).AddMinutes(7).AddSeconds(15).AddMilliseconds(999);
            Assert.AreEqual("3.05:07:15.999", stopwatch.GetTimeSpan().ToString(@"d\.hh\:mm\:ss\.fff"), "GetTimeSpan() complex 2");
        }
    }
}
