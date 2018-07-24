using System;
using System.Diagnostics;
using System.Web;
using System.Web.Mvc;

using Yahoo.Yui.Compressor;

namespace Fynydd.Carbide
{
    /// <summary>
    /// The Client class contains methods and properties for controlling
    /// client-side objects like cookies, javascript, etc.
    /// </summary>
    public static class Client
    {
        /// <summary>
        /// Include a URL asset into a web page using relative paths. Optionally add dynamic cachebuster and minify JS and CSS files.
        /// </summary>
        /// <param name="url">UrlHelper object</param>
        /// <param name="contentPath">Relative path to the asset</param>
        /// <param name="addCacheBuster">If true, appends a cachebuster to the generated URL from the file modification date</param>
        /// <param name="minify">If true minifies CSS and JS assets as new files and points the URL to them instead</param>
        /// <param name="fallback">If cachebuster fails, use this fallback value</param>
        /// <returns></returns>
        public static string Content(this UrlHelper url, string contentPath, bool addCacheBuster = false, bool minify = false, string fallback = "")
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

                    if (HttpContext.Current.Application.KeyExists(Storage.ConvertFilePathToKey(filePath) + "_MINIFY"))
                    {
                        if (Storage.FileExists(filePath))
                        {
                            if (HttpContext.Current.Application[Storage.ConvertFilePathToKey(filePath) + "_MINIFY"].ToString() == Storage.MakeCacheBuster(filePath))
                            {
                                filePath = newContentpath;
                                proceed = false;
                            }
                        }
                    }

                    if (proceed)
                    {
                        if (Storage.FileExists(newContentpath))
                        {
                            Storage.DeleteFiles(newContentpath);
                        }

                        var minified = "";

                        if (filePath.EndsWith(".js"))
                        {
                            var jsc = new JavaScriptCompressor();
                            minified = jsc.Compress(Storage.ReadFile(filePath));
                        }

                        if (filePath.EndsWith(".css"))
                        {
                            var cssc = new CssCompressor();
                            minified = cssc.Compress(Storage.ReadFile(filePath));
                        }

                        Storage.WriteFile(newContentpath, minified);
                        HttpContext.Current.Application[Storage.ConvertFilePathToKey(filePath) + "_MINIFY"] = Storage.MakeCacheBuster(filePath);

                        filePath = newContentpath;

                        Debug.WriteLine("MINIFIED TO " + filePath);
                    }

