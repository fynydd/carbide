using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

using Umbraco.Core;
using static Umbraco.Core.Constants;
using Umbraco.Core.Events;
using Umbraco.Core.Models;
using Umbraco.Core.Media;
using Umbraco.Core.Services;
using Umbraco.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The MediaHelpers class has static methods and properties for 
    /// using media.
    /// ]]></summary>
    /// <example>
    /// For example, you can make calls like this:
    /// <code><![CDATA[
    /// var markup = MediaHelpers.GetYoutubeUrl("abc123", "https://");
    /// ]]></code>
    /// </example>
    public static class MediaHelpers
    {
        #region YouTube helpers

        /// <summary><![CDATA[
        /// Convert a YouTube URL or video code into a properly formed YouTube URL.
        /// ]]></summary>
        /// <param name="youtubeUrlOrCode">YouTube video URL or code</param>
        /// <param name="transport">Defaults to "//", but you can specify "http://", "https://", etc.</param>
        /// <returns>A properly formatted YouTube video URL.</returns>
        public static string GetYoutubeUrl(string youtubeUrlOrCode, string transport = "//")
        {
            string result = "";
            string[] fragments = { "?v=", "/embed/", "youtu.be/" };

            if (!String.IsNullOrEmpty(youtubeUrlOrCode))
            {
                string prefix = transport + "www.youtube.com/embed/";

                if (youtubeUrlOrCode.ToLower().StartsWith("http://") || youtubeUrlOrCode.ToLower().StartsWith("https://") || youtubeUrlOrCode.ToLower().StartsWith("//"))
                {
                    foreach (var fragment in fragments)
                    {
                        if (youtubeUrlOrCode.ToLower().Contains(fragment))
                        {
                            if (youtubeUrlOrCode.IndexOf(fragment) + fragment.Length < youtubeUrlOrCode.Length)
                            {
                                result = prefix + youtubeUrlOrCode.Substring(youtubeUrlOrCode.IndexOf(fragment) + fragment.Length);
                                break;
                            }
                        }
                    }

                    if (result == "")
                    {
                        result = youtubeUrlOrCode;
                    }
                }

                else
                {
                    result = prefix + youtubeUrlOrCode;
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Create a properly formatted YouTube video markeup block.
        /// ]]></summary>
        /// <param name="youtubeUrlOrCode">YouTube video URL or video code.</param>
        /// <param name="transport">Defaults to "//", but you can specify "http://", "https://", etc.</param>
        /// <returns>Properly formatted HTML markup to render the video.</returns>
        public static string GetYoutubeEmbedCode(string youtubeUrlOrCode, string transport = "//")
        {
            string result = "";

            if (!String.IsNullOrEmpty(youtubeUrlOrCode))
            {
                result = "<iframe src=\"" + GetYoutubeUrl(youtubeUrlOrCode, transport) + "?rel=0&autohide=2&modestbranding=1&theme=light&color=white\" frameborder=\"0\" allowfullscreen></iframe>";
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Return the maximum width for a media item given its aspect ratio and
        /// a maximum width, maximum height, and image aspect ratio. maxWidth, maxHeight,
        /// and the returned result are numeric. No units are required as this is all
        /// about relative sizes. So this formula will work with any numbers.
        /// Assumes a property exists for "aspectRatio", which contains a width to height 
        /// number where 1.0 is a perfect square, and 1.5 would be an image that is 50% wider 
        /// than it is tall.
        /// ]]></summary>
        /// <param name="contentNode">The current media item as IPublishedContent</param>
        /// <param name="maxWidth">Maximum width value</param>
        /// <param name="maxHeight">Maximum height value</param>
        /// <param name="maxAspectRatio">Highest aspect ratio to adjust (0.0 through 10-ish; defaults to 5.0)</param>
        /// <param name="exponent">Exponent value for the curve (1.0 through 2.0-ish; defaults to 1.02)</param>
        /// <param name="lowestHeightRatio">Lowest height ratio to allow (0 through 1.0-ish; defaults to 0.5)</param>
        /// <returns>The width an image can be without breaking the maximum height.</returns>
        public static double GetIdealImageWidth(this IPublishedContent contentNode, double maxWidth, double maxHeight, double maxAspectRatio = 5.0, double exponent = 1.02, double lowestHeightRatio = 0.5)
        {
            return GetIdealImageWidth(contentNode, contentNode.SafeGetValue<double>("aspectRatio"), maxWidth, maxHeight, maxAspectRatio, exponent, lowestHeightRatio);
        }

        /// <summary><![CDATA[
        /// Return the ideal width for a media item given its aspect ratio and
        /// a maximum width, maximum height, and image aspect ratio. maxWidth, maxHeight,
        /// and the returned result are numeric. No units are required as this is all
        /// about relative sizes. So this formula will work with any numbers.
        /// The ideal width is based on aspect ratio as well as maximum dimensions. So a logo,
        /// for example, won't be too tall if it's 4:3 or similar aspect ration. It tries to 
        /// calculate by "mass" not just dimensions.
        /// ]]></summary>
        /// <param name="contentNode">A media item as IPublishedContent</param>
        /// <param name="aspectRatio">A width to height number where 1.0 is a perfect square, 
        /// and 1.5 would be an image that is 50% wider than it is tall.</param>
        /// <param name="maxWidth">Maximum width value</param>
        /// <param name="maxHeight">Maximum height value</param>
        /// <param name="maxAspectRatio">Highest aspect ratio to adjust (0.0 through 10-ish; defaults to 5.0)</param>
        /// <param name="exponent">Exponent value for the curve (1.0 through 2.0-ish; defaults to 1.02)</param>
        /// <param name="lowestHeightRatio">Lowest height ratio to allow (0 through 1.0-ish; defaults to 0.5)</param>
        /// <returns>The width an image can be without breaking the maximum height.</returns>
        public static double GetIdealImageWidth(IPublishedContent contentNode, double aspectRatio, double maxWidth, double maxHeight, double maxAspectRatio = 5.0, double exponent = 1.02, double lowestHeightRatio = 0.5)
        {
            List<double> intervals = new List<double>();

            double n = Math.Pow(exponent, 100) - (exponent - 1);
            double d = exponent - (exponent - 1);
            double t = (1.0 - lowestHeightRatio) / (n / d);

            for (int x = 0; x <= 100; x++)
            {
                double interval = t * Math.Pow(exponent, x);
                intervals.Add(interval);
            }

            double adjustedMaxHeight = maxHeight;
            double width = maxWidth;
            int index = 0;
            double multiplier = 1.0;

            if (aspectRatio < maxAspectRatio)
            {
                if (aspectRatio > 1.0)
                {
                    index = Convert.ToInt32(100 - ((maxAspectRatio - 1) / (aspectRatio - 1)) * 10);

                    if (index < 0)
                    {
                        index = 0;
                    }
                }

                multiplier = 1.0 - (double)intervals[index];
                adjustedMaxHeight = maxHeight * multiplier;
            }

            if (aspectRatio > 0 && maxWidth > 0 && adjustedMaxHeight > 0)
            {
                if ((maxWidth / aspectRatio) > adjustedMaxHeight)
                {
                    width = aspectRatio * adjustedMaxHeight;
                }
            }

            else
            {
                width = 0;
            }

            width = Math.Round(width, 4);

            return width;
        }

        #endregion

        #region SVG helpers

        /// <summary><![CDATA[
        /// Return the markup required to render an SVG image
        /// ]]></summary>
        /// <param name="content">The media item property to render.</param>
        /// <param name="color">Optional hex color code to use to recolor the SVG (e.g. "ffffff")</param>
        /// <param name="attributes">Optional tag attributes to insert.</param>
        /// <returns>SVG image markup</returns>
        public static string RenderSvg(IPublishedContent content, string color = "", string attributes = "")
        {
            var markup = "";
            int svgId = 0;

            if (content.Url.EndsWith(".svg"))
            {
                svgId = content.Id;
            }

            if (svgId > 0)
            {
                var querystring = "";

                if (color != "" && color.Length < 10)
                {
                    querystring += "&color=" + color.Replace("#", "");
                }

                markup = "<img src=\"/umbraco/api/carbidefile/svg/?id=" + svgId + querystring + "\"" + (attributes != "" ? " " + attributes : "") + " />";
            }

            return markup;
        }

        /// <summary><![CDATA[
        /// Return the markup required to render an SVG image
        /// ]]></summary>
        /// <param name="content">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker property, or blank if the conent item itself is the media item.</param>
        /// <param name="color">Optional hex color code to use to recolor the SVG (e.g. "ffffff")</param>
        /// <param name="attributes">Optional tag attributes to insert.</param>
        /// <returns>SVG image markup</returns>
        public static string RenderSvg(this IPublishedContent content, string propertyName = "", string color = "", string attributes = "")
        {
            var markup = "";

            if (content.SafeGetMediaPickerItemUrl(propertyName).EndsWith(".svg"))
            {
                markup = RenderSvg(content.SafeGetMediaPickerItem(propertyName), color, attributes);
            }

            else
            {
                if (content.Url.EndsWith(".svg"))
                {
                    markup = RenderSvg(content, color, attributes);
                }
            }

            return markup;
        }

        /// <summary><![CDATA[
        /// Remove comments and style attributes from SVG markup.
        /// ]]></summary>
        /// <param name="svg">SVG markup to clean.</param>
        /// <param name="removeStyles">If true, svg style property is removed.</param>
        /// <param name="fixStyles">Ensure unique svg id and style classes are scoped to that id.</param>
        /// <param name="removeXmlHeader">Removes the XML document header.</param>
        /// <returns>Cleaned SVG markup.</returns>
        public static string CleanSvg(string svg, bool removeStyles = false, bool fixStyles = true, bool removeXmlHeader = true)
        {
            var result = svg;
            var svgId = "SVG" + Storage.MakeUniqueFilenameFromExtension("").TrimEnd(".");

            // Remove comments
            result = Regex.Replace(result, "<!--.*?-->", String.Empty, RegexOptions.Singleline);

            if (removeXmlHeader)
            {
                // Remove XML header
                result = Regex.Replace(result, @"<[\?]xml.*?[\?]>", String.Empty, RegexOptions.Singleline);
            }

            // Remove styles?
            if (removeStyles)
            {
                // Removes embedded style blocks
                // result = Regex.Replace(result, "<style.*?</style>", String.Empty, RegexOptions.Singleline);

                MatchCollection matches = Regex.Matches(result, @"<svg[^>]* (style=['\""].*?['\""])[^>]*>", RegexOptions.Singleline);

                if (matches.Count > 0)
                {
                    foreach (Match match in matches)
                    {
                        foreach (Group group in match.Groups)
                        {
                            if (!group.Value.StartsWith("<svg"))
                            {
                                result = result.Replace(group.Value, "");
                            }
                        }
                    }
                }
            }

            // Fix embedded styles to class names are scoped locally
            else
            {
                if (fixStyles)
                {
                    // Assign a unique id to prevent in-page conflicts
                    MatchCollection matches = Regex.Matches(result, @"<svg[^>]* id=['\""](.*?)['\""][^>]*>", RegexOptions.Singleline);

                    if (matches.Count > 0)
                    {
                        foreach (Match match in matches)
                        {
                            foreach (Group group in match.Groups)
                            {
                                if (!group.Value.StartsWith("<svg"))
                                {
                                    result = result.Replace("id=\"" + group.Value, "id=\"" + svgId);
                                    result = result.Replace("id='" + group.Value, "id='" + svgId);
                                }
                            }
                        }
                    }

                    else
                    {
                        result = result.Replace("<svg ", "<svg id=\"" + svgId + "\" ");
                    }

                    if (result.Contains("<style"))
                    {
                        matches = Regex.Matches(result, @"\s*>*}*(\.[\w\d-]*)\s*{.*?", RegexOptions.Singleline);
                    
                        foreach (Match match in matches)
                        {
                            foreach (Group group in match.Groups)
                            {
                                if (!group.Value.EndsWith("{"))
                                {
                                    result = result.Replace(group.Value, "#" + svgId + " " + group.Value);
                                }
                            }
                        }
                    }
                }
            }

            return result.Trim();
        }

        #endregion

        #region Extension methods

        /// <summary><![CDATA[
        /// Determines is an image URL is supported natively by all major web browsers via the img tag.
        /// ]]></summary>
        /// <param name="url">URL to an image resource to evaluate.</param>
        /// <returns>True if the image will render in a browser via the img tag.</returns>
        public static bool IsWebImage(this string url)
        {
            if (url.ToLower().EndsWith(".svg") || url.ToLower().EndsWith(".gif") || url.ToLower().EndsWith(".jpg") || url.ToLower().EndsWith(".jpeg") || url.ToLower().EndsWith(".png"))
            {
                return true;
            }

            else
            {
                return false;
            }
        }

        /// <summary><![CDATA[
        /// Determines is an image URL is a supported image type for responsive image generation,
        /// and other ImageProcessor functions.
        /// ]]></summary>
        /// <param name="url">URL to an image resource to evaluate.</param>
        /// <returns>True if the image can be processed with ImageProcessor.</returns>
        public static bool IsResponsiveImageType(this string url)
        {
            if (!string.IsNullOrEmpty(url))
            {
                if (url.ToLower().EndsWith(".jpg") || url.ToLower().EndsWith(".jpeg") || url.ToLower().EndsWith(".png"))
                {
                    return true;
                }

                else
                {
                    return false;
                }
            }

            else
            {
                return false;
            }
        }

        /// <summary><![CDATA[
        /// Ensure that a hex color starts with #.
        /// ]]></summary>
        /// <param name="color">Hex color string to fix</param>
        /// <returns>Color hex code with leading #</returns>
        public static string FixHexColor(this string color)
        {
            var result = color;

            if (result != "" && !result.StartsWith("#"))
            {
                result = "#" + result;
            }

            return result;
        }

        #endregion
    }
}
