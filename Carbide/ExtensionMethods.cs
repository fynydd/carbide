using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Umbraco.Core;
using static Umbraco.Core.Constants;
using Umbraco.Core.Events;
using Umbraco.Core.Models;
using Umbraco.Core.Media;
using Umbraco.Core.Services;
using Umbraco.Web;
using Argentini.Halide;

namespace Argentini.Carbide
{
    public static class ExtensionMethods
    {
        #region Private properties and methods

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

        #region Public methods

        /// <summary>
        /// UDIs are required for setting picker content values, etc. in ContentService, and
        /// many other places, since numeric content Ids are being phased out. This method gets the
        /// UDI for a single IPublishedContent object.
        /// </summary>
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

        /// <summary>
        /// Get a single content picker item from a content node property.
        /// </summary>
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

        /// <summary>
        /// Get a single media picker item from a content node property.
        /// </summary>
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

        /// <summary>
        /// Get a single media picker item from a content node property, and return its URL.
        /// </summary>
        /// <example>
        /// var heroBackgroundImageUrl = Model.SafeGetMediaPickerItemUrl("heroBackgroundImage");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the media picker item property</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>URL to the picker item. If the picker item is null, an empty string is returned.</returns>
        public static string SafeGetMediaPickerItemUrl(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            return _ReturnContentItemUrl(contentNode, propertyName, IPublishedContentType.Media, recurseAncestors);
        }

        /// <summary>
        /// Get a single content picker item from a content node property, and return its URL.
        /// </summary>
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

        /// <summary>
        /// Get a single media item from a content node whose Document Type uses a Media Picker 
        /// to store a single media item as a property value, and return markup to display the item
		/// based on tags passed to the method.
        /// </summary>
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

        /// <summary>
        /// Safely get a property value by type. For supported types min values are returned
        /// (e.g. <int> returns 0, <bool> returns false, etc.) when the property does not exist
        /// or if the property returns null. Null is only returned if a type is not supported.
        /// </summary>
        /// <example>
        /// var brandUrl = siteLogo.SafeGetValue<string>("brandUrl");
        /// var proceed = siteLogo.SafeGetValue<bool>("shouldWeProceed");
        /// var value = siteLogo.SafeGetValue<int>("quantityItems");
        /// </example>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="propertyName">Name of the property for which a string value is desired</param>
        /// <param name="recurseAncestors">Recurse ancestors until a property value is present; defaults to false</param>
        /// <returns>Value of the property by type, or a min value, or an empty string, or null</returns>
        public static T SafeGetValue<T>(this IPublishedContent contentNode, string propertyName, bool recurseAncestors = false)
        {
            if (contentNode != null)
            {
                if (contentNode.HasProperty(propertyName) || recurseAncestors)
                {
                    var value = contentNode.GetPropertyValue<T>(propertyName, recurseAncestors);

                    if (typeof(T) == typeof(string))
                    {
                        return (T)(value == null ? (object)string.Empty : value);
                    }

                    else if (typeof(T) == typeof(bool))
                    {
                        return (T)(value == null ? (object)false : value);
                    }

                    else if (typeof(T) == typeof(int) || typeof(T) == typeof(uint) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(ushort) || typeof(T) == typeof(long) || typeof(T) == typeof(ulong))
                    {
                        return (T)(value == null ? (object)0 : value);
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)(value == null ? (object)DateTime.MinValue : value);
                    }

                    else
                    {
                        return (T)value;
                    }
                }

                else
                {
                    if (typeof(T) == typeof(string))
                    {
                        return (T)(object)string.Empty;
                    }

                    else if (typeof(T) == typeof(bool))
                    {
                        return (T)(object)false;
                    }

                    else if (typeof(T) == typeof(int) || typeof(T) == typeof(uint) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(ushort) || typeof(T) == typeof(long) || typeof(T) == typeof(ulong))
                    {
                        return (T)(object)0;
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)(object)DateTime.MinValue;
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

        /// <summary>
        /// Safely get a property value as string. An empty string is returned when the property does not exist
        /// or if the property returns null.
        /// </summary>
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

        /// <summary>
        /// Safely get items from a Multinode Tree Picker or multiple media items stored in a property.
        /// If the property is null an empty IEnumerable is returned to avoid exceptions.
        /// </summary>
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

        /// <summary>
        /// Safely get items from a nested content picker stored in a property.
        /// If the property is null an empty IEnumerable is returned to avoid exceptions.
        /// </summary>
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

        /// <summary>
        /// Safely get the get best property value as string. Pass a list of property names in order of preference
        /// from worst to best, and get the best value available. Useful for getting navigation menu text from
        /// various node name-like properties (e.g. name -> title -> menuName).
        /// </summary>
        /// <example>
        /// var menuText = Model.SafeGetBestValueAsString("name", "title", "menuText");
        /// </example>
        /// <returns>The best property value as string, or an empty string if no values are found.</returns>
        /// <param name="nameFallback">Set to true to fall back to the node name itself if no property valies are found</param>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="properties">One or more property names to evaluate.</param>
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

        /// <summary>
        /// Get a single media item from a content node whose Document Type uses a Media Picker 
        /// to store a single media item as a property value, and return auto-generated markup
        /// based on the type of image.
        /// </summary>
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

        /// <summary>
        /// Return a string array of tags from a tags property.
        /// </summary>
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

        /// <summary>
        /// Determine if a content picker or multi-node tree picker property contains an item with a specific value.
        /// </summary>
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

        /// <summary>
        /// Determine if a content picker or multi-node tree picker property has an item that contains a specific substring value.
        /// </summary>
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

        /// <summary>
        /// Determine if a nested content property contains an item with a specific value.
        /// </summary>
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

        /// <summary>
        /// Determine if a nested content property has an item that contains a specific substring value.
        /// </summary>
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

        #endregion

        #region Content scouring methods

        /// <summary>
        /// Get a single IPublishedContent node by its document type alias.
        /// Searches the current node's descendants, stopping at the first match.
        /// </summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByDocTypeAlias(this IPublishedContent contentNode, string documentTypeAlias)
        {
            return contentNode
                .Descendants()
                .Where(x => x.DocumentTypeAlias == documentTypeAlias)
                .FirstOrDefault();
        }

        /// <summary>
        /// Get all IPublishedContent nodes by their document type aliases.
        /// Searches from the current node's descendants, returning all matches.
        /// </summary>
        /// <param name="contentNode">The current content node as an IPublishedContent object</param>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>All matching IPublishedContent nodes.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByDocTypeAlias(this IPublishedContent contentNode, string documentTypeAlias)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();

            var content = contentNode
                .Descendants()
                .Where(x => x.DocumentTypeAlias == documentTypeAlias);

            if (content != null)
            {
                return content;
            }

            else
            {
                return fallback;
            }
        }

        /// <summary>
        /// Get a single IPublishedContent node by its node name.
        /// Searches from the current node's descendants, stopping
        /// at the first match.
        /// </summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByName(this IPublishedContent contentNode, string nodeName)
        {
            return contentNode
                .Descendants()
                .Where(x => x.Name == nodeName)
                .FirstOrDefault();
        }

        #endregion
    }
}
