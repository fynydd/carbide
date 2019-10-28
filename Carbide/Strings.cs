using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for strings.
    /// ]]></summary>
    public static class Strings
    {
        /// <summary><![CDATA[
        /// Returns a bool value from an interpreted string.
        /// Should check .IsBoolean() first.
        /// ]]></summary>
        /// <param name="value">String to convert</param>
        /// <returns>true or false</returns>
        public static bool GetBoolean(this string value)
        {
            var boolVal = false;

            value = value.ToLower();

            if (value == "1" || value == "-1" || value == "true" || value == "yes")
            {
                boolVal = true;
            }

            return boolVal;
        }

        /// <summary>
        /// Get the relative path from and absolute URL.
        /// </summary>
        /// <param name="context"></param>
        /// <param name="useLowerCase">Convert URL to lower case</param>
        /// <param name="stripQueryString">Remove query string from result</param>
        /// <returns>Relative URL that always ends with "/" when the query string is stripped.</returns>
        public static string GetRelativeUrl(this HttpContext context, bool useLowerCase = true, bool stripQueryString = true)
        {
            var result = "";

            if (context != null)
            {
                result = context.Request.Url.AbsoluteUri.GetRelativeUrl(useLowerCase, stripQueryString);
            }

            return result;
        }

        /// <summary>
        /// Get the relative path from and absolute URL.
        /// </summary>
        /// <param name="url">Absolute URL to parse</param>
        /// <param name="useLowerCase">Convert URL to lower case</param>
        /// <param name="stripQueryString">Remove query string from result</param>
        /// <returns>Relative URL that always ends with "/" when the query string is stripped.</returns>
        public static string GetRelativeUrl(this string url, bool useLowerCase = true, bool stripQueryString = true)
        {
            var result = "";

            if (url.HasValue())
            {
                result = url.GetUrlPath();

                if (useLowerCase)
                {
                    result = result.ToLower();
                }

                if (stripQueryString)
                {
                    result = result.RemoveQueryString();
                }

                result = result.TrimEnd(new char[] { '/' });
            }

            return result;
        }

        /// <summary>
        /// Get the YouTube video ID from a YouTube URL.
        /// </summary>
        /// <param name="url">YouTube URL</param>
        /// <returns>Video ID or returns the provided URL</returns>
        public static string GetYouTubeVideoId(this string url)
        {
            var result = url;

            if (url.HasValue())
            {
                var uri = new Uri(url);
                var query = HttpUtility.ParseQueryString(uri.Query);

                if (query["v"].HasValue())
                {
                    result = query["v"];
                }

                else
                {
                    var YoutubeLinkRegex = "(?:.+?)?(?:\\/v\\/|watch\\/|\\?v=|\\&v=|youtu\\.be\\/|\\/v=|^youtu\\.be\\/)([a-zA-Z0-9_-]{11})+";
                    var regexExtractId = new Regex(YoutubeLinkRegex, RegexOptions.Compiled);
                    var regRes = regexExtractId.Match(url);

                    if (regRes.Success)
                    {
                        result = regRes.Groups[1].Value;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Get the absolute path for a page URL (omits the transport and domain)
        /// </summary>
        /// <param name="url">URL to process</param>
        /// <returns>URL to page as string</returns>
        public static string GetUrlPath(this string url)
        {
            try
            {
                Uri pageUri = new Uri(url);

                return pageUri.AbsolutePath;
            }

            catch
            {
                return url;
            }
        }

        /// <summary>
        /// Determines if a string has a value (is not null or empty).
        /// Inverse of string.IsNullorEmpty().
        /// </summary>
        /// <param name="value">String to evaluate</param>
        public static bool HasValue(this string value)
        {
            if (value != null)
            {
                value = value.Trim();
            }

            return (string.IsNullOrEmpty(value) == false);
        }

        /// <summary>
        /// Escape Lucene special characters.
        /// </summary>
        /// <param name="value">String to process</param>
        public static string EscapeLuceneCharacters(this string value)
        {
            var result = "";

            if (value.HasValue())
            {
                result = value;

                foreach (var character in Characters.LuceneSpecialCharacters)
                {
                    result = result.Replace(character, @"\" + character);
                }
            }

            return result;
        }

        /// <summary>
        /// Replace a list of words.
        /// </summary>
        /// <param name="value">Text to search and modify</param>
        /// <param name="words">String array of words to find</param>
        /// <param name="newText">Replacement text</param>
        public static string ReplaceWords(this string value, string[] words, string newText)
        {
            var result = value;
            var hash = Secrets.MD5String(DateTime.Now.ToString());

            if (result.HasValue())
            {
                var _words = result.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

                for (var x = 0; x < _words.Length; x++)
                {
                    foreach (var word in words)
                    {
                        if (_words[x].RemovePunctuation().ToLower() == word.RemovePunctuation().ToLower())
                        {
                            _words[x] = Regex.Replace(_words[x], word, m => newText, RegexOptions.IgnoreCase);

                            if (newText == "")
                            {
                                if (_words[x].RemovePunctuation() == "")
                                {
                                    _words[x] = hash + "|" + _words[x];
                                }
                            }
                        }
                    }
                }

                result = String.Join(" ", _words);

                if (newText == "")
                {
                    result = result.Replace(" " + hash + "|", "");

                    while (result.Contains("  "))
                    {
                        result = result.Replace("  ", " ");
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Take first, middle, and last name and makes a sortable string as Last, First Middle
        /// </summary>
        /// <param name="firstName">First name</param>
        /// <param name="middleName">Middle name</param>
        /// <param name="lastName">Last name</param>
        /// <returns>Sortable name</returns>
        public static string SortableName(string firstName, string middleName, string lastName)
        {
            var result = "";

            if (firstName.HasValue() || middleName.HasValue() || lastName.HasValue())
            {
                result = ((lastName.HasValue() ? lastName.Trim() + "," : "") + (firstName.HasValue() ? " " + firstName.Trim() : "") + (middleName.HasValue() ? " " + middleName.Trim() : "")).Trim(new char[] { ' ', ',' });
            }

            return result;
        }

        /// <summary>
        /// Take a full name and makes a sortable string as LAST, FIRST MIDDLE.
        /// Strips prefixes, suffixes, and education titles. Formats that are processed include:
        /// John Doe, John Q. Doe, John Q. E. Doe, Mr. John Q. Doe III, Dr. John Q. Doe 3rd Jr., Ph.D., etc.
        /// </summary>
        /// <param name="fullName">Full name</param>
        /// <returns>Sortable name as Last, First Middle</returns>
        public static string SortableName(string fullName)
        {
            var fn = "";
            var mn = "";
            var ln = "";

            fullName = fullName.Trim();

            var _fullName = fullName;

            do
            {
                _fullName = fullName;

                foreach (var prefix in Words.NamePrefixes)
                {
                    fullName = Regex.Replace(fullName, @"^" + prefix + @"\s", m => "", RegexOptions.IgnoreCase);
                }

                fullName = fullName.TrimStart();

            } while (_fullName != fullName);

            do
            {
                _fullName = fullName;

                fullName = fullName.TrimEnd();

                foreach (var degree in Words.NameDegrees)
                {
                    fullName = Regex.Replace(fullName, @"\s" + degree + @"$", m => "", RegexOptions.IgnoreCase);
                }

                fullName = fullName.TrimEnd(new char[] { ' ', ',', ';' });

                foreach (var suffix in Words.NameSuffixes)
                {
                    fullName = Regex.Replace(fullName, @"\s" + suffix + @"$", m => "", RegexOptions.IgnoreCase);
                }

                fullName = fullName.TrimEnd(new char[] { ' ', ',', ';' });

            } while (_fullName != fullName);

            var segments = fullName.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

            if (segments.Length > 0)
            {
                if (segments.Length == 1)
                {
                    ln = segments[0];
                }

                else if (segments.Length == 2)
                {
                    fn = segments[0];
                    ln = segments[1];
                }

                else if (segments.Length > 2)
                {
                    fn = segments[0];

                    for (var x = 1; x < segments.Length - 1; x++)
                    {
                        mn += segments[x] + " ";
                    }

                    mn = mn.Trim();

                    ln = segments[segments.Length - 1];
                }
            }

            return SortableName(fn, mn, ln);
        }

        /// <summary>
        /// Insert newlines to create hard line breaks without breaking words.
        /// Lines begining with "• " or "- " or numbered sequences like "1. "
        /// will indent wrapped text and keep the list margin.
        /// </summary>
        /// <param name="s">String to convert</param>
        /// <param name="width">Number of characters per line or less</param>
        /// <param name="newline">Newline ending to use</param>
        /// <param name="prefix">Text for the beginning (like indentation spaces) evaluated as part of the final length</param>
        /// <returns>String with hard breaks added</returns>
        public static string HardWrap(this string s, int width, string newline, string prefix = "")
        {
            var result = "";
            var listIndent = "";
            var final = new List<string>();

            if (width > 0)
            {
                var lines = StandardizeLineEndings(s, newline).Split(new string[] { newline }, StringSplitOptions.None).ToList();

                foreach (var line in lines)
                {
                    if (line.Length > 3)
                    {
                        listIndent = "";

                        if (Left(line.Trim(), 2) == "• ")
                        {
                            listIndent = Repeat(" ", line.IndexOf("• ") + 2);
                        }

                        else if (Left(line.Trim(), 2) == "- ")
                        {
                            listIndent = Repeat(" ", line.IndexOf("- ") + 2);
                        }

                        else if (Left(line.Trim(), 2) == "* ")
                        {
                            listIndent = Repeat(" ", line.IndexOf("* ") + 2);
                        }

                        else
                        {
                            var ordered = 0;
                            var checkLine = line.ToLower();

                            for (int x = 0; x < checkLine.Length; x++)
                            {
                                if (ordered == 0 && checkLine[x] == ' ')
                                {
                                    // SKIP INDENTATION AT START
                                }

                                else
                                {
                                    if (checkLine[x] != ' ')
                                    {
                                        if ("1234567890abcdefghijklmnopqrstuvwxyz".Contains(checkLine[x]))
                                        {
                                            ordered = x;
                                        }

                                        else
                                        {
                                            if (x < checkLine.Length - 2)
                                            {
                                                if (checkLine[x] == '.' && checkLine[x + 1] == ' ')
                                                {
                                                    ordered = x + 2;

                                                    listIndent = Repeat(" ", ordered);

                                                    x = checkLine.Length;
                                                }

                                                else
                                                {
                                                    x = checkLine.Length;
                                                }
                                            }

                                            else
                                            {
                                                x = checkLine.Length;
                                            }
                                        }
                                    }

                                    else
                                    {
                                        x = checkLine.Length;
                                    }
                                }
                            }
                        }
                    }

                    if (line.Length + prefix.Length + listIndent.Length > width)
                    {
                        var words = line.TrimStart().Split(new string[] { " " }, StringSplitOptions.None);
                        var indent = (line.TrimStart().Length < line.Length ? Repeat(" ", line.Length - line.TrimStart().Length) : "");
                        var tempStr = prefix;

                        foreach (var word in words)
                        {
                            if (tempStr.Length + word.Length + 1 < width)
                            {
                                tempStr += (tempStr != prefix ? " " : indent + "") + (word == "" ? " " : word);
                            }

                            else
                            {
                                final.Add(tempStr);

                                tempStr = prefix + listIndent + word;
                            }
                        }

                        if (tempStr != "")
                        {
                            final.Add(tempStr);
                        }
                    }

                    else
                    {
                        final.Add(prefix + line);
                    }
                }

                foreach (var line in final)
                {
                    result += line + newline;
                }
            }

            return result;
        }

        /// <summary>
        /// Returns the input string with the first character converted to uppercase,
        /// or mutates any nulls passed into string.Empty.
        /// </summary>
        /// <param name="s">String to convert</param>
        /// <returns>String with first letter in upper case</returns>
        public static string ToUpperFirstCharacter(this string s)
        {
            if (string.IsNullOrEmpty(s))
            {
                return string.Empty;
            }

            else
            {
                char[] a = s.ToCharArray();
                a[0] = char.ToUpper(a[0]);

                return new string(a);
            }
        }

        /// <summary>
        /// Insert spaces to ensure a string is a specific width.
        /// Spaces are inserted in place of "{{gap}}". This only
        /// support one instance of the gap text.
        /// </summary>
        /// <param name="text">Text with {{gap}} in the middle for expansion</param>
        /// <param name="width">Column width</param>
        /// <returns>Text with {{gap}} expanded into spaces to make the text equal a given column width</returns>
        public static string FillWidth(this string text, int width)
        {
            var result = text.Replace("{{gap}}", " ");

            if (text.HasValue())
            {
                if (width > 0)
                {
                    var chunks = text.Split(new string[] { "{{gap}}" }, StringSplitOptions.None);
                    var length = 0;

                    if (chunks.Count() > 1)
                    {
                        foreach (var chunk in chunks)
                        {
                            length += chunk.Length;

                            result += chunk;
                        }

                        if (length < width)
                        {
                            result = "";

                            int gap = (width - length) / (chunks.Count() - 1);

                            foreach (var chunk in chunks)
                            {
                                if (chunk == chunks.Last())
                                {
                                    if ((width - length) % (chunks.Count() - 1) > 0)
                                    {
                                        result += " ";
                                    }
                                }

                                result += chunk;

                                if (chunk != chunks.Last())
                                {
                                    result += new string(' ', gap);
                                }
                            }
                        }
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Repeat the first character a given string up to a specified number.
        /// </summary>
        /// <param name="text">String with first character to repeat</param>
        /// <param name="width">Width in characters of the final string</param>
        /// <returns>Text repeated up to the given width</returns>
        public static string Repeat(string text, int width)
        {
            var result = "";

            if (width > 0)
            {
                if (text.HasValue())
                {
                    for (int x = 0; x < width; x++)
                    {
                        result += text.Substring(0, 1);
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Properly pluralize a singular word.
        /// </summary>
        /// <param name="word">Singular word (noun) to evaluate</param>
        /// <param name="value">Numeric value to use for determining plurality</param>
        /// <returns>Plural form of the word</returns>
        public static string PluralizeNoun(string word, int value)
        {
            var result = "";
            var suffix = "";
            var prefix = "";
            var useTitleCase = false;

            if (word.HasValue() && word.Length > 1)
            {
                if (word.Trim().Contains("-") && word.Trim().Contains(" ") == false)
                {
                    // Handle hyphenated terms like editor-in-chief -> editors-in-chief
                    var chunks = word.Split('-');

                    suffix = word.Substring(chunks[0].Length);

                    if (chunks[0].ToLower() != chunks[0])
                    {
                        useTitleCase = true;
                    }

                    result = "   " + chunks[0].ToLower();
                }

                else if (word.Trim().Contains(" "))
                {
                    // Handle multi-word strings
                    var chunks = word.Split(' ');

                    for (int x = 0; x < chunks.Length - 1; x++)
                    {
                        prefix += chunks[x] + " ";
                    }

                    if (chunks[chunks.Length - 1].ToLower() != chunks[chunks.Length - 1])
                    {
                        useTitleCase = true;
                    }

                    result = "   " + chunks[chunks.Length - 1].ToLower();
                }

                else
                {
                    if (word.ToLower() != word)
                    {
                        useTitleCase = true;
                    }

                    result = "   " + word.ToLower();
                }

                if (value != 1)
                {
                    bool done = false;

                    string[] pluralWords = {
                        "advice",
                        "alms",
                        "aircraft",
                        "aluminum",
                        "amends",
                        "antelope",
                        "barracks",
                        "bedouin",
                        "bison",
                        "binoculars",
                        "boar",
                        "bourgeois",
                        "breadfruit",
                        "buffalo",
                        "cahoots",
                        "cannon",
                        "caribou",
                        "cattle",
                        "chalk",
                        "chassis",
                        "chinos",
                        "clippers",
                        "clothes",
                        "clothing",
                        "cod",
                        "concrete",
                        "congeries",
                        "corps",
                        "correspondence",
                        "crossroads",
                        "deer",
                        "dice",
                        "doldrums",
                        "dungarees",
                        "education",
                        "eggfruit",
                        "elk",
                        "eyeglasses",
                        "fish",
                        "flares",
                        "flour",
                        "folk",
                        "food",
                        "forceps",
                        "fowl",
                        "fruit",
                        "furniture",
                        "gallows",
                        "glasses",
                        "goldfish",
                        "grapefruit",
                        "greenfly",
                        "grouse",
                        "haddock",
                        "halibut",
                        "headquarters",
                        "help",
                        "homework",
                        "hovercraft",
                        "ides",
                        "insignia",
                        "intuit",
                        "jackfruit",
                        "jeans",
                        "knickers",
                        "knowledge",
                        "kudos",
                        "leggings",
                        "lego",
                        "loggerheads",
                        "luggage",
                        "maori",
                        "marginalia",
                        "means",
                        "mink",
                        "moose",
                        "monkfish",
                        "mullet",
                        "nailclippers",
                        "navajo",
                        "news",
                        "offspring",
                        "oxygen",
                        "pants",
                        "pyjamas",
                        "passionfruit",
                        "pike",
                        "pliers",
                        "police",
                        "premises",
                        "quail",
                        "reindeer",
                        "rendezvous",
                        "roma",
                        "salmon",
                        "scissors",
                        "series",
                        "shambles",
                        "sheep",
                        "shellfish",
                        "shorts",
                        "shrimp",
                        "sioux",
                        "smithereens",
                        "spacecraft",
                        "species",
                        "squid",
                        "starfruit",
                        "sugar",
                        "swine",
                        "tongs",
                        "trousers",
                        "trout",
                        "tuna",
                        "tweezers",
                        "you",
                        "wheat",
                        "whitebait",
                        "wood"
                    };

                    string[] pluralEndings = {
                        "craft"
                    };

                    string[] oddballSingular = {
                        "child",
                        "goose",
                        "man",
                        "woman",
                        "tooth",
                        "foot",
                        "mouse",
                        "person",
                        "louse",
                        "ox",
                        "workman",
                        "schoolchild"
                    };

                    string[] oddballPlural = {
                        "children",
                        "geese",
                        "men",
                        "women",
                        "teeth",
                        "feet",
                        "mice",
                        "people",
                        "lice",
                        "oxen",
                        "workmen",
                        "schoolchildren"
                    };


                    // Has a plural ending, like -craft

                    for (int x = 0; x < pluralEndings.Length; x++)
                    {
                        if (result.Length > pluralEndings[x].Length && result.EndsWith(pluralEndings[x]))
                        {
                            done = true;
                            break;
                        }
                    }

                    if (done == false)
                    {
                        // Has a oddball plural form

                        if (oddballSingular.Contains(result.Trim()))
                        {
                            for (int x = 0; x < oddballSingular.Length; x++)
                            {
                                if (result.Trim() == oddballSingular[x])
                                {
                                    result = oddballPlural[x];
                                }
                            }
                        }

                        else
                        {
                            // Singular and plural spelled the same

                            if (pluralWords.Contains(result.Trim()))
                            {
                                for (int x = 0; x < pluralWords.Length; x++)
                                {
                                    if (result.Trim() == pluralWords[x])
                                    {
                                        result = pluralWords[x];
                                    }
                                }
                            }

                            else
                            {
                                if (
                                    result.EndsWith("ss")
                                    || result.EndsWith("ch")
                                    || result.EndsWith("sh")
                                    || result.EndsWith("x")
                                    || result.EndsWith("z")
                                )
                                {
                                    result += "es";
                                }

                                else
                                {
                                    if (result.EndsWith("o"))
                                    {
                                        if ("aeiouy".Contains(result.Substring(result.Length - 2, 1)) == true)
                                        {
                                            result += "s";
                                        }

                                        else
                                        {
                                            // stereo, alto, piano, dynamo, halo, photo, etc.
                                            var musical_term = false;

                                            if (musical_term)
                                            {
                                                result += "s";
                                            }

                                            else
                                            {
                                                result += "es";
                                            }
                                        }
                                    }

                                    else
                                    {
                                        if (result.EndsWith("y"))
                                        {
                                            if ("aeiou".Contains(result.Substring(result.Length - 2, 1)) == true)
                                            {
                                                result += "s";
                                            }

                                            else
                                            {
                                                result = result.Substring(0, result.Length - 1) + "ies";
                                            }
                                        }

                                        else
                                        {
                                            if (result.EndsWith("f"))
                                            {
                                                if ("aeiouy".Contains(result.Substring(result.Length - 2, 1)) == true)
                                                {
                                                    result += "s";
                                                }

                                                else
                                                {
                                                    result = result.Substring(0, result.Length - 1) + "ves";
                                                }
                                            }

                                            else
                                            {
                                                if (result.EndsWith("fe"))
                                                {
                                                    result = result.Substring(0, result.Length - 2) + "ves";
                                                }

                                                else
                                                {
                                                    if (result.EndsWith("sis"))
                                                    {
                                                        if ("aeiouy".Contains(result.Substring(result.Length - 4, 1)) == true)
                                                        {
                                                            result = result.Substring(0, result.Length - 2) + "es";
                                                        }

                                                        else
                                                        {
                                                            result += "es";
                                                        }
                                                    }

                                                    else
                                                    {
                                                        if (result.EndsWith("is"))
                                                        {
                                                            result += "es";
                                                        }

                                                        else
                                                        {
                                                            if (result.EndsWith("enon") || result.EndsWith("rion"))
                                                            {
                                                                result = result.Substring(0, result.Length - 2) + "a";
                                                            }

                                                            else
                                                            {
                                                                if (result.EndsWith("us"))
                                                                {
                                                                    if ("aeiouy".Contains(result.Substring(result.Length - 3, 1)) == true)
                                                                    {
                                                                        result += "es";
                                                                    }

                                                                    else
                                                                    {
                                                                        result = result.Substring(0, result.Length - 2) + "i";
                                                                    }
                                                                }

                                                                else
                                                                {
                                                                    result += "s";
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            result = result.Trim();

            if (useTitleCase)
            {
                result = ApTitleCase(result);
            }

            return prefix + result + suffix;
        }

        /// <summary>
        /// Ensure a string has consistent line endings.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <param name="lineEndings">Line endings to enforce</param>
        /// <returns>Value processed to use the provided line endings</returns>
        public static string StandardizeLineEndings(this string value, string lineEndings = "\r\n")
        {
            var result = value;

            if (value.HasValue())
            {
                result = result.Replace("\r", "\b");
                result = result.Replace("\b\n", "\b");
                result = result.Replace("\n", "\b");
                result = result.Replace("\b", lineEndings);
            }

            return result;
        }

        /// <summary> 
        /// Return a line from a string at a specific line number.
        /// </summary> 
        /// <param name="source">String to search</param>
        /// <param name="row">Zero-based row number to return</param>
        /// <param name="minimumWidth">Ensure whitespace up to this many characters</param>
        /// <returns>Line from the string including, not including line endings</returns> 
        public static string GetLine(this string source, int row, int minimumWidth = 0)
        {
            var rows = StandardizeLineEndings(source, Environment.NewLine).Split(new string[] { Environment.NewLine }, StringSplitOptions.None);

            if (rows.Length > row && minimumWidth > 0)
            {
                if (rows[row].Length < minimumWidth)
                {
                    rows[row] += Repeat(" ", minimumWidth - rows[row].Length);
                }
            }

            return (rows.Length > row ? rows[row] : "");
        }

        /// <summary> 
        /// Return a line from a string an ending substring.
        /// </summary> 
        /// <param name="source">String to search</param>
        /// <param name="endsWith">End of the line to find</param>
        /// <param name="lineFeedFormat">Line feed character(s) used in the string</param>
        /// <param name="includeLineBreaks">Return any EOL breaks with the found row</param>
        /// <returns>Line from the string including the end provided</returns> 
        public static string GetStringRow(this string source, string endsWith, string lineFeedFormat = "\r\n", bool includeLineBreaks = true)
        {
            var result = "";

            if (source.HasValue() && endsWith.HasValue())
            {
                if (includeLineBreaks)
                {
                    endsWith += lineFeedFormat;
                }

                if (source.Length > endsWith.Length)
                {
                    var endIndex = source.IndexOf(endsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);

                    if (includeLineBreaks)
                    {
                        if (endIndex < 0)
                        {
                            endsWith = endsWith.Replace(lineFeedFormat, "");
                            endIndex = source.IndexOf(endsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);
                        }
                    }

                    if (endIndex > 0)
                    {
                        var startIndex = 0;

                        for (int x = endIndex; x >= 0; x--)
                        {
                            if (source.Substring(x, 2) == lineFeedFormat)
                            {
                                startIndex = x + 2;
                                x = -1;
                            }
                        }

                        result = source.Substring(startIndex, (endIndex - startIndex) + endsWith.Length);
                    }
                }
            }

            return result;
        }

        /// <summary> 
        /// Return a string range given a beginning and ending substring.
        /// </summary> 
        /// <param name="source">String to search</param>
        /// <param name="startsWith">Beginning of the substring to find</param>
        /// <param name="endsWith">End of the substring to find</param>
        /// <returns>Substring including the start and end provided</returns> 
        public static string GetStringRange(this string source, string startsWith, string endsWith)
        {
            var result = "";

            if (source.HasValue() && startsWith.HasValue() && endsWith.HasValue())
            {
                if (source.Length > startsWith.Length && source.Length > endsWith.Length)
                {
                    var startIndex = source.IndexOf(startsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);
                    var endIndex = source.IndexOf(endsWith, startIndex + startsWith.Length, source.Length - (startIndex + startsWith.Length), StringComparison.CurrentCultureIgnoreCase);

                    if (endIndex >= startIndex + startsWith.Length)
                    {
                        result = source.Substring(startIndex, (endIndex - startIndex) + endsWith.Length);
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Get the left "length" characters of a string.
        /// </summary>
        /// <param name="value">String value</param>
        /// <param name="length">Number of characters</param>
        /// <returns>Left portion of a string</returns>
        public static string Left(this string value, int length)
        {
            string result = value;

            if (value.HasValue())
            {
                if (value.Length >= length)
                {
                    result = value.Substring(0, length);
                }
            }

            return result;
        }

        /// <summary>
        /// Get the left characters of a string up to but not including the first instance of "marker".
        /// </summary>
        /// <param name="value">String value</param>
        /// <param name="marker">Delimitter to denote the cut off point</param>
        /// <returns>Left portion of a string</returns>
        public static string Left(this string value, string marker)
        {
            string result = value;

            if (value.HasValue() && marker.HasValue())
            {
                if (value.Length >= marker.Length)
                {
                    if (value.IndexOf(marker) >= 0)
                    {
                        result = value.Substring(0, value.IndexOf(marker));
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Get the right "length" characters of a string.
        /// </summary>
        /// <param name="value">String value</param>
        /// <param name="length">Number of characters</param>
        /// <returns>Right portion of a string</returns>
        public static string Right(this string value, int length)
        {
            string result = value;

            if (value.HasValue())
            {
                if (value.Length >= length)
                {
                    result = value.Substring(value.Length - length, length);
                }
            }

            return result;
        }

        /// <summary>
        /// Get the right characters of a string up to but not including the last instance of "marker" (right to left).
        /// </summary>
        /// <param name="value">String value</param>
        /// <param name="marker">Delimitter to denote the cut off point</param>
        /// <returns>Right portion of a string</returns>
        public static string Right(this string value, string marker)
        {
            string result = value;

            if (value.HasValue() && marker.HasValue())
            {
                if (value.Length >= marker.Length)
                {
                    if (value.IndexOf(marker) >= 0)
                    {
                        result = value.Substring(value.LastIndexOf(marker) + marker.Length);
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Replace string occurrences within another string, ignoring case, using whole word or character based matching.
        /// </summary>
        /// <param name="value">String to search</param>
        /// <param name="substring">String to find</param>
        /// <param name="newstring">String replacement</param>
        /// <param name="wholeWords">If true, only match whole words</param>
        /// <returns>New string with replacements made</returns>
        public static string ReplaceWord(this string value, string substring, string newstring, bool wholeWords = true)
        {
            string pattern = (wholeWords ? @"\b" + substring + @"\b" : substring);
            Regex regEx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Multiline);
            return regEx.Replace(value, newstring);
        }

        /// <summary>
        /// Replace the first instance of a string.
        /// </summary>
        /// <param name="value">String to search</param>
        /// <param name="substring">String to find</param>
        /// <param name="newstring">String replacement</param>
        /// <param name="wholeWords">If true, only match whole words</param>
        /// <returns>String with first occurrence replaced</returns>
        public static string ReplaceFirst(this string value, string substring, string newstring, bool wholeWords = true)
        {
            string pattern = (wholeWords ? @"\b" + substring + @"\b" : substring);
            Regex regEx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Multiline);
            return regEx.Replace(value, newstring, 1);
        }

        /// <summary>
        /// Replace the last instance of a string.
        /// </summary>
        /// <param name="value">String to search</param>
        /// <param name="substring">String to find</param>
        /// <param name="newstring">String replacement</param>
        /// <param name="wholeWords">If true, only match whole words</param>
        /// <returns>String with last occurrence replaced</returns>
        public static string ReplaceLast(this string value, string substring, string newstring, bool wholeWords = true)
        {
            string pattern = (wholeWords ? @"\b" + substring + @"\b" : substring);
            Regex regEx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Multiline | RegexOptions.RightToLeft);
            return regEx.Replace(value, newstring, 1);
        }

        /// <summary>
        /// Replace words in a string with mask characters, like asterisks. Useful for filtering profanity.
        /// </summary>
        /// <param name="value">String to search</param>
        /// <param name="stringMask">Mask character to use (e.g. "*")</param>
        /// <param name="filterWords">String array of words to mask</param>
        /// <returns>String with masked words</returns>
        public static string FilterWords(this string value, string stringMask, params string[] filterWords)
        {
            string result = value;
            string totalMask = stringMask;

            foreach (string s in filterWords)
            {
                Regex regEx = new Regex(s, RegexOptions.IgnoreCase | RegexOptions.Multiline);

                if (stringMask.Length > 0)
                {
                    for (int i = 1; i < s.Length; i++)
                    {
                        totalMask += stringMask;
                    }
                }

                result = regEx.Replace(result, totalMask);

                totalMask = stringMask;
            }

            return result;
        }

        /// <summary>
        /// Convert a string to AP style title case, which makes all words use an upper case first character,
        /// except a core set of small words, unless one of those small words is the first or last one in the string.
        /// </summary>
        /// <param name="value">String to make AP title case</param>
        /// <returns>String in AP title case</returns>
        public static string ApTitleCase(this string value)
        {
            string result = value;

            if (result.HasValue())
            {
                char[] space = new char[] { ' ' };

                CultureInfo cultureInfo = Thread.CurrentThread.CurrentCulture;
                TextInfo textInfo = cultureInfo.TextInfo;

                List<string> tokens = value.Split(space, StringSplitOptions.None).ToList();

                if (tokens.Count > 2)
                {
                    var newTitle = "";
                    var suffix = "";

                    while (tokens.Count > 2 && string.IsNullOrEmpty(tokens[0]))
                    {
                        if (tokens[0] == " ")
                        {
                            newTitle += " ";
                        }

                        else
                        {
                            newTitle += tokens[0];
                        }

                        tokens.RemoveAt(0);
                    }

                    if (tokens.Count > 2)
                    {
                        var firstWord = (ContainsCharacters(tokens[0], "ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? tokens[0] : textInfo.ToTitleCase(tokens[0].ToLower()));
                        tokens.RemoveAt(0);

                        while (tokens.Count > 2 && string.IsNullOrEmpty(tokens[tokens.Count - 1]))
                        {
                            if (tokens[tokens.Count - 1] == " ")
                            {
                                suffix = " " + suffix;
                            }

                            else
                            {
                                suffix = tokens[tokens.Count - 1] + suffix;
                            }

                            tokens.RemoveAt(tokens.Count - 1);
                        }

                        if (tokens.Count > 2)
                        {
                            var lastWord = (ContainsCharacters(tokens[tokens.Count - 1], "ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? tokens[tokens.Count - 1] : textInfo.ToTitleCase(tokens[tokens.Count - 1].ToLower())); ;
                            tokens.RemoveAt(tokens.Count - 1);

                            newTitle = firstWord;

                            newTitle += tokens.Aggregate<String, String>(String.Empty, (String prev, String input)
                                => prev +
                                    (Words.TitleCaseIgnoreWords.Contains(input.ToLower())
                                        ? " " + (ContainsCharacters(input, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? input : input.ToLower())
                                        : (input == "" ? " " : " " + (ContainsCharacters(input, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? input : textInfo.ToTitleCase(input.ToLower())))
                                    )
                                );

                            newTitle += " " + lastWord;

                            result = newTitle;
                        }

                        else
                        {
                            result = textInfo.ToTitleCase(value.ToLower());
                        }
                    }

                    else
                    {
                        result = textInfo.ToTitleCase(value.ToLower());
                    }
                }

                else
                {
                    result = textInfo.ToTitleCase(value.ToLower());
                }
            }

            return result;
        }

        /// <summary>
        /// Determine if a string contains any one of a string of individual characters.
        /// Useful for determining if a string has any upper case characters, as one example.
        /// </summary>
        /// <param name="source">String to check</param>
        /// <param name="characters">String of characters for which to check</param>
        public static bool ContainsCharacters(this string source, string characters)
        {
            var result = false;

            if (source.HasValue() && characters.HasValue())
            {
                for (int x = 0; x < characters.Length; x++)
                {
                    if (source.IndexOf(characters.Substring(x, 1)) >= 0)
                    {
                        result = true;
                        x = characters.Length;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Makes two or more consecutive spaces in a string one single space.
        /// </summary>
        /// <param name="value">String to process</param>
        /// <returns>String with only single spaces</returns>
        public static string RemoveExtraSpaces(this string value)
        {
            Regex regEx = new Regex(@"[\s]+");
            return regEx.Replace(value, " ");
        }

        /// <summary>
        /// Return the current string cropped by number of words or characters.
        /// When cropping by characters, the returned string will always be equal to or less than the given count
        /// and then "endingWhenCropped" is appended.
        /// <para>
        /// Words: returns the first "count" of words in the string, including any intermediate punctuation, etc.
        /// Trailing punctuation is always removed.
        /// </para>
        /// <para>
        /// Characters: returns the first "count" of characters in the string, including any intermediate punctuation, etc.
        /// When it locates the last character, it scans ahead to make sure it's not breaking a word. If it is in the middle
        /// of a word, it will skip ahead to the next non-alpha-numeric chatacter and break on that, so your cropped string
        /// may be slightly larger than the number of characters you requested. Trailing punctuation is always removed.
        /// </para>
        /// </summary>
        /// <example>
        /// <code>
        /// result = result.Crop(3, StringCropType.Words, " .,;:!?", "...");
        /// </code>
        /// result would be "now is the...".
        /// </example>
        /// <param name="value">String to process.</param>
        /// <param name="count">Number of words or characters (as close as possible) to return.</param>
        /// <param name="cropType">Enum value: CropType.Characters or CropType.Words.</param>
        /// <param name="delimitters">Valid characters on which to break (defaults to space characters).</param>
        /// <param name="endingWhenCropped">String to append to the return value, only if the string had to be cropped.</param>
        /// <returns>A cropped string</returns>
        public static string Crop(this string value, int count, StringCropType cropType, string delimitters, string endingWhenCropped)
        {
            string outt = value;

            if (value.HasValue())
            {
                if (count > 0)
                {
                    switch (cropType)
                    {
                        case StringCropType.Words:

                            Regex x = new Regex(@"((\w*?)(\W|\z)){0," + count + @"}", RegexOptions.Singleline);
                            MatchCollection mc = x.Matches(value);
                            outt = mc[0].ToString().Trim();

                            break;

                        case StringCropType.Characters:

                            string breakOn = delimitters;

                            if (string.IsNullOrEmpty(breakOn))
                            {
                                breakOn = " ";
                            }

                            while (outt.Length > count && ContainsCharacters(outt, breakOn))
                            {
                                for (int X = 0; X < breakOn.Length; X++)
                                {
                                    if (outt.Length > count)
                                    {
                                        outt = outt.Substring(0, outt.LastIndexOf(breakOn.Substring(X, 1)));
                                    }
                                }
                            }

                            if (outt.Length > count)
                            {
                                outt = outt.Substring(0, count);
                            }

                            break;
                    }

                    outt += endingWhenCropped;
                }
            }

            return outt;
        }

        /// <summary>
        /// Number of times a substring appears in a string.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <param name="find">Substring to count</param>
        /// <param name="wholeWord">Only look for words surrounded by whitespace or grammatical marks</param>
        /// <returns>Number of times the substring is found</returns>
        public static int SubstringCount(this string value, string find, bool wholeWord = false)
        {
            var processed = value;

            if (wholeWord)
            {
                var words = processed.Split(Constants.Characters.WordDelimitters, StringSplitOptions.None);

                return words.Count(w => w == find);
            }

            else
            {
                return processed.Split(new string[] { find }, StringSplitOptions.None).Length - 1;
            }
        }

        /// <summary>
        /// Format a number into a string representation based on a number format.
        /// Useful for friendly output of telephone numebrs, disk file sizes, etc.
        /// </summary>
        /// <typeparam name="T">Numeric type being evaluated</typeparam>
        /// <param name="val">Numeric variable to evaluate</param>
        /// <param name="format">Output format for the number</param>
        /// <returns>String with the formatted number</returns>
        public static string FormatNumber<T>(T val, NumberFormats format)
        {
            string result = "";

            if (typeof(T) == typeof(string))
            {
                if (format == NumberFormats.TelephoneFull || format == NumberFormats.TelephoneDots || format == NumberFormats.TelephoneHyphens)
                {
                    if (val.ToString().HasValue())
                    {
                        var pattern = "";

                        if (val.ToString().Length > 0)
                        {
                            for (int x = 0; x < val.ToString().Length; x++)
                            {
                                char strChar = Convert.ToChar(val.ToString().Substring(x, 1));

                                if ((int)strChar > 47 && (int)strChar < 58) result += val.ToString().Substring(x, 1);
                            }
                        }

                        if (result.Length == 11 && result.StartsWith("1"))
                        {
                            result = result.TrimStart('1');
                        }

                        if (result.Length == 10)
                        {
                            switch (format)
                            {
                                case NumberFormats.TelephoneFull:
                                    pattern = "({0}) {1}-{2}";
                                    break;

                                case NumberFormats.TelephoneDots:
                                    pattern = "{0}.{1}.{2}";
                                    break;

                                case NumberFormats.TelephoneHyphens:
                                    pattern = "{0}-{1}-{2}";
                                    break;
                            }

                            result = string.Format(pattern, result.Substring(0, 3), result.Substring(3, 3), result.Substring(6));
                        }
                    }
                }
            }

            else
            {
                decimal value = Convert.ToDecimal(val);
                result = value.ToString();

                switch (format)
                {
                    case NumberFormats.TelephoneFull:

                        break;

                    case NumberFormats.TelephoneDots:

                        break;

                    case NumberFormats.TelephoneHyphens:

                        break;

                    case NumberFormats.Proper:

                        result = (value.ToString("#,##0"));
                        break;

                    case NumberFormats.Currency:

                        result = (value.ToString("#,##0.00"));
                        break;
                }
            }

            return result;
        }

        /// <summary>
        /// Convert bytes into a user-friendly size (e.g. 1024 becomes 1kb).
        /// </summary>
        /// <param name="val">Number of bytes</param>
        /// <param name="forStorage">When true sizes are calculated using base 10 (so 1kb = 1,000 bytes), false uses base 2 (so 1kb = 1,024 bytes).false Defaults to true</param>
        /// <returns>User-friendly size representation</returns>
        public static string FormatBytes<T>(T val, bool forStorage = true)
        {
            decimal value = Convert.ToDecimal(val);
            string result = "0 bytes";
            decimal divisor = 1000;
            decimal kb = divisor;
            decimal mb = (divisor * divisor);
            decimal gb = (mb * divisor);
            decimal tb = (gb * divisor);
            decimal pb = (tb * divisor);

            if (forStorage == false)
            {
                divisor = 1024;
            }

            if (value > 0)
            {
                // BYTES
                if (value < divisor)
                {
                    result = (value.ToString("#,##0")) + " bytes";
                }

                // KILOBYTE
                if (value >= divisor && value < mb)
                {
                    decimal newVal = (value / divisor);
                    result = (newVal.ToString("#,##0.#")) + "kb";
                }

                // MEGABYTES
                if (value >= mb && value < gb)
                {
                    decimal newVal = (value / divisor) / divisor;
                    result = (newVal.ToString("#,##0.#")) + "mb";
                }

                // GIGABYTES
                if (value >= gb && value < tb)
                {
                    decimal newVal = ((value / divisor) / divisor) / divisor;
                    result = (newVal.ToString("#,##0.#")) + "gb";
                }

                // TERABYTES
                if (value >= tb && value < pb)
                {
                    decimal newVal = (((value / divisor) / divisor) / divisor) / divisor;
                    result = (newVal.ToString("#,##0.#")) + "tb";
                }

                // PETABYTES
                if (value >= pb)
                {
                    decimal newVal = ((((value / divisor) / divisor) / divisor) / divisor) / divisor;
                    result = (newVal.ToString("#,##0.#")) + "pb";
                }
            }

            return result;
        }

        /// <summary>
        /// Calculate a percentage in string form for friendly output.
        /// Does the math for you.
        /// </summary>
        /// <example>
        /// <code>
        /// int value = 30;
        /// string result = value.MakePercentage(total: 200, places: 2) + "%";
        /// </code>
        /// result: 15.00%
        /// </example>
        /// <typeparam name="T">Numeric type being evaluated</typeparam>
        /// <param name="val">Number to evaluate against the total</param>
        /// <param name="total">Total value from which to derive a percentage for val</param>
        /// <param name="places">Number of decimal places to use in the result output</param>
        /// <returns>Percentage value output without the trailing "%"</returns>
        public static string MakePercentage<T>(T val, decimal total, int places)
        {
            decimal value = Convert.ToDecimal(val);
            decimal percent = 0;
            string result = string.Empty;
            string strplaces = new string('0', places);

            if (value == 0 || total == 0)
            {
                percent = 0;
            }

            else
            {
                percent = decimal.Divide(value, total) * 100;

                if (places > 0)
                {
                    strplaces = "." + strplaces;
                }
            }

            result = percent.ToString("#,##0" + strplaces);

            return result;
        }

        /// <summary>
        /// Convert a string representation of a file size into a numeric number of bytes.
        /// (e.g. convert "1kb" to 1024).
        /// </summary>
        /// <typeparam name="T">Numeric type being returned</typeparam>
        /// <param name="fileSize">String representation of a file size</param>
        /// <returns>Number of bytes</returns>
        public static T FileSizeToBytes<T>(this string fileSize)
        {
            decimal result = 0;
            decimal multiplier = 1;
            string value = fileSize.ToLower().Replace(",", "").Trim();

            if (value.EndsWith("kb")) { value = value.Replace("kb", "").Trim(); multiplier = 1024; }
            else if (value.EndsWith("mb")) { value = value.Replace("mb", "").Trim(); multiplier = 1048576; }
            else if (value.EndsWith("gb")) { value = value.Replace("gb", "").Trim(); multiplier = 1073741824; }
            else if (value.EndsWith("tb")) { value = value.Replace("tb", "").Trim(); multiplier = 1099511627776; }
            else if (value.EndsWith("pb")) { value = value.Replace("pb", "").Trim(); multiplier = 1125899906842624; }

            if (!(Convert.ToDecimal(value) > 9 && multiplier == 1125899906842624))
            {
                result = Convert.ToDecimal(value) * multiplier;
            }

            return (T)Convert.ChangeType(result, typeof(T));
        }

        /// <summary>
        /// Convert a string into a URL-friendly slug, filtering out everything but alphanumeric characters
        /// and using hyphens for whitespace.
        /// </summary>
        /// <param name="input">String to evaluate</param>
        /// <returns>URL-friendly slug</returns>
        public static string MakeSlug(this string input)
        {
            string result = input.Trim().ToLower();

            result = result.Replace("'", "");

            Regex stripStuff = new Regex("([^a-zA-Z0-9])");
            result = stripStuff.Replace(result, "-");

            stripStuff = new Regex("_{1,}");
            result = stripStuff.Replace(result, "-");

            stripStuff = new Regex("_$");
            result = stripStuff.Replace(result, "");

            stripStuff = new Regex("^_");
            result = stripStuff.Replace(result, "");

            while (result.IndexOf("--") > 0)
            {
                result = result.Replace("--", "-");
            }

            result = result.Trim('-');

            return (result);
        }

        /// <summary>
        /// Trim leading and trailing whitespace, which includes space, non-breaking space, carriage returns, linefeeds, 
        /// tabs, en space, em space, and other ASCII and Unicode whitespace characters.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <returns>String with leading and trailing whitespace removed</returns>
        public static string TrimWhitespace(this string value)
        {
            return SafeToString(value).Trim(Characters.Whitespace);
        }

        /// <summary>
        /// Trim leading and trailing whitespace, which includes empty &lt;p&gt; tag blocks, &lt;br&gt; tags, space, non-breaking space, carriage returns, linefeeds, 
        /// tabs, en space, em space, and other ASCII and Unicode whitespace characters.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <returns>String with leading and trailing whitespace removed</returns>
        public static string TrimRteWhitespace(this string value)
        {
            var result = value;
            var f1 = new Regex(@"^<p[^>]*>[\s]*(&nbsp;)*[\s]*</p>|<p[^>]*>[\s]*(&nbsp;)*[\s]*</p>$", RegexOptions.Compiled);
            var f2 = new Regex(@"^<br[\s/]*>|<br[\s/]*>$", RegexOptions.Compiled);

            result = result.Trim();
            result = TrimWhitespace(result);
            var _temp = result;

            result = f1.Replace(result, "");
            result = f2.Replace(result, "");
            result = TrimWhitespace(result);

            while (result != _temp)
            {
                _temp = result;
                result = f1.Replace(result, "");
                result = f2.Replace(result, "");
                result = result.Trim();
                result = TrimWhitespace(result);
            }

            return result;
        }

        /// <summary>
        /// Trim leading and trailing whitespace, which includes empty &lt;p&gt; tag blocks, &lt;br&gt; tags, space, non-breaking space, carriage returns, linefeeds, 
        /// tabs, en space, em space, and other ASCII and Unicode whitespace characters.
        /// </summary>
        /// <param name="value">Object to evaluate</param>
        /// <returns>String with leading and trailing whitespace removed</returns>
        public static string TrimRteWhitespace(object value)
        {
            return TrimRteWhitespace(value.SafeToString());
        }

        /// <summary>
        /// Wrap words in HTML tags.
        /// </summary>
        /// <param name="value">Text to search and modify</param>
        /// <param name="words">String array of words to find</param>
        /// <param name="tag">HTML tag to use as a wrapper</param>
        public static string WrapWords(this string value, string[] words, string tag)
        {
            var result = value;

            if (value.HasValue())
            {
                var _words = value.Split(new char[] { ' ' });

                for (var x = 0; x < _words.Length; x++)
                {
                    foreach (var word in words)
                    {
                        if (_words[x].Contains(tag) == false)
                        {
                            _words[x] = Regex.Replace(_words[x], word, m => String.Format(tag + "{0}" + tag.Replace("<", "</"), m.Value), RegexOptions.IgnoreCase);
                        }
                    }
                }

                result = String.Join(" ", _words);
            }

            return result;
        }

        /// <summary>
        /// Wrap words in HTML tags.
        /// </summary>
        /// <param name="value">Text to search and modify</param>
        /// <param name="words">List of words to find</param>
        /// <param name="tag">HTML tag to use as a wrapper</param>
        public static string WrapWords(this string value, List<string> words, string tag)
        {
            return WrapWords(value, words.ToArray<string>(), tag);
        }

        /// <summary>
        /// Remove punctuation from a string. Uses regex to keep whitespace and words.
        /// </summary>
        /// <param name="value"></param>
        /// <param name="except">Regex list of characters to keep (e.g. "'")</param>
        /// <returns></returns>
        public static string RemovePunctuation(this string value, string except = "")
        {
            var result = "";

            if (value.HasValue())
            {
                result = Regex.Replace(value, @"[^\w\s" + except + "]", "");
            }

            return result;
        }

        /// <summary>
        /// Convert fractions like "1/3" to single-character symbolic HTML encoded fractions.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <returns>String with HTML encoded fractions</returns>
        public static string ConvertFractions(this string value)
        {
            string result = value;

            result = Regex.Replace(result, @"([\s|\b|\-|>])1/2([\s|\b|\-|<])", "$1&#x000BD;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])1/3([\s|\b|\-|<])", "$1&#x02153;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])1/4([\s|\b|\-|<])", "$1&#x000BC;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])1/5([\s|\b|\-|<])", "$1&#x02155;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])1/6([\s|\b|\-|<])", "$1&#x02159;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])1/8([\s|\b|\-|<])", "$1&#x0215B;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])2/3([\s|\b|\-|<])", "$1&#x02154;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])2/5([\s|\b|\-|<])", "$1&#x02156;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])3/4([\s|\b|\-|<])", "$1&#x000BE;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])3/5([\s|\b|\-|<])", "$1&#x02157;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])3/8([\s|\b|\-|<])", "$1&#x0215C;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])4/5([\s|\b|\-|<])", "$1&#x02158;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])5/6([\s|\b|\-|<])", "$1&#x0215A;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])5/8([\s|\b|\-|<])", "$1&#x0215D;$2");
            result = Regex.Replace(result, @"([\s|\b|\-|>])7/8([\s|\b|\-|<])", "$1&#x0215E;$2");

            return result;
        }

        /// <summary>
        /// Return the current string with HTML tags removed.
        /// </summary>
        /// <example>
        /// <code>
        /// string newBodyText = oldString.StripHtml();
        /// </code>
        /// </example>
        /// <param name="value">Current string to process</param>
        /// <param name="convertBreaks">
        /// <![CDATA[
        /// Converts "<br>" and "<br />" to \r\n and converts "</p>" to \r\n\r\n.
        /// ]]>
        /// </param>
        /// <param name="keepLinks">Keep and anchor tags intact</param>
        /// <param name="decodeEntities">Convert HTML entities to standard ASCII, like &amp;copy; to ©</param>
        /// <returns>A string with HTML tags removed</returns>
        public static string StripHtml(this string value, bool convertBreaks = false, bool keepLinks = false, bool decodeEntities = false)
        {
            if (string.IsNullOrEmpty(value))
            {
                return value;
            }

            else
            {
                Regex tags = new Regex(@"<(script|style).*?>.*?</(script|style).*?>", RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace | RegexOptions.Singleline);
                value = tags.Replace(value, "");

                if (convertBreaks == true)
                {
                    tags = new Regex(@"<br[\s]*[/]*>");
                    value = tags.Replace(value, "\r\n");
                    value = value.Replace("</p>", "\r\n\r\n");
                }

                if (keepLinks == true)
                {
                    value = Regex.Replace(value, "(<)(?=/??a)", "[[[[[", RegexOptions.IgnoreCase);
                }

                tags = new Regex(@"<[^>]+>|</[^>]+>");
                value = tags.Replace(value, "");

                if (keepLinks == true)
                {
                    value = value.Replace("[[[[[", "<");
                }

                if (decodeEntities)
                {
                    value = WebUtility.HtmlDecode(value);
                }

                return value;
            }
        }

        /// <summary>
        /// <![CDATA[
        /// Return the current string with HTML line breaks removed.
        /// Removes "<p>", "</p>", "<br />", and "<br>" and then trims the output.
        /// ]]>
        /// </summary>
        /// <example>
        /// <code>
        /// string newBodyText = oldString.StripHtmlBreaks();
        /// </code>
        /// </example>
        /// <returns>A string with HTML breaks removed</returns>
        public static string StripHtmlBreaks(this string value)
        {
            if (value != null)
            {
                var result = value;

                var tags = new Regex(@"<br.*?>", RegexOptions.Singleline | RegexOptions.IgnoreCase | RegexOptions.Compiled);
                result = tags.Replace(result, "");

                tags = new Regex(@"</?p((\s+\w+(\s*=\s*(?:"".*?""|'.*?'|[^'"">\s]+))?)+\s*|\s*)/?>", RegexOptions.Singleline | RegexOptions.IgnoreCase | RegexOptions.Compiled);
                result = tags.Replace(result, "");

                return result;
            }

            else
            {
                return string.Empty;
            }
        }

        /// <summary>
        /// Convert an object to a string. If null an empty string is returned.
        /// </summary>
        /// <param name="obj">Object to convert to a string</param>
        /// <returns>String value or an empty string if null</returns>
        public static string SafeToString(this object obj)
        {
            string result = "";

            if (obj != null)
            {
                result = Convert.ToString(obj);
            }

            return result;
        }

        /// <summary>
        /// <![CDATA[
        /// Sanitize a string so that it only contains inert text data.
        /// it removes markup, scripts, decodes escape sequences, and optionally 
        /// removes email header properties.
        /// Converts HTML </p> to \r\n\r\n and <br> to \r\n sequences.
        /// ]]>
        /// </summary>
        /// <param name="value">String to sanitize</param>
        /// <param name="alsoSanitizeForEmail">Also sanitize for email inclusion; defaults to false</param>
        /// <returns>A sanitized string</returns>
        public static string Sanitize(this string value, bool alsoSanitizeForEmail = false)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                result = SanitizeEscapes(value);
                result = StripHtml(result, true, false);

                if (alsoSanitizeForEmail)
                {
                    result = SanitizeForEmail(result);
                }
            }

            return result;
        }

        /// <summary>
        /// <![CDATA[
        /// Sanitize a string so that it only contains inert text data.
        /// it removes markup, scripts, decodes escape sequences, and optionally 
        /// removes email header properties.
        /// Converts HTML </p> to \r\n\r\n and <br> to \r\n sequences.
        /// Also replaces single apostrophes with two apostrophes.
        /// ]]>
        /// </summary>
        /// <param name="value">String to sanitize</param>
        /// <param name="alsoSanitizeForEmail">Also sanitize for email inclusion; defaults to false</param>
        /// <returns>A sanitized string</returns>
        public static string SqlSanitize(this string value, bool alsoSanitizeForEmail = false)
        {
            return Sanitize(value, alsoSanitizeForEmail).Replace("'", "''");
        }

        /// <summary>
        /// Return the current string with potentially dangerous tags removed.
        /// Dangerous tags that are removed include:
        /// <para>applet, body, embed, frame, script, frameset, html, iframe, img, style, layer, link, ilayer, meta, object.</para>
        /// <para>javascript properties injected into other tags are also removed.</para>
        /// </summary>
        /// <param name="value">String to process</param>
        /// <returns>A string that has been stripped of scripts</returns>
        public static string StripDangerousTags(this string value)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                result = value;

                foreach (var tag in Tags.Dangerous)
                {
                    result = StripSpecificTag(result, tag);
                }

                result = StripDangerousProperties(result);
            }

            return result;
        }

        /// <summary>
        /// Return the current string with all escape sequences (e.g. &amp;#34;) changed to appropriate and ASCII characters (e.g. "),
        /// so dangerous markup can more easily be identified.
        /// </summary>
        /// <param name="value">String to process</param>
        /// <returns>A string that has been filtered for escape sequences</returns>
        public static string SanitizeEscapes(this string value)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                result = HttpUtility.HtmlDecode(value);
            }

            return result;
        }

        /// <summary>
        /// Return the current string with all instances of a specific tag removed.
        /// </summary>
        /// <param name="value">String to process</param>
        /// <param name="tagName">Tag name to strip (e.g. blockquote)</param>
        /// <returns>A string that has been filtered</returns>
        public static string StripSpecificTag(this string value, string tagName)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                result = SanitizeEscapes(value);

                Regex tags = new Regex(@"<[\s]*" + tagName + @".*?>", RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace | RegexOptions.Singleline);
                result = tags.Replace(result, "");

                tags = new Regex(@"<[\s]*/[\s]*?" + tagName + @".*?>", RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace | RegexOptions.Singleline);
                result = tags.Replace(result, "");
            }

            return result;
        }

        /// <summary>
        /// Remove all occurrences of dangerous tag properties from a string.
        /// Helps to prevent injected javascript from running.
        /// </summary>
        /// <param name="value">String to process</param>
        /// <returns>A string that has been filtered</returns>
        public static string StripDangerousProperties(this string value)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                Regex tags = new Regex(@"[\s]*text[\s]*/[\s]*javascript[\s]*", RegexOptions.IgnoreCase | RegexOptions.IgnorePatternWhitespace | RegexOptions.Singleline);
                result = tags.Replace(value, "");
            }

            return result;
        }

        /// <summary>
        /// Remove all occurrences of dangerous email header properties from a string.
        /// This is used to prevent someone from inserting code into submitted form data
        /// that will trick the page into sending email to other people.
        /// <para>E-mail header text that will be removed includes:</para>
        /// <para>"x-mailer:", "x-rcpt-to:", "x-uidl:", "content-transfer-encoding:", "content-type:", "mime-version:", "x-sender:", "bcc:", "cc:", "x-receiver:"</para>
        /// </summary>
        /// <param name="value">String to process</param>
        /// <returns>A string that has been filtered</returns>
        public static string SanitizeForEmail(this string value)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                result = HttpUtility.HtmlDecode(value);

                foreach (var prop in EmailHeader.Properties)
                {
                    result = ReplaceWord(result, prop, "", false);
                }

                result = result.Replace("\r.\r", "\r..\r");
                result = result.Replace("\n.\n", "\n..\n");
                result = result.Replace("\r\n.\r\n", "\r\n..\r\n");
            }

            return result;
        }

        /// <summary>
        /// <![CDATA[
        /// Converts return/lineFeeds to HTML tags, except between [nofeed][/nofeed] blocks.
        /// ]]>
        /// </summary>
        /// <param name="value">String to convert</param>
        /// <param name="feedType">Line break scheme to use</param>
        /// <returns>A string with HTML line breaks added</returns>
        public static string ConvertLineBreaks(this string value, HtmlLinefeeds feedType)
        {
            string result = string.Empty;

            if (value.HasValue())
            {
                int checkRET = 0;
                int checkLF = 0;
                Regex regex = null;
                MatchCollection theMatches = null;

                result = value;

                if (result.IndexOf("/nofeed>") > 0)
                {
                    regex = new Regex(@"<nofeed>(.*?)</nofeed>", RegexOptions.IgnoreCase | RegexOptions.Singleline | RegexOptions.CultureInvariant | RegexOptions.IgnorePatternWhitespace | RegexOptions.Compiled);

                    theMatches = regex.Matches(value);

                    for (int index = 0; index < theMatches.Count; index++)
                    {
                        result = result.Replace(theMatches[index].ToString(), theMatches[index].ToString().Replace("\r", "[[[pk:return]]]"));
                        result = result.Replace(theMatches[index].ToString(), theMatches[index].ToString().Replace("\n", "[[[pk:linefeed]]]"));
                    }
                }

                if (result.IndexOf("/nofeed]") > 0)
                {
                    regex = new Regex(@"\[nofeed\](.*?)\[/nofeed\]", RegexOptions.IgnoreCase | RegexOptions.Singleline | RegexOptions.CultureInvariant | RegexOptions.IgnorePatternWhitespace | RegexOptions.Compiled);

                    theMatches = regex.Matches(value);

                    for (int index = 0; index < theMatches.Count; index++)
                    {
                        result = result.Replace(theMatches[index].ToString(), theMatches[index].ToString().Replace("\r", "[[[pk:return]]]"));
                        result = result.Replace(theMatches[index].ToString(), theMatches[index].ToString().Replace("\n", "[[[pk:linefeed]]]"));
                    }
                }

                if (result.IndexOf("\r") > 0)
                {
                    checkRET = 1;

                    result = result.Replace("\n", "");

                    if (feedType == HtmlLinefeeds.Paragraphs)
                    {
                        result = result.Replace("\r", "</p><p>");
                    }

                    else
                    {
                        result = result.Replace("\r", "<br />");
                    }

                }

                else
                {
                    if (result.IndexOf("\n") > 0)
                    {
                        checkLF = 1;

                        result = result.Replace("\r", "");

                        if (feedType == HtmlLinefeeds.Paragraphs)
                        {
                            result = result.Replace("\n", "</p><p>");
                        }

                        else
                        {
                            result = result.Replace("\n", "<br />");
                        }
                    }
                }

                if (feedType == HtmlLinefeeds.Paragraphs)
                {
                    result = "<p>" + result;

                    if (Right(result, 3) == "<p>")
                    {
                        result = Left(result, result.Length - 3);
                    }

                    else
                    {
                        if (result.IndexOf("</p><p>") > 1)
                        {
                            result += "</p>";
                        }
                    }
                }

                if (checkRET == 1)
                {
                    result = result.Replace("[[[pk:return]]]", "\r");
                }

                if (checkLF == 1)
                {
                    result = result.Replace("[[[pk:linefeed]]]", "\n");
                }
            }

            return result;
        }

        /// <summary>
        /// Converts a list of bytes into a string of hexadecimal values.
        /// </summary>
        /// <param name="input">Byte list to convert</param>
        /// <returns>Hex string</returns>
        public static string ConvertToHexString(this IList<byte> input)
        {
            if (input == null || input.Count <= 0)
            {
                return string.Empty;
            }

            else
            {
                var stringBuilder = new StringBuilder(input.Count * 2);

                for (var i = 0; i < input.Count; ++i)
                {
                    stringBuilder.Append(Bytes.Base16CharTable[input[i]]);
                }

                return stringBuilder.ToString();
            }
        }

        /// <summary>
        /// Convert a string to a byte array.
        /// </summary>
        /// <param name="value">String to evaluate</param>
        /// <returns>Byte array</returns>
        public static byte[] ToByteArray(this string value)
        {
            System.Text.UTF8Encoding encoding = new System.Text.UTF8Encoding();
            return encoding.GetBytes(value);
        }
    }
}
