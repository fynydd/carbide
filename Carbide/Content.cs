using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

using Umbraco.Core;
using static Umbraco.Core.Constants;
using Umbraco.Core.Models;
using Umbraco.Core.Models.PublishedContent;
using Umbraco.Core.Xml;
using Umbraco.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

using Yahoo.Yui.Compressor;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The PublishedContent class provides useful methods
    /// for using Umbraco content and properties.
    /// ]]></summary>
    public static class Content
    {
        #region Property values

        /// <summary><![CDATA[
        /// Safely get a property value by type. For supported types min values are returned
        /// (e.g. <int> returns 0, <bool> returns false, etc.) when the property does not exist
        /// or if the property returns null. Null is only returned if a type is not supported.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// var brandUrl = siteLogo.SafeValue<string>("brandUrl");
        /// var proceed = siteLogo.SafeValue<bool>("shouldWeProceed");
        /// var value = siteLogo.SafeValue<int>("quantityItems");
        /// ]]></code>
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="culture"></param>
        /// <param name="segment"></param>
        /// <param name="fallback"></param>
        /// <param name="defaultValue"></param>
        /// <returns>Value of the property by type, or false (bool), -1 (numeric types), min value (dates), an empty string, or null (objects)</returns>
        public static T SafeValue<T>(this IPublishedContent contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), T defaultValue = default(T))
        {
            dynamic value = null;

            try
            {
                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        value = contentNode.Value<T>(propertyAlias, culture, segment, fallback, defaultValue);
                    }

                    if (value == null || contentNode.HasProperty(propertyAlias) == false)
                    {
                        if (typeof(T) == typeof(string))
                        {
                            value = (T)(Convert.ChangeType(string.Empty, typeof(T)));
                        }

                        if (typeof(T) == typeof(string[]))
                        {
                            value = (T)(Convert.ChangeType(new string[] { }, typeof(T)));
                        }

                        else if (typeof(T) == typeof(bool))
                        {
                            value = (T)(Convert.ChangeType(false, typeof(T)));
                        }

                        else if (typeof(T) == typeof(int) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(long))
                        {
                            value = (T)(Convert.ChangeType(-1, typeof(T)));
                        }

                        else if (typeof(T) == typeof(DateTime))
                        {
                            value = (T)(Convert.ChangeType(DateTime.MinValue, typeof(T)));
                        }

                        else
                        {
                            value = (T)(Convert.ChangeType(value, typeof(T)));
                        }
                    }

                    return (T)value;
                }

                else
                {
                    return (T)(object)null;
                }
            }

            catch
            {
                return (T)(object)null;
            }
        }

        /// <summary><![CDATA[
        /// Safely get a property value as string. An empty string is returned when the property does not exist
        /// or if the property returns null.
        /// ]]></summary>
        /// <example>
        /// var brandUrl = siteLogo.SafeValue("brandUrl");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="culture"></param>
        /// <param name="segment"></param>
        /// <param name="fallback"></param>
        /// <param name="defaultValue"></param>
        /// <returns>Value of the property as a string or an empty string</returns>
        public static string SafeValue(this IPublishedContent contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), string defaultValue = "")
        {
            return SafeValue<string>(contentNode, propertyAlias, culture, segment, fallback, defaultValue);
        }

        public static string SafeValue(this IPublishedElement contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), string defaultValue = "")
        {
            return SafeValue<string>(contentNode, propertyAlias, culture, segment, fallback, defaultValue);
        }

        public static T SafeValue<T>(this IPublishedElement contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), T defaultValue = default(T))
        {
            dynamic value = null;

            try
            {
                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        value = contentNode.Value<T>(propertyAlias, culture, segment, fallback, defaultValue);
                    }

                    if (value == null || contentNode.HasProperty(propertyAlias) == false)
                    {
                        if (typeof(T) == typeof(string))
                        {
                            value = (T)(Convert.ChangeType(string.Empty, typeof(T)));
                        }

                        if (typeof(T) == typeof(string[]))
                        {
                            value = (T)(Convert.ChangeType(new string[] { }, typeof(T)));
                        }

                        else if (typeof(T) == typeof(bool))
                        {
                            value = (T)(Convert.ChangeType(false, typeof(T)));
                        }

                        else if (typeof(T) == typeof(int) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(long))
                        {
                            value = (T)(Convert.ChangeType(-1, typeof(T)));
                        }

                        else if (typeof(T) == typeof(DateTime))
                        {
                            value = (T)(Convert.ChangeType(DateTime.MinValue, typeof(T)));
                        }

                        else
                        {
                            value = (T)(Convert.ChangeType(value, typeof(T)));
                        }
                    }

                    return (T)value;
                }

                else
                {
                    return (T)(object)null;
                }
            }

            catch
            {
                return (T)(object)null;
            }
        }

        #endregion

        #region Picker and nested content values

        /// <summary><![CDATA[
        /// Get a single content picker item from a content node property.
        /// ]]></summary>
        /// <example>
        /// var content = Model.SafePickerValue("destinationPage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="culture"></param>
        /// <param name="segment"></param>
        /// <param name="fallback"></param>
        /// <param name="defaultValue"></param>
        /// <returns>Content picker item as an IPublishedContent object</returns>
        public static IPublishedContent PickerValue(this IPublishedContent contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IPublishedContent defaultValue = null)
        {
            return contentNode.Value(propertyAlias, culture, segment, fallback, defaultValue);
        }

        public static IPublishedContent PickerValue(this IPublishedElement contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IPublishedContent defaultValue = null)
        {
            return contentNode.Value(propertyAlias, culture, segment, fallback, defaultValue);
        }

        /// <summary><![CDATA[
        /// Safely get items from a Multinode Tree Picker or multiple media items stored in a property.
        /// If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple 
        /// foreach loop can be used without being wrapped if an if/else statement.
        /// ]]></summary>
        /// <example>
        /// var socialLinks = Model.SafePickerValues("heroSocialLinks");
        /// foreach (var socialLink in socialLinks)
        /// {
        /// }
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="culture"></param>
        /// <param name="segment"></param>
        /// <param name="fallback"></param>
        /// <param name="defaultValue"></param>
        /// <returns>IEnumerable of IPublishedContent</returns>
        public static IEnumerable<IPublishedContent> SafePickerValues(this IPublishedContent contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IEnumerable<IPublishedContent> defaultValue = null)
        {
            IEnumerable<IPublishedContent> empty = new List<IPublishedContent>();

            try
            {
                if (defaultValue != null)
                {
                    empty = defaultValue;
                }

                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        var propertyItems = contentNode.Value<IEnumerable<IPublishedContent>>(propertyAlias, culture, segment, fallback, defaultValue);

                        if (propertyItems != null)
                        {
                            return propertyItems;
                        }

                        else
                        {
                            return empty;
                        }
                    }

                    else
                    {
                        return empty;
                    }
                }

                else
                {
                    return empty;
                }
            }

            catch
            {
                return empty;
            }
        }

        public static IEnumerable<IPublishedContent> SafePickerValues(this IPublishedElement contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IEnumerable<IPublishedContent> defaultValue = null)
        {
            IEnumerable<IPublishedContent> empty = new List<IPublishedContent>();

            try
            {
                if (defaultValue != null)
                {
                    empty = defaultValue;
                }

                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        var propertyItems = contentNode.Value<IEnumerable<IPublishedContent>>(propertyAlias, culture, segment, fallback, defaultValue);

                        if (propertyItems != null)
                        {
                            return propertyItems;
                        }

                        else
                        {
                            return empty;
                        }
                    }

                    else
                    {
                        return empty;
                    }
                }

                else
                {
                    return empty;
                }
            }

            catch
            {
                return empty;
            }
        }

        /// <summary><![CDATA[
        /// Safely get items from a nested content picker stored in a property. If the property 
        /// is null an empty IEnumerable is returned to avoid exceptions, and so a simple 
        /// foreach loop can be used without being wrapped if an if/else statement.
        /// ]]></summary>
        /// <example>
        /// var socialLinks = Model.SafeNestedValues("heroSocialLinks");
        /// foreach (var socialLink in socialLinks)
        /// {
        /// }
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="culture"></param>
        /// <param name="segment"></param>
        /// <param name="fallback"></param>
        /// <param name="defaultValue"></param>
        /// <returns>IEnumerable of IPublishedContent</returns>
        public static IEnumerable<IPublishedElement> SafeNestedValues(this IPublishedContent contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IEnumerable<IPublishedContent> defaultValue = null)
        {
            IEnumerable<IPublishedElement> empty = new List<IPublishedElement>();

            try
            {
                if (defaultValue != null)
                {
                    empty = defaultValue;
                }

                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        var propertyItems = contentNode.Value<IEnumerable<IPublishedElement>>(propertyAlias, culture, segment, fallback, defaultValue);

                        if (propertyItems != null)
                        {
                            return propertyItems;
                        }

                        else
                        {
                            return empty;
                        }
                    }

                    else
                    {
                        return empty;
                    }
                }

                else
                {
                    return empty;
                }
            }

            catch
            {
                return empty;
            }
        }

        public static IEnumerable<IPublishedElement> SafeNestedValues(this IPublishedElement contentNode, string propertyAlias, string culture = null, string segment = null, Fallback fallback = default(Fallback), IEnumerable<IPublishedElement> defaultValue = null)
        {
            IEnumerable<IPublishedElement> empty = new List<IPublishedElement>();

            try
            {
                if (defaultValue != null)
                {
                    empty = defaultValue;
                }

                if (contentNode != null)
                {
                    if (contentNode.HasProperty(propertyAlias))
                    {
                        var propertyItems = contentNode.Value<IEnumerable<IPublishedElement>>(propertyAlias, culture, segment, fallback, defaultValue);

                        if (propertyItems != null)
                        {
                            return propertyItems;
                        }

                        else
                        {
                            return empty;
                        }
                    }

                    else
                    {
                        return empty;
                    }
                }

                else
                {
                    return empty;
                }
            }

            catch
            {
                return empty;
            }
        }

        #endregion

        #region Media

        /// <summary><![CDATA[
        /// Get the crop URL of a named ImageCropper crop size, or an empty string if none is available.
        /// ]]></summary>
        /// <example>
        /// var imageUrl = Model.SafeCropUrl("photo", "Square");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyAlias"></param>
        /// <param name="cropAlias"></param>
        /// <returns>URl for media crop, or an empty string</returns>
        public static string SafeCropUrl(this IPublishedContent contentNode, string propertyAlias, string cropAlias, bool returnNull = false)
        {
            var result = "";

            if (contentNode.HasValue(propertyAlias))
            {
                try
                {
                    result = contentNode.GetCropUrl(propertyAlias, cropAlias);
                }

                catch
                { }
            }

            return (returnNull && result == "" ? null : result);
        }

        #endregion

        #region URL/URI

        /// <summary>
        /// Get the relative URL for a page (omits the transport and domain)
        /// </summary>
        /// <param name="content">IPublished content for page</param>
        /// <returns>URL to page as string</returns>
        public static string GetRelativeUrl(this IPublishedContent content)
        {
            if (content != null)
            {
                try
                {
                    return content.Url(mode: UrlMode.Relative);
                }

                catch
                {
                    return "/";
                }
            }

            else
            {
                return "/";
            }
        }

        /// <summary>
        /// Get the absolute URL for a page (includes transport and domain)
        /// </summary>
        /// <param name="content">IPublished content for page</param>
        /// <returns>URL to page as string</returns>
        public static string GetAbsoluteUrl(this IPublishedContent content)
        {
            if (content != null)
            {
                try
                {
                    return content.Url(mode: UrlMode.Absolute);
                }

                catch
                {
                    return "//";
                }
            }

            else
            {
                return "//";
            }
        }

        /// <summary>
        /// Get the relative path from and absolute URL.
        /// </summary>
        /// <param name="content">Content item to parse</param>
        /// <param name="useLowerCase">Convert URL to lower case</param>
        /// <param name="stripQueryString">Remove query string from result</param>
        /// <returns>Relative URL that always ends with "/" when the query string is stripped.</returns>
        public static string GetRelativeUrl(this IPublishedContent content, bool useLowerCase = true, bool stripQueryString = true)
        {
            var result = "";

            if (content!= null)
            {
                result = content.GetAbsoluteUrl().GetRelativeUrl(useLowerCase, stripQueryString);
            }

            return result;
        }

        #endregion
    }
}
