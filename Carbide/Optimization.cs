using System;
using System.Diagnostics;
using System.IO;
using System.Web;
using System.Web.Mvc;

using Umbraco.Web;
using Yahoo.Yui.Compressor;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Razor class contains methods and properties for controlling
    /// client-side objects like included assets, dev and staging banners, 
    /// and preventing search indexing.
    /// ]]></summary>
    public static class Optimization
    {
        /// <summary><![CDATA[
        /// Include a URL asset into a web page using relative paths. Optionally add dynamic cachebuster and minify JS and CSS files.
        /// ]]></summary>
        /// <example><![CDATA[
        /// <script src="@Url.Content("~/scripts/mvcvalidationextensions.unobtrusive.js", addCacheBuster: true, minify: (AppStateHelpers.IsDebugging() == false))"></script>
        /// ]]></example>
        /// <param name="url">UrlHelper object</param>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="contentPath">Relative path to the asset</param>
        /// <param name="addCacheBuster">If true, appends a cachebuster to the generated URL from the file modification date</param>
        /// <param name="minify">If true minifies CSS and JS assets as new files and points the URL to them instead</param>
        /// <param name="fallback">If cachebuster fails, use this fallback value</param>
        public static string Content(this UrlHelper url, UmbracoContext umbCtx, string contentPath, bool addCacheBuster = false, bool minify = false, string fallback = "")
        {
            var queryString = contentPath.QueryString();
            var filePath = contentPath.RemoveQueryString();

            if (minify && !filePath.StartsWith("_carbide.generated."))
            {
                if (filePath.EndsWith(".js") || filePath.EndsWith(".css"))
                {
                    bool proceed = true;
                    var newContentpath = "";

                    if (filePath.Contains("/"))
                    {
                        newContentpath = filePath.Substring(0, filePath.LastIndexOf("/") + 1) + "_carbide.generated." + filePath.Substring(filePath.LastIndexOf("/") + 1);
                    }

                    else
                    {
                        newContentpath = "_carbide.generated." + filePath;
                    }

                    if (Storage.FileExists(umbCtx, filePath))
                    {
                        FileInfo fileInfo = new FileInfo(umbCtx.MapPath(filePath));
                        DateTime lastModified = fileInfo.LastWriteTime;
                        var item = fileInfo.Length + "|" + lastModified.DateFormat(Carbide.Constants.DateFormats.Utc);

                        if (umbCtx.KeyExists(Storage.ConvertFilePathToKey(filePath)))
                        {
                            if (umbCtx.HttpContext.Application[Storage.ConvertFilePathToKey(filePath)].ToString() == item)
                            {
                                if (umbCtx.FileExists(newContentpath))
                                {
                                    filePath = newContentpath;
                                    proceed = false;
                                }
                            }

                            else
                            {
                                if (umbCtx.FileExists(filePath) == false)
                                {
                                    filePath = newContentpath;
                                    proceed = false;
                                }
                            }
                        }

                        else
                        {
                            if (umbCtx.FileExists(filePath) == false)
                            {
                                proceed = false;
                            }
                        }

                        if (proceed)
                        {
                            if (umbCtx.FileExists(newContentpath))
                            {
                                umbCtx.DeleteFiles(newContentpath);
                            }

                            var minified = "";

                            if (filePath.EndsWith(".js"))
                            {
                                var jsc = new JavaScriptCompressor();
                                minified = jsc.Compress(umbCtx.ReadFile(filePath));
                            }

                            if (filePath.EndsWith(".css"))
                            {
                                var cssc = new CssCompressor();
                                minified = cssc.Compress(umbCtx.ReadFile(filePath));
                            }

                            try
                            {
                                umbCtx.WriteFile(newContentpath, minified);

                                fileInfo = new FileInfo(umbCtx.MapPath(filePath));
                                lastModified = fileInfo.LastWriteTime;
                                item = fileInfo.Length + "|" + lastModified.DateFormat(Carbide.Constants.DateFormats.Utc);

                                umbCtx.HttpContext.Application[Storage.ConvertFilePathToKey(filePath)] = item;

                                filePath = newContentpath;

                                Debug.WriteLine("MINIFIED TO " + newContentpath);
                            }

                            catch (Exception e)
                            {
                                Debug.WriteLine("COULD NOT MINIFY " + filePath + "; " + e.Message);
                            }
                        }

                        else
                        {
                            Debug.WriteLine("SKIPPED MINIFICATION FOR " + filePath);
                        }
                    }

                    else
                    {
                        Debug.WriteLine("SKIPPED MINIFICATION; " + filePath + " DOES NOT EXIST");
                    }
                }
            }

            if (addCacheBuster)
            {
                queryString += (queryString.Contains("?") ? "&" : "?") + "_cachebuster=" + umbCtx.MakeCacheBuster(filePath, fallback);
            }

            return url.Content(filePath + queryString);
        }

        /// <summary><![CDATA[
        /// Output a meta tag to prevent page indexing in current context.
        /// ]]></summary>
        /// <example>
        /// Use in a Razor page.
        /// <code><![CDATA[
        /// @Html.Raw(Razor.PreventSearchIndexingWhenDebug())
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        public static string PreventSearchIndexingWhenDebug(this UmbracoContext umbCtx)
        {
            if (umbCtx.IsDebugging())
            {
                return Metadata.DoNotIndex;
            }

            else
            {
                return "";
            }
        }

        /// <summary><![CDATA[
        /// Return a meta tag to prevent browser page caching in current context.
        /// Use in a Razor page.
        /// ]]></summary>
        /// <example>
        /// Use in a Razor page.
        /// <code><![CDATA[
        /// @Html.Raw(Razor.PreventBrowserCachingWhenDebug())
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        public static string PreventBrowserCachingWhenDebug(this UmbracoContext umbCtx)
        {
            if (umbCtx.IsDebugging())
            {
                return Metadata.DoNotCache;
            }

            else
            {
                return "";
            }
        }
    }

    /// <summary><![CDATA[
    /// Replaces {HTTP_HOST} in your robots.txt file with your current domain and serves it dynamically
    /// (original file is not modified). It will serve a global disallow if the web app is in debug mode.
    /// If no robots.txt file is present, a global allow to all user agents is served.
    /// 
    /// Add the following to the web.config to enable this feature:
    /// 
    /// <system.webServer>
    ///     <handlers>
    ///         <add name="RobotsTxt" path="/robots.txt" verb="*" type="Fynydd.Carbide.RobotsTxt" resourceType="Unspecified" preCondition="integratedMode" />
    /// ]]></summary>
    public class RobotsTxt : IHttpHandler
    {
        /// <summary><![CDATA[
        /// Handler is reusable
        /// ]]></summary>
        public bool IsReusable
        {
            get { return true; }
        }

        /// <summary><![CDATA[
        /// Process requests for the robots.txt file
        /// ]]></summary>
        /// <param name="context"></param>
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            var path = context.Server.MapPath(VirtualPathUtility.ToAbsolute("~/robots.txt"));
            var text = @"User-agent: *
Disallow:
";

            if (context.IsDebuggingEnabled)
            {
                text = @"User-agent: *
Disallow: /
";
            }

            else
            {
                if (File.Exists(path))
                {
                    using (var streamReader = File.OpenText(path))
                    {
                        text = streamReader.ReadToEnd();
                        streamReader.Close();
                    }

                    text = text.Replace("{HTTP_HOST}", context.Request.ServerVariables["HTTP_HOST"]);
                }
            }

            context.Response.Write(text);
        }
    }
}
