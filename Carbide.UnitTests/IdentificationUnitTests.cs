using Microsoft.VisualStudio.TestTools.UnitTesting;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide.UnitTests
{
    /// <summary>
    /// Summary description for IdentificationUnitTests
    /// </summary>
    [TestClass]
    public class IdentificationUnitTests
    {
        string number = "12345";
        string numberWithComma = "1,2345";
        string fractional = "12345.00";
        string fractionalWithComma = "12345.00";
        string currency = "$1,2345.00";
        string notnumeric = "0abcdefg";

        string emailAddress = "john.o'doe@example.com";
        string badEmailAddress1 = "@example.c";
        string badEmailAddress2 = "fsdfsd@.c";
        string badEmailAddress3 = "fsdfsd@c";
        string badEmailAddress4 = "john#%)^!.o'doe@example.com";
        string badEmailAddress5 = "john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.john.o'doe@example.example.example.example.example.example.example.example.example.example.example.example.example.example.example.example.example.com";
        string badEmailAddress6 = "f@c.c";

        string telephone10 = "6102223333";
        string telephoneFull = "(610) 222-3333";
        string telephoneUS = "+1 (610) 222-3333";

        string date0 = "12/31/2017";
        string date1 = "12-31-2017";
        string date2 = "31-DEC-2017";
        string date3 = "December 31, 2017";
        string date4 = "February 29, 2020";
        string badDate0 = "February 29, 2018";
        string badDate1 = "02/29/2018";
        string badDate2 = "02-29-2018";
        string badDate3 = "29-FEB-2018";
        string badDate4 = "JAN 01 0000";

        string password0 = "P@ssw0rd!";
        string password1 = "P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!";
        string password2 = "P@5d";
        string badPassword0 = "p@ssw0rd!";
        string badPassword1 = "password";
        string badPassword2 = "P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!P@ssw0rd!";
        string badPassword3 = "p@ssw0rd!`";

        string selectedValue = "orange";
        string badSelectedValue = "coconut";
        string badSelectedValue2 = "APPLE";
        string prevalues = "apple,orange,cherry,banana";

        string AmericanExpress0 = "378282246310005";
        string AmericanExpress1 = "371449635398431";
        string AmericanExpress2 = "378734493671000";
        string DinersClub0 = "30569309025904";
        string DinersClub1 = "38520000023237";
        string Discover0 = "6011111111111117";
        string Discover1 = "6011000990139424";
        string MasterCard0 = "5555555555554444";
        string MasterCard1 = "5105105105105100";
        string Visa0 = "4111111111111111";
        string Visa1 = "4012888888881881";
        string Visa2 = "4222222222222";

        string state0 = "ma";
        string state1 = "NJ";
        string badState = "NX";

        [TestMethod]
        public void IsState()
        {
            Assert.AreEqual(true, state0.IsState());
            Assert.AreEqual(true, state1.IsState());
            Assert.AreEqual(false, badState.IsState());
        }

        [TestMethod]
        public void IsNumeric()
        {
            Assert.AreEqual(true, number.IsNumeric());
            Assert.AreEqual(true, numberWithComma.IsNumeric());
            Assert.AreEqual(true, fractional.IsNumeric());
            Assert.AreEqual(true, fractionalWithComma.IsNumeric());
            Assert.AreEqual(false, currency.IsNumeric());
            Assert.AreEqual(false, notnumeric.IsNumeric());
        }

        [TestMethod]
        public void IsBool()
        {
            string x = "TRUE";
            Assert.AreEqual(true, x.IsBool());

            x = "FALSE";
            Assert.AreEqual(true, x.IsBool());

            x = "true";
            Assert.AreEqual(true, x.IsBool());

            x = "false";
            Assert.AreEqual(true, x.IsBool());

            x = "yes";
            Assert.AreEqual(false, x.IsBool());

            x = "no";
            Assert.AreEqual(false, x.IsBool());
        }

        [TestMethod]
        public void IsCurrency()
        {
            Assert.AreEqual(true, number.IsCurrency());
            Assert.AreEqual(true, numberWithComma.IsCurrency());
            Assert.AreEqual(true, fractional.IsCurrency());
            Assert.AreEqual(true, fractionalWithComma.IsCurrency());
            Assert.AreEqual(true, currency.IsCurrency());
            Assert.AreEqual(false, notnumeric.IsCurrency());
        }

        [TestMethod]
        public void IsPureNumeric()
        {
            Assert.AreEqual(true, number.IsPureNumeric());
            Assert.AreEqual(false, numberWithComma.IsPureNumeric());
            Assert.AreEqual(false, fractional.IsPureNumeric());
            Assert.AreEqual(false, fractionalWithComma.IsPureNumeric());
            Assert.AreEqual(false, currency.IsPureNumeric());
            Assert.AreEqual(false, notnumeric.IsPureNumeric());
        }

        [TestMethod]
        public void MatchesPattern()
        {
            Assert.AreEqual(true, emailAddress.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress1.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress2.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress3.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress4.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress5.MatchesPattern(RegularExpressions.Email));
            Assert.AreEqual(false, badEmailAddress6.MatchesPattern(RegularExpressions.Email));
        }

        [TestMethod]
        public void MatchesPattern2()
        {
            string[] patterns = new string[] { RegularExpressions.Telephone10, RegularExpressions.TelephoneUS };

            Assert.AreEqual(true, telephone10.MatchesPatterns(patterns));
            Assert.AreEqual(true, telephoneFull.MatchesPatterns(patterns));
            Assert.AreEqual(false, telephoneUS.MatchesPatterns(patterns));
        }

        [TestMethod]
        public void IsDate()
        {
            Assert.AreEqual(true, date0.IsDate());
            Assert.AreEqual(true, date1.IsDate());
            Assert.AreEqual(true, date2.IsDate());
            Assert.AreEqual(true, date3.IsDate());
            Assert.AreEqual(true, date4.IsDate());

            Assert.AreEqual(false, badDate0.IsDate());
            Assert.AreEqual(false, badDate1.IsDate());
            Assert.AreEqual(false, badDate2.IsDate());
            Assert.AreEqual(false, badDate3.IsDate());
            Assert.AreEqual(false, badDate4.IsDate());
        }

        [TestMethod]
        public void IsValidPasswordFormat()
        {
            Assert.AreEqual(true, password0.IsValidPasswordFormat(8, 64));
            Assert.AreEqual(true, password1.IsValidPasswordFormat(8, 64));
            Assert.AreEqual(true, password2.IsValidPasswordFormat(4, 64));
            Assert.AreEqual(false, password2.IsValidPasswordFormat(8, 64));

            Assert.AreEqual(false, badPassword0.IsValidPasswordFormat(8, 64));
            Assert.AreEqual(false, badPassword1.IsValidPasswordFormat(8, 64));
            Assert.AreEqual(false, badPassword2.IsValidPasswordFormat(8, 64));
            Assert.AreEqual(false, badPassword3.IsValidPasswordFormat(8, 64));
        }

        [TestMethod]
        public void IsValidPasswordFormat2()
        {
            Assert.AreEqual(true, password0.IsValidPasswordFormat());
            Assert.AreEqual(true, password1.IsValidPasswordFormat());
            Assert.AreEqual(false, password2.IsValidPasswordFormat());
            Assert.AreEqual(false, password2.IsValidPasswordFormat());

            Assert.AreEqual(false, badPassword0.IsValidPasswordFormat());
            Assert.AreEqual(false, badPassword1.IsValidPasswordFormat());
            Assert.AreEqual(false, badPassword2.IsValidPasswordFormat());
            Assert.AreEqual(false, badPassword3.IsValidPasswordFormat());
        }

        [TestMethod]
        public void IsEmail()
        {
            Assert.AreEqual(true, emailAddress.IsEmail());
            Assert.AreEqual(false, badEmailAddress1.IsEmail());
            Assert.AreEqual(false, badEmailAddress2.IsEmail());
            Assert.AreEqual(false, badEmailAddress3.IsEmail());
            Assert.AreEqual(false, badEmailAddress4.IsEmail());
            Assert.AreEqual(false, badEmailAddress5.IsEmail());
            Assert.AreEqual(false, badEmailAddress6.IsEmail());
        }

        [TestMethod]
        public void ContainsPrevalues()
        {
            Assert.AreEqual(true, selectedValue.ContainsPrevalue(prevalues, ",", caseSensitive: false));
            Assert.AreEqual(false, badSelectedValue.ContainsPrevalue(prevalues, ",", caseSensitive: false));
            Assert.AreEqual(true, badSelectedValue2.ContainsPrevalue(prevalues, ",", caseSensitive: false));
            Assert.AreEqual(false, badSelectedValue2.ContainsPrevalue(prevalues, ",", caseSensitive: true));
        }

        [TestMethod]
        public void ValidateText()
        {
            Assert.AreEqual("", AmericanExpress0.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", AmericanExpress1.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", AmericanExpress2.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", DinersClub0.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", DinersClub1.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", Discover0.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", Discover1.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", MasterCard0.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", MasterCard1.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", Visa0.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("", Visa1.ValidateText(ValidationOptions.CreditCard));
            Assert.AreEqual("Not a credit card number", Visa2.ValidateText(ValidationOptions.CreditCard));

            Assert.AreEqual("", state0.ValidateText(ValidationOptions.USStateAbbreviation));
            Assert.AreEqual("", state1.ValidateText(ValidationOptions.USStateAbbreviation));
            Assert.AreEqual("Not a state", badState.ValidateText(ValidationOptions.USStateAbbreviation));

            Assert.AreEqual("", emailAddress.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress1.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress2.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress3.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress4.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress5.ValidateText(ValidationOptions.Email));
            Assert.AreNotEqual("", badEmailAddress6.ValidateText(ValidationOptions.Email));

            Assert.AreEqual("", emailAddress.ValidateText(ValidationOptions.EmailList));
            Assert.AreEqual("", (emailAddress + "," + emailAddress).ValidateText(ValidationOptions.EmailList));
            Assert.AreNotEqual("", (emailAddress + "," + badEmailAddress1).ValidateText(ValidationOptions.EmailList));
        }

    }
}
