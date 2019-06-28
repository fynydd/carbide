using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

using Umbraco.Core.Models.PublishedContent;
using Umbraco.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

using Bolide.Helpers;

namespace Bolide.Helpers
{
    public static class Content
    {
        public static string AsCssSelector(this string value)
        {
            return value.ToLower().MakeSlug();
        }

        /// <summary>
        /// Process short codes on content. Replaces short codes with property field values from the home node, current node, and parent node if the current node is nested content.
        /// </summary>
        /// <param name="value">Text to process</param>
        /// <param name="model">Page model to use for property value find/replace and finding the home node for the current site</param>
        /// <param name="element">Optional nested content element to also use for property value find/replace</param>
        /// <returns>Processed text</returns>
        public static string ProcessShortCodes(this string value, IPublishedContent model, IPublishedElement element = null)
        {
            var result = value;

            if (result.Contains("{{") && model != null)
            {
                var home = model.AncestorOrSelf(1);
                
                Regex expression = new Regex(@"{{\w*}}");

                foreach (Match shortcode in expression.Matches(value))
                {
                    var propertyName = shortcode.Value.Replace("{{", "").Replace("}}", "");

                    if (home.HasProperty(propertyName))
                    {
                        result = result.Replace(shortcode.Value, home.SafeValue(propertyName));
                    }

                    if (model.HasProperty(propertyName))
                    {
                        result = result.Replace(shortcode.Value, model.SafeValue(propertyName));
                    }

                    if (element != null)
                    {
                        if (element.HasProperty(propertyName))
                        {
                            result = result.Replace(shortcode.Value, element.SafeValue(propertyName));
                        }
                    }
                }
            }

            return result;
        }

        public static string GetBestMenuName(this IPublishedContent content)
        {
            var result = content.Name;

            if (content.HasProperty("menuName") && content.HasValue("menuName"))
            {
                result = content.SafeValue("menuName");
            }

            else if (content.HasProperty("metaTitle") && content.HasValue("metaTitle"))
            {
                result = content.SafeValue("metaTitle");
            }

            return result;
        }
    }
}
