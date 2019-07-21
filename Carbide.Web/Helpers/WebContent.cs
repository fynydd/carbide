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
    public class NavigationSettings
    {
        public NavigationSettings()
        {
            StartNode = null;
            IncludeStartNode = true;
            CurrentPageId = -1;
            ListType = "ul";
            ListItemType = "li";
            BulletClass = "";
            MaxDepth = 1;
        }

        public IPublishedContent StartNode { get; set; }
        public int CurrentPageId { get; set; }
        public bool IncludeStartNode { get; set; }
        public string ListType { get; set; }
        public string ListItemType { get; set; }
        public string BulletClass { get; set; }
        public int MaxDepth { get; set; }
    }

    public static class WebContent
    {
        /// <summary>
        /// Format a string as a CSS selector.
        /// </summary>
        /// <param name="value">Text to format</param>
        /// <returns></returns>
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
                //var content = umbCtx.Content.GetById(1234);

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

        /// <summary>
        /// Get the best menu text for a content item based on various properties like Name, pageName, and metaTitle.
        /// </summary>
        /// <param name="content">Content item</param>
        /// <returns></returns>
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

        /// <summary>
        /// Get the best excerpt text for a content item based on various properties like pageExcerpt and metaDescription.
        /// </summary>
        /// <param name="content">Content item</param>
        /// <returns></returns>
        public static string GetBestExcerpt(this IPublishedContent content)
        {
            var result = "";

            if (content.HasProperty("pageExcerpt") && content.HasValue("pageExcerpt"))
            {
                result = content.SafeValue("pageExcerpt");
            }

            else if (content.HasProperty("metaDescription") && content.HasValue("metaDescription"))
            {
                result = content.SafeValue("metaDescription");
            }

            return result;
        }

        /// <summary>
        /// Create HTML markup for a navigation tree based on a starting content item.
        /// This is useful for sidebar navigation elements like a table of contents.
        /// </summary>
        /// <param name="settings">NavigationSettings configuration for the navigation block</param>
        /// <returns></returns>
        public static string GenerateNavigationList(NavigationSettings settings)
        {
            var result = "";

            if (settings.StartNode != null)
            {
                if (settings.ListType == "ul" || settings.ListType == "ol")
                {
                    settings.BulletClass = "";
                }

                if (settings.IncludeStartNode)
                {
                    result += "<" + settings.ListType + " data-level=\"0\" class=\"container\"><" + settings.ListItemType + " data-level=\"0\"><i class=\"" + settings.BulletClass + "\"></i><a href=\"" + settings.StartNode.GetUrlPath() + "\" class=\"" + (settings.CurrentPageId == settings.StartNode.Id ? "current" : "") + "\">" + settings.StartNode.GetBestMenuName() + "</a>";

                    if (settings.MaxDepth > 0)
                    {
                        result += settings.StartNode.GenerateNavigationChildren(settings);
                    }

                    result += "</" + settings.ListItemType + "></" + settings.ListType + ">";
                }

                else
                {
                    if (settings.MaxDepth > 0)
                    {
                        result += settings.StartNode.GenerateNavigationChildren(settings);
                    }
                }
            }

            return result;
        }

        private static string GenerateNavigationChildren(this IPublishedContent parent, NavigationSettings settings)
        {
            var result = "";

            if (parent != null && settings.StartNode != null)
            {
                if (parent.Level - settings.StartNode.Level + 1 < settings.MaxDepth)
                {
                    var relativeLevel = parent.Level - settings.StartNode.Level + (settings.IncludeStartNode ? 1 : 0);
                    var children = parent.Children<IPublishedContent>().Where(d => d.GetTemplateAlias().HasValue() && d.HasProperty("showInNavigation") && d.SafeValue<bool>("showInNavigation"));

                    if (children != null && children.Count() > 0)
                    {
                        result += "<" + settings.ListType + " data-level=\"" + relativeLevel + "\" class=\"container\">";

                        foreach (var child in parent.Children<IPublishedContent>().Where(d => d.GetTemplateAlias().HasValue() && d.HasProperty("showInNavigation") && d.SafeValue<bool>("showInNavigation")))
                        {
                            result += "<" + settings.ListItemType + " data-level=\"" + relativeLevel + "\"><i class=\"" + settings.BulletClass + "\"></i><a href=\"" + child.GetUrlPath() + "\" class=\"" + (settings.CurrentPageId == child.Id ? "current" : "") + "\">" + child.GetBestMenuName() + "</a>";

                            if (relativeLevel < settings.MaxDepth)
                            {
                                result += child.GenerateNavigationChildren(settings);
                            }

                            result += "</" + settings.ListItemType + ">";
                        }

                        result += "</" + settings.ListType + ">";
                    }
                }
            }

            return result;
        }
    }
}
