using Microsoft.VisualStudio.TestTools.UnitTesting;

using Fynydd.Carbide.Constants;
using System.IO;

namespace Fynydd.Carbide.UnitTests
{
    [TestClass]
    public class BaseTypesUnitTests
    {
        public string sentence = "Now is the time for all good men to spend the $500.27 in their wallet -- seriously.";

        [TestMethod]
        public void FormatNumber()
        {
            double x0 = 9999.87523;
            Assert.AreEqual("9,999.88", x0.FormatNumber(NumberFormats.Currency).ToLower());

            string phone = "12223334444";
            Assert.AreEqual("(222) 333-4444", phone.FormatNumber(NumberFormats.TelephoneFull));
            phone = "2223334444";
            Assert.AreEqual("222-333-4444", phone.FormatNumber(NumberFormats.TelephoneHyphens));
        }

		[TestMethod]
		public void FormatBytes()
		{
			short x1 = 10000;
			Assert.AreEqual("10kb", x1.FormatBytes().ToLower());

			int x2 = 10000;
			Assert.AreEqual("9.8kb", x2.FormatBytes(false).ToLower());

			double x5 = 9999999999;
			Assert.AreEqual("10gb", x5.FormatBytes().ToLower());
			Assert.AreEqual("9.3gb", x5.FormatBytes(false).ToLower());

		}

		[TestMethod]
        public void MakePercentage()
        {
            short x0 = 32;
            Assert.AreEqual("18.29", x0.MakePercentage(175, 2));
            Assert.AreEqual("32.00", x0.MakePercentage(100, 2));
            Assert.AreEqual("32", x0.MakePercentage(100, 0));
            Assert.AreEqual("1,066.67", x0.MakePercentage(3, 2));

            double x1 = 32;
            Assert.AreEqual("18.29", x1.MakePercentage(175, 2));
            Assert.AreEqual("32.00", x1.MakePercentage(100, 2));
            Assert.AreEqual("32", x1.MakePercentage(100, 0));
            Assert.AreEqual("1,066.67", x1.MakePercentage(3, 2));
        }

        [TestMethod]
        public void FileSizeToBytes()
        {
            string x0 = "1003";
            Assert.AreEqual(1003, x0.FileSizeToBytes<short>());

            string x1 = "102kb";
            Assert.AreEqual(104448, x1.FileSizeToBytes<int>());

            string x2 = "3.37gb";
            Assert.AreEqual(3618509947, x2.FileSizeToBytes<long>());
        }

        [TestMethod]
        public void MakeSlug()
        {
            Assert.AreEqual("now-is-the-time-for-all-good-men-to-spend-the-500-27-in-their-wallet-seriously", sentence.MakeSlug());
        }

        [TestMethod]
        public void Right()
        {
            Assert.AreEqual("seriously.", sentence.Right(10));
            Assert.AreEqual(sentence, sentence.Right(10000));
            Assert.AreEqual("good men to spend the $500.27 in their wallet -- seriously.", sentence.Right("all "));
        }

        [TestMethod]
        public void Left()
        {
            Assert.AreEqual("Now is the", sentence.Left(10));
            Assert.AreEqual(sentence, sentence.Left(10000));
            Assert.AreEqual("Now is the time", sentence.Left(" for all"));
        }

        [TestMethod]
        public void Replacements()
        {
            Assert.AreEqual("Now is the time for all bad men to spend the $500.27 in their wallet -- seriously.", sentence.ReplaceWord("GOOD", "bad"));
            Assert.AreEqual("Now is THE time for all good men to spend THE $500.27 in THEir wallet -- seriously.", sentence.ReplaceWord("the", "THE", wholeWords: false));
            Assert.AreEqual("Now is THE time for all good men to spend the $500.27 in their wallet -- seriously.", sentence.ReplaceFirst("the", "THE"));
            Assert.AreEqual("Now is THE time for all good men to spend the $500.27 in their wallet -- seriously.", sentence.ReplaceFirst("the", "THE", wholeWords: false));
            Assert.AreEqual("Now is the time for all good men to spend THE $500.27 in their wallet -- seriously.", sentence.ReplaceLast("the", "THE"));
            Assert.AreEqual("Now is the time for all good men to spend the $500.27 in THEir wallet -- seriously.", sentence.ReplaceLast("the", "THE", wholeWords: false));
        }

        [TestMethod]
        public void Filters()
        {
            string[] words = new string[] { "good" };
            Assert.AreEqual("Now is the time for all **** men to spend the $500.27 in their wallet -- seriously.", sentence.FilterWords("*", words));
        }

