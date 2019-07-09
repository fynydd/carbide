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

namespace Carbide.Web.Helpers
{
    public static class Content
    {
        public static string AsCssSelector(this string value)
        {
            var result = value.ToLower().MakeSlug();

            if (result.Substring(0, 1).IsPureNumeric())
            {
                result = "s" + result;
            }

            return result;
        }

        /// <summary>
        /// Process short codes on content. Replaces short codes with property field values from the settings node.
        /// </summary>
        /// <param name="value">Text to process</param>
        /// <param name="currentNode">IPublishedContent of the current node, used to find the current site's home page and settings</param>
        /// <returns>Processed text</returns>
        public static string ProcessShortCodes(this string value, IPublishedContent currentNode)
        {
            var result = value;

            if (result.Contains("{{") && currentNode != null)
            {
                //var umbCtx = DependencyResolver.Current.GetService<IUmbracoContextFactory>().EnsureUmbracoContext().UmbracoContext;
                //var cache = umbCtx.Content;
                //var test = cache.GetById(1234);

                var home = currentNode.AncestorOrSelf(1);
                var settings = home.Children.First(c => c.ContentType.Alias == "settings");

                Regex expression = new Regex(@"{{\w*}}");

                foreach (Match shortcode in expression.Matches(value))
                {
                    var propertyName = shortcode.Value.Replace("{{", "").Replace("}}", "");

                    if (settings.HasProperty(propertyName))
                    {
                        result = result.Replace(shortcode.Value, settings.SafeValue(propertyName));
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Process short codes on content. Replaces short codes with property field values from the settings node.
        /// </summary>
        /// <param name="value">Text to process</param>
        /// <param name="umbCtx">Umbraco context, used to find the current site's home page and settings</param>
        /// <returns>Processed text</returns>
        public static string ProcessShortCodes(this string value, UmbracoContext umbCtx)
        {
            return ProcessShortCodes(value, umbCtx.Content.GetById(umbCtx.PublishedRequest.InitialPublishedContent.Id));
        }

        public static string GetBestMenuName(this IPublishedContent content)
        {
            var result = content.Name;

            if (content.HasProperty("pageName") && content.HasValue("pageName"))
            {
                result = content.SafeValue("pageName");
            }

            else if (content.HasProperty("metaTitle") && content.HasValue("metaTitle"))
            {
                result = content.SafeValue("metaTitle");
            }

            return result;
        }
    }
}
