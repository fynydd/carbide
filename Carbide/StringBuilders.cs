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
    /// Various helper methods for StringBuilder types.
    /// ]]></summary>
    public static class StringBuilders
    {
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
        public static string StripHtml(this StringBuilder value, bool convertBreaks = false, bool keepLinks = false, bool decodeEntities = false)
        {
            if (value != null)
            {
                string value2 = value.ToString();

                return Strings.StripHtml(value2, convertBreaks, keepLinks, decodeEntities);
            }

            else
            {
                return string.Empty;
            }
        }

        /// <summary>
        /// Count substring ocurrences in a StringBuilder object.
        /// </summary>
        /// <param name="source">The StringBuilder to search</param>
        /// <param name="substring">The substring to count</param>
        /// <returns>Number of times the substring is within the source</returns>
        public static int SubstringCount(this StringBuilder source, string substring)
        {
            return source.ToString().Split(new string[] { substring }, StringSplitOptions.None).Length - 1;
        }

        /// <summary>
        /// Get a substring in a StringBuilder object.
        /// Exponentially faster than .ToString().Substring().
        /// </summary>
        /// <param name="source">The source StringBuilder object</param>
        /// <param name="startIndex">A zero-based start index</param>
        /// <param name="length">String length to retrieve</param>
        /// <returns>Substring or empty string if not found</returns>
        public static string Substring(this StringBuilder source, int startIndex, int length)
        {
            var result = "";

            if (source.Length > 0)
            {
                if (startIndex >= 0 && length > 0)
                {
                    if (startIndex + length <= source.Length)
                    {
                        for (int x = startIndex; x < startIndex + length; x++)
                        {
                            result += source[x];
                        }
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Determine if a StringBuilder object starts with a string.
        /// </summary>
        /// <param name="source">The StringBuilder object to evaluate</param>
        /// <param name="substring">Substring to find</param>
        /// <param name="caseInsensitive">Ignore case if true</param>
        /// <returns>True is the StringBuilder object starts with the substring</returns>
        public static bool StartsWith(this StringBuilder source, string substring, bool caseInsensitive = false)
        {
            var result = false;

            if ((caseInsensitive ? Substring(source, 0, substring.Length).ToUpper() : Substring(source, 0, substring.Length)) == (caseInsensitive ? substring.ToUpper() : substring))
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Determine if a StringBuilder object ends with a string.
        /// </summary>
        /// <param name="source">The StringBuilder object to evaluate</param>
        /// <param name="substring">Substring to find</param>
        /// <param name="caseInsensitive">Ignore case if true</param>
        /// <returns>True is the StringBuilder object ends with the substring</returns>
        public static bool EndsWith(this StringBuilder source, string substring, bool caseInsensitive = false)
        {
            var result = false;

            if ((caseInsensitive ? Substring(source, source.Length - substring.Length, substring.Length).ToUpper() : Substring(source, source.Length - substring.Length, substring.Length)) == (caseInsensitive ? substring.ToUpper() : substring))
            {
                result = true;
            }

            return result;
        }
    }
}
