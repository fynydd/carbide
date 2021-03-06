﻿using System;
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
using Umbraco.Core.Events;
using Umbraco.Core.Models;
using Umbraco.Core.Media;
using Umbraco.Core.Services;
using Umbraco.Core.Xml;
using Umbraco.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

using Yahoo.Yui.Compressor;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The ContentHelpers class provides useful methods
    /// for using Umbraco content and properties.
    /// ]]></summary>
    /// <example>
    /// For example, you can work with IPublishedContent like this:
    /// <code><![CDATA[
    /// var udi = Model.GetUdi();
    /// ]]></code>
    /// </example>
    public static class ContentHelpers
    {
        #region Private - stuff you don't need to call directly

        private enum IPublishedContentType
        {
            Content,
            Media
        }

        private static IPublishedContent _ReturnContentItem(IPublishedContent contentNode, string propertyName, IPublishedContentType contentType, bool recurseAncestors = false)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            if (contentNode != null)
            {
                if (contentNode.HasProperty(propertyName) || recurseAncestors)
                {
                    var contentProperty = contentNode.GetPropertyValue<IPublishedContent>(propertyName, recurseAncestors);

					if (contentProperty == null)
					{
						// See if property is a collection and return first item if it is

						var collection = contentNode.GetPropertyValue<IEnumerable<IPublishedContent>>(propertyName, recurseAncestors);

						if (collection != null)
						{
							if (collection.Count() > 0)
							{
								contentProperty = collection.First();
							}
						}
					}

					if (contentProperty != null)
                    {
                        if (contentType == IPublishedContentType.Media)
                        {
                            var mediaItem = umbracoHelper.TypedMedia(contentProperty.Id);

                            if (mediaItem != null)
                            {
                                return mediaItem;
                            }

                            else
                            {
                                return null;
                            }
                        }

                        else
                        {
                            var contentItem = umbracoHelper.TypedContent(contentProperty.Id);

                            if (contentItem != null)
                            {
                                return contentItem;
                            }

                            else
                            {
                                return null;
                            }
                        }
                    }

                    else
                    {
                        return null;
                    }
                }

                else
                {
                    return null;
                }
            }

            else
            {
                return null;
            }
        }

        private static string _ReturnContentItemUrl(this IPublishedContent contentNode, string propertyName, IPublishedContentType contentType, bool recurseAncestors = false)
        {
            if (contentNode != null)
            {
                var contentItem = _ReturnContentItem(contentNode, propertyName, contentType, recurseAncestors);

                if (contentItem != null)
                {
                    return contentItem.Url;
                }

                else
                {
                    return "";
                }
            }

            else
            {
                return "";
            }
        }

        #endregion

        #region IPublishedContent property retrieval and evaluation

        /// <summary><![CDATA[
        /// UDIs are required for setting picker content values, etc. in ContentService, and
        /// many other places, since numeric content Ids are being phased out. This method gets the
        /// UDI for a single IPublishedContent object.
        /// ]]></summary>
        /// <param name="content">The current IPublishedContent content object</param>
        /// <returns>UDI (e.g. "umb://document/28b551d1e9e74c758686604c9168b910")</returns>
        public static string GetUdi(this IPublishedContent content)
        {
            if (content != null)
            {
                return Udi.Create(UdiEntityType.Document, content.GetKey()).ToString();
            }

            else
            {
                return "";
            }
        }

        /// <summary><![CDATA[
        /// Get a single content picker item from a content node property.
        /// ]]></summary>
        /// <example>
        /// var content = Model.SafeGetContentPickerItem("destinationPage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the content picker item property</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Content picker item as an IPublishedContent object</returns>
        public static IPublishedContent SafeGetContentPickerItem(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return _ReturnContentItem(contentNode, propertyName, IPublishedContentType.Content, recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Get a single media picker item from a content node property.
        /// ]]></summary>
        /// <example>
        /// var siteLogo = Model.SafeGetMediaPickerItem("heroSiteLogo", true);
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker item property</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Media picker item as an IPublishedContent object</returns>
        public static IPublishedContent SafeGetMediaPickerItem(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return _ReturnContentItem(contentNode, propertyName, IPublishedContentType.Media, recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Get a single media picker item from a content node property, and return its URL.
        /// ]]></summary>
        /// <example>
        /// var heroBackgroundImageUrl = Model.SafeGetMediaPickerItemUrl("heroBackgroundImage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker item property</param>
        /// <param name="width">Width in pixels for the generated image.</param>
        /// <param name="quality">Quality from 0-100 of the generated image. Lower quality yields a smaller file size.</param>
        /// <param name="filters"><![CDATA[Additional filters for ImageProcessor (e.g. "tint=red&brightness=10")]]></param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>URL to the picker item. If the picker item is null, an empty string is returned.</returns>
        public static string SafeGetMediaPickerItemUrl(this IPublishedContent contentNode, string propertyName, int width = 800, int quality = 80, string filters = "", bool recurseAncestors = false)
        {
            var url = _ReturnContentItemUrl(contentNode, propertyName, IPublishedContentType.Media, recurseAncestors);
            
            if (url.IsResponsiveImageType())
            {
                url = url.RemoveQueryString() + "?width=" + width + "&quality=" + quality + (filters != "" ? "&" + filters.Trim('&') : "");
            }

            return url;
        }

        /// <summary><![CDATA[
        /// Get a single media picker item from a content node property, and return its URL.
        /// ]]></summary>
        /// <example>
        /// var heroBackgroundImageUrl = Model.SafeGetMediaPickerItemUrl("heroBackgroundImage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker item property</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>URL to the picker item. If the picker item is null, an empty string is returned.</returns>
        public static string SafeGetMediaPickerItemUrl(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return SafeGetMediaPickerItemUrl(contentNode, propertyName, 800, 80, "", recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Get a single media picker item from a content node property, and return its URL.
        /// ]]></summary>
        /// <example>
        /// var heroBackgroundImageUrl = Model.SafeGetMediaPickerItemUrl("heroBackgroundImage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker item property</param>
        /// <returns>URL to the picker item. If the picker item is null, an empty string is returned.</returns>
        public static string SafeGetMediaPickerItemUrl(this IPublishedContent contentNode, string propertyName)
        {
            return SafeGetMediaPickerItemUrl(contentNode, propertyName, 800, 80, "", false);
        }

        /// <summary><![CDATA[
        /// Get a single content picker item from a content node property, and return its URL.
        /// ]]></summary>
        /// <example>
        /// var pageUrl = Model.SafeGetContentPickerItemUrl("childPage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the content picker item property</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>URL to the picker item. If the picker item is null, an empty string is returned.</returns>
        public static string SafeGetContentPickerItemUrl(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return _ReturnContentItemUrl(contentNode, propertyName, IPublishedContentType.Content, recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Get a single media item from a content node whose Document Type uses a Media Picker 
        /// to store a single media item as a property value, and return markup to display the item
		/// based on tags passed to the method.
        /// ]]></summary>
        /// <example>
        /// var heroBackgroundImageMarkup = Model.SafeGetMediaItemMarkup("heroBackgroundImage", "span img");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media item property</param>
        /// <param name="tagsList">Comma separated tags list for markup generation (e.g. "span,img" or "span [role='icon'],img"). Markup is generated in the order of the tags list. The last tag is used to generate the media item. Currently only img, audio, video, and object are supported for generating the last tag.</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Markup for the media item. If the media item is null, an empty string is returned.</returns>
        public static string SafeGetMediaItemMarkup(this IPublishedContent contentNode, string propertyName, string tagsList = "", bool recurseAncestors = false)
        {
            if (contentNode != null)
            {
                var mediaItemUrl = contentNode.SafeGetMediaPickerItemUrl(propertyName, recurseAncestors);

                if (mediaItemUrl != "")
                {
                    var prefix = "";
                    var suffix = "";

                    if (!String.IsNullOrEmpty(tagsList))
                    {
                        string[] tags = tagsList.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);

                        foreach (var tag in tags)
                        {
                            if (tags.LastOrDefault().Equals(tag))
                            {
                                if (tag.Length > 2)
                                {
                                    switch (tag.Substring(0, 3))
                                    {
                                        case "aud":
                                        case "vid":
                                        case "obj":
                                            prefix += "<" + tag + " data=\"";
                                            suffix = "\"></object>" + suffix;
                                            break;
                                        case "svg":
                                            mediaItemUrl = contentNode.RenderSvg(propertyName);
                                            break;
                                        default:
                                            prefix += "<" + tag + " src=\"";
                                            suffix = "\" />" + suffix;
                                            break;
                                    }
                                }

                                else
                                {
                                    prefix = suffix = mediaItemUrl = "";
                                }
                            }

                            else
                            {
                                prefix += "<" + tag.Trim() + ">";

                                if (tag.Trim().Contains(" "))
                                {
                                    suffix = "</" + tag.Substring(0, tag.IndexOf(" ")) + ">" + suffix;
                                }

                                else
                                {
                                    suffix = "</" + tag + ">" + suffix;
                                }
                            }
                        }
                    }

                    return prefix + mediaItemUrl + suffix;
                }

                else
                {
                    return "";
                }
            }

            else
            {
                return "";
            }
        }

        /// <summary><![CDATA[
        /// Safely get a property value by type. For supported types min values are returned
        /// (e.g. <int> returns 0, <bool> returns false, etc.) when the property does not exist
        /// or if the property returns null. Null is only returned if a type is not supported.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// var brandUrl = siteLogo.SafeGetValue<string>("brandUrl");
        /// var proceed = siteLogo.SafeGetValue<bool>("shouldWeProceed");
        /// var value = siteLogo.SafeGetValue<int>("quantityItems");
        /// ]]></code>
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the property for which a string value is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Value of the property by type, or false (bool), -1 (numeric types), min value (dates), an empty string, or null (objects)</returns>
        public static T SafeGetValue<T>(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            if (contentNode != null)
            {
                if (contentNode.HasProperty(propertyName) || recurseAncestors)
                {
                    var value = contentNode.GetPropertyValue<T>(propertyName, recurseAncestors);

                    if (typeof(T) == typeof(string))
                    {
                        return (T)(value == null ? (object)string.Empty : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(bool))
                    {
                        return (T)(value == null ? (object)false : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(int) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(long))
                    {
                        return (T)(value == null ? (object)-1 : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)(value == null ? (object)DateTime.MinValue : Convert.ChangeType(value, typeof(T)));
                    }

                    else
                    {
                        return (T)Convert.ChangeType(value, typeof(T));
                    }
                }

                else
                {
                    if (typeof(T) == typeof(string))
                    {
                        return (T)Convert.ChangeType("", typeof(T));
                    }

                    else if (typeof(T) == typeof(bool))
                    {
                        return (T)Convert.ChangeType(false, typeof(T));
                    }

                    else if (typeof(T) == typeof(int) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(long))
                    {
                        return (T)Convert.ChangeType(-1, typeof(T));
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)Convert.ChangeType(DateTime.MinValue, typeof(T));
                    }

                    else
                    {
                        return (T)(object)null;
                    }
                }
            }

            else
            {
                return (T)(object)null;
            }
        }

        /// <summary><![CDATA[
        /// Safely get a property value as string. An empty string is returned when the property does not exist
        /// or if the property returns null.
        /// ]]></summary>
        /// <example>
        /// var brandUrl = siteLogo.SafeGetValue("brandUrl");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the property for which a string value is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Value of the property as a string or an empty string</returns>
        public static string SafeGetValue(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return SafeGetValue<string>(contentNode, propertyName, recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Safely get items from a Multinode Tree Picker or multiple media items stored in a property.
        /// If the property is null an empty IEnumerable is returned to avoid exceptions, and so a simple 
        /// foreach loop can be used without being wrapped if an if/else statement.
        /// ]]></summary>
        /// <example>
        /// var socialLinks = Model.SafeGetPickerItems("heroSocialLinks");
        /// foreach (var socialLink in socialLinks)
        /// {
        /// }
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the property for which multiple media or content items is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>IEnumerable of IPublishedContent</returns>
        public static IEnumerable<IPublishedContent> SafeGetPickerItems(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();

            if (contentNode != null)
            {
                if (contentNode.HasProperty(propertyName) || recurseAncestors)
                {
                    var propertyItems = contentNode.GetPropertyValue<IEnumerable<IPublishedContent>>(propertyName, recurseAncestors);

                    if (propertyItems != null)
                    {
                        return propertyItems;
                    }

                    else
                    {
                        return fallback;
                    }
                }

                else
                {
                    return fallback;
                }
            }

            else
            {
                return fallback;
            }
        }

        /// <summary><![CDATA[
        /// Safely get items from a nested content picker stored in a property. If the property 
        /// is null an empty IEnumerable is returned to avoid exceptions, and so a simple 
        /// foreach loop can be used without being wrapped if an if/else statement.
        /// ]]></summary>
        /// <example>
        /// var socialLinks = Model.SafeGetNestedContentItems("heroSocialLinks");
        /// foreach (var socialLink in socialLinks)
        /// {
        /// }
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the property for which nested content is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>IEnumerable of IPublishedContent</returns>
        public static IEnumerable<IPublishedContent> SafeGetNestedContentItems(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return contentNode.SafeGetPickerItems(propertyName, recurseAncestors);
        }

        /// <summary><![CDATA[
        /// Safely get the get best property value as string. Pass a list of property names in order of preference
        /// from worst to best, and get the best value available. Useful for getting navigation menu text from
        /// various node name-like properties (e.g. name -> title -> menuName).
        /// ]]></summary>
        /// <example>
        /// var menuText = Model.SafeGetBestValueAsString("name", "title", "menuText");
        /// </example>
        /// <returns>The best property value as string, or an empty string if no values are found.</returns>
        /// <param name="nameFallback">Set to true to fall back to the node name itself if no property valies are found</param>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="properties">One or more property names to evaluate (worst to best).</param>
        public static string SafeGetBestValueAsString(this IPublishedContent contentNode, bool nameFallback = false, params string[] properties)
        {
            var result = "";

            if (properties.Length > 0)
            {
                foreach (var property in properties)
                {
                    var propertyValue = SafeGetValue(contentNode, property, false);

                    if (propertyValue != "")
                    {
                        result = propertyValue;
                    }
                }
            }

            if (result == "" && nameFallback)
            {
                result = contentNode.Name;
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Get a single media item from a content node whose Document Type uses a Media Picker 
        /// to store a single media item as a property value, and return auto-generated markup
        /// based on the type of image.
        /// ]]></summary>
        /// <example>
        /// var heroImageMarkup = Model.SafeGetImageMarkup("heroImage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media item property. If an empty string, assumes the contentNode itself is the media item.</param>
        /// <param name="altProperty">The HTML alt property value</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Auto-generated markup for the image. If the media item is null, an empty string is returned.</returns>
        public static string SafeGetImageMarkup(this IPublishedContent contentNode, string propertyName = "", string altProperty = "", bool recurseAncestors = false)
        {
            var markup = "";

            if (contentNode != null)
            {
                var mediaItemUrl = "";

                if (propertyName != "")
                {
                    mediaItemUrl = contentNode.SafeGetMediaPickerItemUrl(propertyName, recurseAncestors);
                }

                else
                {
                    mediaItemUrl = contentNode.Url;
                }

                if (mediaItemUrl.Length > 4)
                {
                    switch (mediaItemUrl.Substring(mediaItemUrl.Length - 4, 4).ToLower())
                    {
                        //case ".svg":
                        //markup = "<object type=\"image/svg+xml\" data=\"" + mediaItemUrl + "\" alt=\"" + altProperty + "\"></object>";
                        //break;
                        default:
                            markup = "<img src=\"" + mediaItemUrl + "\" alt=\"" + altProperty + "\" />";
                            break;
                    }
                }
            }

            return markup;
        }

        /// <summary><![CDATA[
        /// Return a string array of tags from a tags property.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
		/// <param name="propertyName">Name of the content item property.</param>
        /// <returns>String array of tags</returns>
        public static string[] SafeGetTags(this IPublishedContent contentNode, string propertyName = "")
        {
            string[] emptyList = { };
            var contType = contentNode.ContentType;

            if (contentNode.HasProperty(propertyName))
            {
                var prop = contentNode.GetProperty(propertyName);

                if (contType.GetPropertyType(prop.PropertyTypeAlias).PropertyEditorAlias.ToLower() == "umbraco.tags")
                {
                    if (prop.HasValue)
                    {
                        return contentNode.GetPropertyValue<string[]>(propertyName);
                    }

                    else
                    {
                        return emptyList;
                    }
                }

                else
                {
                    return emptyList;
                }
            }

            else
            {
                return emptyList;

            }
        }

        /// <summary><![CDATA[
        /// Determine if a content picker or multi-node tree picker property contains an item with a specific value.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
		/// <param name="propertyName">Name of the content item property.</param>
        /// <param name="subPropertyName">Name of the picker item property to evaluate.</param>
        /// <param name="value">Value to find within the content picker.</param>
        /// <param name="ignoreCase">Ignore case when comparing (default).</param>
        /// <returns>true if the value exists, false if not.</returns>
        public static bool HasTreePickerValue(this IPublishedContent contentNode, string propertyName, string subPropertyName, string value, bool ignoreCase = true)
        {
            bool result = false;

            foreach (var prop in contentNode.SafeGetPickerItems(propertyName))
            {
                if (ignoreCase)
                {
                    if (prop.SafeGetValue(subPropertyName).ToLower() == value.ToLower())
                    {
                        result = true;
                        break;
                    }
                }

                else
                {
                    if (prop.SafeGetValue(subPropertyName) == value)
                    {
                        result = true;
                        break;
                    }
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Determine if a content picker or multi-node tree picker property has an item that contains a specific substring value.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the content item property.</param>
        /// <param name="subPropertyName">Name of the picker item property to evaluate.</param>
        /// <param name="value">Substring value to find within the content picker.</param>
        /// <param name="ignoreCase">Ignore case when comparing (default).</param>
        /// <returns>true if the substring is found, false if not.</returns>
        public static bool ContainsTreePickerValue(this IPublishedContent contentNode, string propertyName, string subPropertyName, string value, bool ignoreCase = true)
        {
            bool result = false;

            foreach (var prop in contentNode.SafeGetPickerItems(propertyName))
            {
                if (prop.SafeGetValue(subPropertyName).IndexOf(value, (ignoreCase ? StringComparison.CurrentCultureIgnoreCase : StringComparison.CurrentCulture)) >= 0)
                {
                    result = true;
                    break;
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Determine if a nested content property contains an item with a specific value.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the content item property.</param>
        /// <param name="subPropertyName">Name of the nested content property to evaluate.</param>
        /// <param name="value">Value to find within the nested content.</param>
        /// <param name="ignoreCase">Ignore case when comparing (default).</param>
        /// <returns>true if the value exists, false if not.</returns>
        public static bool HasNestedContentValue(this IPublishedContent contentNode, string propertyName, string subPropertyName, string value, bool ignoreCase = true)
        {
            return HasTreePickerValue(contentNode, propertyName, subPropertyName, value, ignoreCase);
        }

        /// <summary><![CDATA[
        /// Determine if a nested content property has an item that contains a specific substring value.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the content item property.</param>
        /// <param name="subPropertyName">Name of the nested content property to evaluate.</param>
        /// <param name="value">Substring value to find within the nested content.</param>
        /// <param name="ignoreCase">Ignore case when comparing (default).</param>
        /// <returns>true if the substring is found, false if not.</returns>
        public static bool ContainsNestedContentValue(this IPublishedContent contentNode, string propertyName, string subPropertyName, string value, bool ignoreCase = true)
        {
            return ContainsTreePickerValue(contentNode, propertyName, subPropertyName, value, ignoreCase);
        }

        /// <summary><![CDATA[
        /// Safely get the prevalue of a selected radio list item as a string.
        /// ]]></summary>
        /// <example>
        /// var choice = Model.SafeGetPrevalue("DevOrLive");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the radio list property for which a string prevalue is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Selected prevalue for the property as a string, or an empty string</returns>
        public static string SafeGetPrevalue(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            var result = "";

            if (contentNode.HasValue(propertyName, recurseAncestors))
            {
                var radioId = contentNode.SafeGetValue<int>(propertyName, recurseAncestors);

                if (radioId > -1)
                {
                    result = umbraco.library.GetPreValueAsString(radioId);
                }

                if (result == null)
                {
                    result = "";
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Determine if a selected radio button list item prevalue has a substring.
        /// For example, in a radio button list list where the choices are "Item 1", 
        /// "Item 2", "Item 3", and "Item 2" is selected, the following is true:
        /// ]]></summary>
        /// <example>
        /// bool hasValue = Model.SelectedPrevalueContains("MyRadioList", "2");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the radio button list property for which the selected prevalue is being evaluated</param>
        /// <param name="subString">The substring to search for</param>
        /// <param name="ignoreCase">Ignore case; defaults to true</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>True if the selected item has a prevalue with the given substring (case insensitive)</returns>
        public static bool SelectedPrevalueContains(this IPublishedContent contentNode, string propertyName, string subString, bool ignoreCase = true, bool recurseAncestors = false)
        {
            return (SafeGetPrevalue(contentNode, propertyName).IndexOf(subString, (ignoreCase ? StringComparison.InvariantCultureIgnoreCase : StringComparison.InvariantCulture)) >= 0);
        }

        /// <summary><![CDATA[
        /// Determine if a list of items (like checkbox list) has a selected item with a prevalue 
        /// that contains a (case insensitive) substring. For example, in a checkbox list where the 
        /// choices are "Item 1", "Item 2", "Item 3", and "Item 2" is selected, the following is true:
        /// ]]></summary>
        /// <example>
        /// bool hasValues = Model.SelectedPrevaluesContain("MyCheckboxList", "2");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the checkbox list (or other prevalue source) property for which prevalues are being evaluated</param>
        /// <param name="subString">The substring to search for</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>True if any selected items have a prevalue with the given substring (case insensitive)</returns>
        public static bool SelectedPrevaluesContain(this IPublishedContent contentNode, string propertyName, string subString, bool recurseAncestors = false)
        {
            var items = contentNode.GetPropertyValue<IEnumerable<string>>(propertyName, recurseAncestors);
            var result = items.FirstOrDefault<string>(m => m.Contains(subString));

            return (string.IsNullOrEmpty(result) ? false : true);
        }

		/// <summary><![CDATA[
		/// Generate a responsive image tag from a media picker image property.
		/// ]]></summary>
		/// <returns>HTML5 image tag with sizes and srcset attributes</returns>
		/// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker property.</param>
		/// <param name="breakpointsAndWidths">String array of @ separated image layout widths and CSS min-width breakpoints. 
		/// For example, if the tablet CSS min-width breakpoint is 768px and the image is 50% of the page width, the first 
		/// string array element will be "50vw @ 768px". The last entry should be the default width of the image (e.g. "100vw")</param>
		/// <param name="fallbackWidth">The default width (in pixels) to use for browsers that don't support responsive images (e.g. "500")</param>
		/// <param name="quality">Quality score from 0-100, which affects the appearance and the file size</param>
		/// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false.</param>
		/// <returns>HTML image tag markup with sizes and srcset attributes</returns>
		public static string SafeGetResponsiveImageTag(this IPublishedContent contentNode, string propertyName, string[] breakpointsAndWidths = null, string fallbackWidth= "", int quality = 100, bool recurseAncestors = false)
		{
			var imageUrl = contentNode.SafeGetMediaPickerItemUrl(propertyName, recurseAncestors).RemoveQueryString();
			var alt = contentNode.SafeGetMediaPickerItem("photo", recurseAncestors).SafeGetValue("description");

			if (imageUrl != "")
			{
                if (imageUrl.IsResponsiveImageType())
                {
                    var sourceImageWidths = new string[] { "50", "150", "250", "320", "480", "640", "800", "1024", "1280", "1440", "1920", "2048", "2560", "3172" };

				    if (breakpointsAndWidths != null)
				    {
					    if (breakpointsAndWidths.Length > 0)
					    {
						    var srcset = "";
						    var sizes = "";

						    foreach (var size in sourceImageWidths)
						    {
							    if (srcset != "")
							    {
								    srcset += ", ";
							    }

							    srcset += imageUrl + "?width=" + size + "&quality=" + quality + " " + size + "w";
						    }

						    foreach (var doublet in breakpointsAndWidths)
						    {
							    var pair = doublet.Replace(" ", "");

								if (pair.IndexOf("@") > 1)
								{
									string[] duo = pair.Split(new char[] { '@' }, StringSplitOptions.RemoveEmptyEntries);

									if (duo.Length == 2)
									{
										if (sizes != "")
										{
											sizes += ", ";
										}

										sizes += "(min-width: " + duo[1] + ") " + duo[0];
									}
								}

                                else
                                {
                                    // If the last entry is just a value, use as the default
                                    if (doublet == breakpointsAndWidths.LastOrDefault())
                                    {
                                        if (sizes != "")
                                        {
                                            sizes += ", ";
                                        }

                                        sizes += doublet;
                                    }
                                }
                            }

						    return "<img sizes=\"" + sizes + "\" srcset=\"" + srcset + "\" alt=\"" + alt + "\" src=\"" + imageUrl + "?width=" + fallbackWidth + "&quality=" + quality + "\" />";
					    }

					    else
					    {
						    return "";
					    }
				    }

				    else
				    {
					    return "";
				    }
                }

                else
                {
                    if (imageUrl.IsWebImage())
                    {
                        return contentNode.SafeGetImageMarkup(propertyName, alt, recurseAncestors);
                    }

                    else
                    {
                        return "";
                    }
                }
            }

			else
			{
				return "";
			}
		}

        #endregion

        #region Enumerable IPublishedContent retrieval methods

        /// <summary><![CDATA[
        /// Get all IPublishedContent nodes by their document type aliases.
        /// Searches from the current node's descendants, returning all matches.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>All matching IPublishedContent nodes.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByDocTypeAlias(this IPublishedContent contentNode, string documentTypeAlias)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();

            var content = contentNode
                .DescendantsOrSelf()
                .Where(x => x.DocumentTypeAlias == documentTypeAlias);

            if (content == null)
            {
                return fallback;
            }

            else
            {
                return content.ToList();
            }
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its node name.
        /// Searches from the current node's descendants, stopping
        /// at the first match.
        /// ]]></summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <param name="contentNode">Parent content node to search</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByName(this IPublishedContent contentNode, string nodeName)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            var content = contentNode
                .DescendantsOrSelf()
                .Where(x => x.Name == nodeName);

            if (content == null)
            {
                return fallback;
            }

            else
            {
                return content.ToList();
            }
        }

        /// <summary><![CDATA[
        /// Get all IPublishedContent nodes by node name.
        /// Searches from the site root down through descendants.
        /// ]]></summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <returns>All matching IPublishedContent nodes.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByName(string nodeName)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentAtRoot()
                .SelectMany(root => root.DescendantsOrSelf())
                .Where(x => x.Name == nodeName);
        }

        /// <summary><![CDATA[
        /// Get all IPublishedContent nodes by their document type aliases.
        /// Searches from the site root down through descendants, returning
        /// all matches.
        /// ]]></summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>All matching IPublishedContent nodes.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByDocTypeAlias(string documentTypeAlias)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            var content = fallback;

			content = umbracoHelper.TypedContentAtRoot()
				.SelectMany(r => r.DescendantsOrSelf())
				.Where(x => x.DocumentTypeAlias == documentTypeAlias);

            return content;
        }

        /// <summary><![CDATA[
        /// Get all matching IPublishedContent nodes using XPath.
        /// ]]></summary>
        /// <param name="xpath">Content node XPath</param>
        /// <param name="vars">Optional XPath variables</param>
        /// <returns>All matching IPublishedContent items.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByXPath(string xpath, XPathVariable[] vars = null)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            var content = umbracoHelper.TypedContentAtXPath(xpath, vars);

            if (content == null)
            {
                return fallback;
            }

            else
            {
                return content.ToList();
            }
        }

        #endregion

        #region Single IPublishedContent retrieval methods

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its document type alias.
        /// Searches the current node's descendants, stopping at the first match.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByDocTypeAlias(this IPublishedContent contentNode, string documentTypeAlias)
        {
            return GetAllContentByDocTypeAlias(contentNode, documentTypeAlias).FirstOrDefault();
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its node name.
        /// Searches from the current node's descendants, stopping
        /// at the first match.
        /// ]]></summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <param name="contentNode">Parent content node to search</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByName(this IPublishedContent contentNode, string nodeName)
        {
            return GetAllContentByName(contentNode, nodeName)
                .FirstOrDefault();
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its Id.
        /// ]]></summary>
        /// <param name="Id">Content node Id</param>
        /// <returns>Single matching IPublishedContent item.</returns>
        public static IPublishedContent GetContentById(int Id)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContent(Id);
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its Id.
        /// ]]></summary>
        /// <param name="Id">Content node Id</param>
        /// <returns>Single matching IPublishedContent item.</returns>
        public static IPublishedContent GetContentById(string Id)
        {
            return GetContentById(int.Parse(Id));
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node using XPath.
        /// ]]></summary>
        /// <param name="xpath">Content node XPath</param>
        /// <param name="vars">Optional XPath variables</param>
        /// <returns>Single matching IPublishedContent item.</returns>
        public static IPublishedContent GetContentByXPath(string xpath, XPathVariable[] vars = null)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentSingleAtXPath(xpath, vars);
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its Guid.
        /// ]]></summary>
        /// <param name="guid">Content node Guid</param>
        /// <returns>Single matching IPublishedContent item.</returns>
        public static IPublishedContent GetContentByGuid(string guid)
        {
            return GetContentByGuid(new Guid(guid));
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its Guid.
        /// ]]></summary>
        /// <param name="guid">Content node Guid</param>
        /// <returns>Single matching IPublishedContent item.</returns>
        public static IPublishedContent GetContentByGuid(Guid guid)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContent(guid);
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node in the site root by its document type alias.
        /// ]]></summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "homePage")</param>
        /// <returns>Single matching IPublishedContent root node.</returns>
        public static IPublishedContent GetRootContentByDocTypeAlias(string documentTypeAlias)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentAtRoot()
                .Where(x => x.DocumentTypeAlias == documentTypeAlias)
                .FirstOrDefault();
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its document type alias.
        /// Searches from the site root down through descendants, stopping
        /// at the first match.
        /// ]]></summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByDocTypeAlias(string documentTypeAlias)
        {
            return GetAllContentByDocTypeAlias(documentTypeAlias)
                .FirstOrDefault();
        }

        /// <summary><![CDATA[
        /// Get a single IPublishedContent node by its node name.
        /// Searches from the site root down through descendants, stopping
        /// at the first match.
        /// ]]></summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByName(string nodeName)
        {
            return GetAllContentByName(nodeName)
                .FirstOrDefault();
        }

        #endregion

        #region Node transformations

        /// <summary><![CDATA[
        /// Convert the node name to a javascript-compatible selector.
        /// ]]></summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <returns>Javascript-compatible selector.</returns>
        public static string GetJavascriptSelector(this IPublishedContent contentNode)
        {
            var result = "";

            if (contentNode != null)
            {
                result = Regex.Replace(contentNode.Name.ToLower().Replace(" ", "-"), "[^a-z0-9_-]", "");
            }

            return result;
        }

        #endregion
    }
}