                    else
                    {
                        Debug.WriteLine("SKIPPED MINIFICATION FOR " + filePath);
                    }
                }
            }

            if (addCacheBuster)
            {
                queryString += (queryString.Contains("?") ? "&" : "?") + "_cachebuster=" + Storage.MakeCacheBuster(filePath, fallback);
            }

            return url.Content(filePath + queryString);
        }

        /// <summary>
        /// Determines if a cookie exists.
        /// </summary>
        /// <example>
        /// <code>
        /// bool cookieExists = Client.CookieExists(Request, "Score");
        /// </code>
        /// </example>
        /// <param name="request">HttpRequest object.</param>
        /// <param name="cookieName">Name of cookie for which to verify its existence.</param>
        /// <returns>True or False</returns>
        public static bool CookieExists(System.Web.HttpRequest request, string cookieName)
        {
            if (request.Cookies[cookieName] != null)
            {
                return true;
            }

            else
            {
                return false;
            }
        }

        /// <summary>
        /// Determines if a cookie exists.
        /// </summary>
        /// <example>
        /// <code>
        /// bool cookieExists = Client.CookieExists("Score");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of cookie for which to verify its existence.</param>
        /// <returns>True or False</returns>
        public static bool CookieExists(string cookieName)
        {
            if (HttpContext.Current.Request.Cookies[cookieName] != null)
            {
                return true;
            }

            else
            {
                return false;
            }
        }

        /// <summary>
        /// Returns a specified cookie from a specified request object.
        /// </summary>
        /// <example>
        /// <code>
        /// string cookieVal = Client.GetCookie(Request, "Score");
        /// </code>
        /// </example>
        /// <param name="request">HttpRequest object.</param>
        /// <param name="cookieName">Name of cookie to retrieve.</param>
        /// <returns>A cookie value.</returns>
        public static string GetCookie(System.Web.HttpRequest request, string cookieName)
        {
            if (request.Cookies[cookieName] != null)
            {
                return request.Cookies[cookieName].Value.ToString();
            }

            else
            {
                return (string.Empty);
            }
        }

        /// <summary>
        /// Returns a specified cookie from the current request object.
        /// </summary>
        /// <example>
        /// <code>
        /// string cookieVal = Client.GetCookie("Score");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of cookie to retrieve.</param>
        /// <returns>A cookie value.</returns>
        public static string GetCookie(string cookieName)
        {
            return GetCookie(HttpContext.Current.Request, cookieName);
        }

        /// <summary>
        /// Create a cookie on the client web browser.
        /// </summary>
        /// <example>
        /// <code>
        /// Client.SetCookie("Score", "15", "", 7);
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to create.</param>
        /// <param name="cookieValue">Cookie string value.</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "" for the root domain).</param>
        /// <param name="days">Number of days until expiration.</param>
        /// <returns>Nothing.</returns>
        public static void SetCookie(string cookieName, string cookieValue, string path, int days)
        {
            HttpContext.Current.Response.Cookies[cookieName].Value = cookieValue;
            HttpContext.Current.Response.Cookies[cookieName].Expires = DateTime.Now.AddDays(days);

            if (!String.IsNullOrEmpty(path))
            {
                HttpContext.Current.Response.Cookies[cookieName].Path = path;
            }
        }

        /// <summary>
        /// Create a cookie on the client web browser.
        /// </summary>
        /// <example>
        /// <code>
        /// Client.SetCookie("Score", "15", "", 7, ".mydomain.com");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to create.</param>
        /// <param name="cookieValue">Cookie string value.</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "" for the root domain).</param>
        /// <param name="days">Number of days until expiration.</param>
        /// <param name="domain">Domain for this cookie (e.g. use ".mydomain.com" format to save cookie for all subdomains)</param>
        /// <returns>Nothing.</returns>
        public static void SetCookie(string cookieName, string cookieValue, string path, int days, string domain)
        {
            HttpContext.Current.Response.Cookies[cookieName].Value = cookieValue;
            HttpContext.Current.Response.Cookies[cookieName].Expires = DateTime.Now.AddDays(days);
            HttpContext.Current.Response.Cookies[cookieName].Domain = domain;

            if (!String.IsNullOrEmpty(path))
            {
                HttpContext.Current.Response.Cookies[cookieName].Path = path;
            }
        }

        /// <summary>
        /// Remove a cookie from the client web browser.
        /// </summary>
        /// <example>
        /// <code>
        /// Client.ClearCookie("Score", "/", "mysite.com");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to remove.</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "/" for the root web site).</param>
        /// <param name="domain">Domain which owns the cookie (e.g. ".mydomain.com") or "" for the current domain.</param>
        /// <returns>Nothing.</returns>
        public static void RemoveCookie(string cookieName, string path, string domain)
        {
            HttpContext.Current.Response.Cookies[cookieName].Value = "";
            HttpContext.Current.Response.Cookies[cookieName].Path = "/";

            if (!String.IsNullOrEmpty(path))
            {
                HttpContext.Current.Response.Cookies[cookieName].Path = path;
            }

            if (!String.IsNullOrEmpty(domain))
            {
                HttpContext.Current.Response.Cookies[cookieName].Domain = domain;
            }

            HttpContext.Current.Response.Cookies[cookieName].Expires = DateTime.Now;
        }

        /// <summary>
        /// Remove a cookie from the client web browser.
        /// </summary>
        /// <example>
        /// <code>
        /// Client.ClearCookie("Score", "/");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to remove.</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "/" for the root web site).</param>
        /// <returns>Nothing.</returns>
        public static void RemoveCookie(string cookieName, string path)
        {
            RemoveCookie(cookieName, path, "");
        }

        /// <summary>
        /// Remove a cookie from the client web browser.
        /// </summary>
        /// <example>
        /// <code>
        /// Client.ClearCookie("Score");
        /// </code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to remove.</param>
        /// <returns>Nothing.</returns>
        public static void RemoveCookie(string cookieName)
        {
            RemoveCookie(cookieName, "/", "");
        }
    }
}