        [TestMethod]
        public void ApTitleCase()
        {
            string title = "of mice and men is what it was used for";
            Assert.AreEqual("Of Mice and Men Is What It Was Used For", title.ApTitleCase());

            title = "\"of mice and men\" is a great book";
            Assert.AreEqual("\"Of Mice and Men\" Is a Great Book", title.ApTitleCase());
        }

        [TestMethod]
        public void RemoveWhitespace()
        {
            string x1 = "This    is   something  else";
            Assert.AreEqual("This is something else", x1.RemoveExtraSpaces());
        }

        [TestMethod]
        public void Crop()
        {
            Assert.AreEqual("Now is the time for...", sentence.Crop(5, StringCropType.Words, " .,;:!?", "..."));
        }

        [TestMethod]
        public void SubstringCount()
        {
            Assert.AreEqual(3, sentence.SubstringCount("the"));
			Assert.AreEqual(2, sentence.SubstringCount("the", true));
			Assert.AreEqual(0, sentence.SubstringCount("kitty"));
        }

        [TestMethod]
        public void ToByteArray()
        {
            Assert.AreEqual(sentence.Length, sentence.ToByteArray().Length);
        }

        [TestMethod]
        public void TrimWhitespace()
        {
            string x0 = "\u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u200B\u3000\uFEFF  now is the time  \u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u200B\u3000\uFEFF";
            Assert.AreEqual("now is the time", x0.TrimWhitespace());
        }

		[TestMethod]
		public void StripHtmlBreaks()
		{
			string x0 = "<p id=\"testname\">Successful</p> <br>test<br /><p>!</p><p></p>";
			Assert.AreEqual("Successful test!", x0.StripHtmlBreaks());
		}

		[TestMethod]
        public void ConvertFractions()
        {
            string x0 = "I'm pouring 1/2 a glass from 3/4 of the bottle.";
            Assert.AreEqual("I'm pouring &#x000BD; a glass from &#x000BE; of the bottle.", x0.ConvertFractions());
        }

        [TestMethod]
        public void RandomizeArray()
        {
            int[] values = new int[1000];

            for (int x = 0; x < 1000; x++)
            {
                values[x] = x;
            }

            var randomized = values.RandomizeArray();

            Assert.AreNotEqual(values[0], randomized[0]);
            Assert.AreNotEqual(values, randomized);
        }

        [TestMethod]
        public void Sanitization()
        {
            var path = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

            string naughtyScripts = StorageHelpers.ReadFile(path + @"\NaughtyScripts.txt");
            string niceScripts = StorageHelpers.ReadFile(path + @"\NiceScripts.txt");
            Assert.AreEqual(niceScripts, naughtyScripts.Sanitize());

            string naughtySql = StorageHelpers.ReadFile(path + @"\NaughtySql.txt");
            string niceSql = StorageHelpers.ReadFile(path + @"\NiceSql.txt");
            Assert.AreEqual(niceSql, naughtySql.SqlSanitize());

            string naughtyEmail = StorageHelpers.ReadFile(path + @"\NaughtyEmailBody.txt");
            string niceEmail = StorageHelpers.ReadFile(path + @"\NiceEmailBody.txt");
            Assert.AreEqual(niceEmail, naughtyEmail.SanitizeForEmail());
        }

        [TestMethod]
        public void LineBreaks()
        {
            string linefeeds = @"This is a test.
Paragraph 2.
Paragraph 3.";
            string linefeedsConvertedP = @"<p>This is a test.</p><p>Paragraph 2.</p><p>Paragraph 3.</p>";
            string linefeedsConvertedBR = @"This is a test.<br />Paragraph 2.<br />Paragraph 3.";

            Assert.AreEqual(linefeedsConvertedP, linefeeds.ConvertLineBreaks(HtmlLinefeeds.Paragraphs));
            Assert.AreEqual(linefeedsConvertedBR, linefeeds.ConvertLineBreaks(HtmlLinefeeds.LineBreaks));
        }

        [TestMethod]
        public void TrimRteWhitespace()
        {
            string content = @"  <p style='what'>&nbsp;</p>
<br> <br>
<br /> 
<br / ><p></p><p>&nbsp;</p><p> &nbsp; </p><p>This is test 1</p>
<p>This is test 2</p>
<p>This is test 3</p>
<p> &nbsp; </p>
<p>&nbsp;</p>
<p class='sdfsdfsd'>&nbsp;</p>
<p> </p>
<p></p>
<br>
  
<br />
 <br  / >
<p></p>
";
            string correct = @"<p>This is test 1</p>
<p>This is test 2</p>
<p>This is test 3</p>";

            Assert.AreEqual(correct, content.TrimRteWhitespace(), "MESSAGE: " + content.TrimRteWhitespace());
        }
    }
}
