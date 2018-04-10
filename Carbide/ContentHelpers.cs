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

namespace Argentini.Carbide
{
    /// <summary>
    /// The ContentHelpers class has static methods and properties for 
    /// retrieving and managing content.
    /// </summary>
    /// <example>
    /// For example, you can make calls like this:
    /// <code>
    /// <![CDATA[
    /// var tweets = ContentHelpers.GetRootContentByDocTypeAlias("blogRoot");
    /// ]]>
    /// </code>
    /// </example>
    public static class ContentHelpers
    {
        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// A string with the version number of the class.
        /// </value>
        public static String Version
        {
            get
            {
                return "2018.04.09A";
            }
        }

        #endregion

        #region Content scouring methods

        /// <summary>
        /// Get a single IPublishedContent node in the site root by its document type alias.
        /// </summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "homePage")</param>
        /// <returns>Single matching IPublishedContent root node.</returns>
        public static IPublishedContent GetRootContentByDocTypeAlias(string documentTypeAlias)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentAtRoot()
                .Where(x => x.DocumentTypeAlias == documentTypeAlias)
                .FirstOrDefault();
        }

        /// <summary>
        /// Get a single IPublishedContent node by its document type alias.
        /// Searches from the site root down through descendants, stopping
        /// at the first match.
        /// </summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByDocTypeAlias(string documentTypeAlias)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentAtRoot()
                .SelectMany(root => root.Descendants())
                .Where(x => x.DocumentTypeAlias == documentTypeAlias)
                .FirstOrDefault();
        }

        /// <summary>
        /// Get all IPublishedContent nodes by their document type aliases.
        /// Searches from the site root down through descendants, returning
        /// all matches.
        /// </summary>
        /// <param name="documentTypeAlias">Document type alias (e.g. "blogArticle")</param>
        /// <returns>All matching IPublishedContent nodes.</returns>
        public static IEnumerable<IPublishedContent> GetAllContentByDocTypeAlias(string documentTypeAlias)
        {
            IEnumerable<IPublishedContent> fallback = Enumerable.Empty<IPublishedContent>();
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            var content = umbracoHelper.TypedContentAtRoot()
                .SelectMany(root => root.Descendants())
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
        /// Searches from the site root down through descendants, stopping
        /// at the first match.
        /// </summary>
        /// <param name="nodeName">Node name (e.g. "Home Page")</param>
        /// <returns>Single matching IPublishedContent node.</returns>
        public static IPublishedContent GetContentByName(string nodeName)
        {
            var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());

            return umbracoHelper.TypedContentAtRoot()
                .SelectMany(root => root.Descendants())
                .Where(x => x.Name == nodeName)
                .FirstOrDefault();
        }

        #endregion

        #region Content rendering methods

        /// <summary>
        /// Convert a YouTube URL or video code into a properly formed YouTube URL.
        /// </summary>
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

        /// <summary>
        /// Create a properly formatted YouTube video markeup block.
        /// </summary>
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

        #endregion
    }
}
