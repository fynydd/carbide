using System;
using System.Diagnostics;
using System.IO;
using System.Web;
using System.Web.Mvc;

using Yahoo.Yui.Compressor;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Client class contains methods and properties for controlling
    /// client-side objects like cookies, javascript, etc.
    /// ]]></summary>
    public static class ClientHelpers
    {
        /// <summary><![CDATA[
        /// Include a URL asset into a web page using relative paths. Optionally add dynamic cachebuster and minify JS and CSS files.
        /// ]]></summary>
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

            try
            {
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

					    FileInfo fileInfo = new FileInfo(StorageHelpers.MapPath(filePath));
					    DateTime lastModified = fileInfo.LastWriteTime;
					    var item = fileInfo.Length + "|" + lastModified.DateFormat(Carbide.Constants.DateFormats.Utc);

					    if (HttpContext.Current.Application.KeyExists(StorageHelpers.ConvertFilePathToKey(filePath)))
                        {
						    if (HttpContext.Current.Application[StorageHelpers.ConvertFilePathToKey(filePath)].ToString() == item)
						    {
							    if (StorageHelpers.FileExists(newContentpath))
							    {
								    filePath = newContentpath;
								    proceed = false;
							    }
						    }

						    else
						    {
							    if (StorageHelpers.FileExists(filePath) == false)
							    {
								    filePath = newContentpath;
								    proceed = false;
							    }
						    }
                        }

					    else
					    {
						    if (StorageHelpers.FileExists(filePath) == false)
						    {
							    proceed = false;
						    }
					    }

					    if (proceed)
                        {
                            if (StorageHelpers.FileExists(newContentpath))
                            {
                                StorageHelpers.DeleteFiles(newContentpath);
                            }

                            var minified = "";

                            if (filePath.EndsWith(".js"))
                            {
                                var jsc = new JavaScriptCompressor();
                                minified = jsc.Compress(StorageHelpers.ReadFile(filePath));
                            }

                            if (filePath.EndsWith(".css"))
                            {
                                var cssc = new CssCompressor();
                                minified = cssc.Compress(StorageHelpers.ReadFile(filePath));
                            }

                            StorageHelpers.WriteFile(newContentpath, minified);

                            Debug.WriteLine("MINIFIED TO " + newContentpath);

						    fileInfo = new FileInfo(StorageHelpers.MapPath(filePath));
						    lastModified = fileInfo.LastWriteTime;
						    item = fileInfo.Length + "|" + lastModified.DateFormat(Carbide.Constants.DateFormats.Utc);

						    HttpContext.Current.Application[StorageHelpers.ConvertFilePathToKey(filePath)] = item;

						    filePath = newContentpath;
					    }

					    else
                        {
                            Debug.WriteLine("SKIPPED MINIFICATION FOR " + filePath);
                        }
                    }
                }

                if (addCacheBuster)
                {
                    queryString += (queryString.Contains("?") ? "&" : "?") + "_cachebuster=" + StorageHelpers.MakeCacheBuster(filePath, fallback);
                }
            }

            catch (Exception e)
            {
                Debug.WriteLine(e);
            }

            return url.Content(filePath + queryString);
        }

        /// <summary><![CDATA[
        /// Determines if a cookie exists.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool cookieExists = ClientHelpers.CookieExists(Request, "Score");
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Determines if a cookie exists.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool cookieExists = ClientHelpers.CookieExists("Score");
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Returns a specified cookie from a specified request object.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string cookieVal = ClientHelpers.GetCookie(Request, "Score");
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Returns a specified cookie from the current request object.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string cookieVal = ClientHelpers.GetCookie("Score");
        /// ]]></code>
        /// </example>
        /// <param name="cookieName">Name of cookie to retrieve.</param>
        /// <returns>A cookie value.</returns>
        public static string GetCookie(string cookieName)
        {
            return GetCookie(HttpContext.Current.Request, cookieName);
        }

        /// <summary><![CDATA[
        /// Create a cookie on the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ClientHelpers.SetCookie("Score", "15", "", 7);
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Create a cookie on the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ClientHelpers.SetCookie("Score", "15", "", 7, ".mydomain.com");
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Remove a cookie from the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ClientHelpers.ClearCookie("Score", "/", "mysite.com");
        /// ]]></code>
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

        /// <summary><![CDATA[
        /// Remove a cookie from the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ClientHelpers.ClearCookie("Score", "/");
        /// ]]></code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to remove.</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "/" for the root web site).</param>
        /// <returns>Nothing.</returns>
        public static void RemoveCookie(string cookieName, string path)
        {
            RemoveCookie(cookieName, path, "");
        }

        /// <summary><![CDATA[
        /// Remove a cookie from the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// ClientHelpers.ClearCookie("Score");
        /// ]]></code>
        /// </example>
        /// <param name="cookieName">Name of the cookie to remove.</param>
        /// <returns>Nothing.</returns>
        public static void RemoveCookie(string cookieName)
        {
            RemoveCookie(cookieName, "/", "");
        }

        /// <summary><![CDATA[
        /// Wrapper method for restrieving a development or staging page banner.
        /// Styling is in the application.scss file. 
        /// ]]></summary>
        /// <example>
        /// Requires the following Carbide config items:
        /// <code><![CDATA[
        /// <add key = "Domain.Staging" value="staging.example.com" />
        /// <add key = "Banner.Development.Show" value="true" />
        /// <add key = "Banner.Development.Message" value="DEVELOPMENT SITE" />
        /// <add key = "Banner.Staging.Show" value="true" />
        /// <add key = "Banner.Staging.Message" value="STAGING SITE" />
        /// ]]></code>
        /// Use in a Razor page:
        /// <code><![CDATA[
        /// @Html.Raw(OutputDevelopmentBanner())
        /// ]]></code>
        /// </example>
        public static string OutputDevelopmentBanner()
        {
            var debugging = AppStateHelpers.IsDebugging();
            var domain = HttpHelpers.GetSeoHost();
            var showBanner = false;
            var result = "";

            if (debugging)
            {
                showBanner = Config.GetKeyValue<bool>("Banner.Development.Show", true, "Fynydd.Carbide");

                if (domain.Contains(Config.GetKeyValue("Domain.Staging", "{not found}", "Fynydd.Carbide")))
                {
                    showBanner = Config.GetKeyValue<bool>("Banner.Staging.Show", true, "Fynydd.Carbide");
                }
            }

            if (showBanner)
            {
                var debugId = "debug-banner";
                var debugMessage = Config.GetKeyValue("Banner.Development.Message", "DEVELOPMENT", "Fynydd.Carbide");

                if (domain.Contains(Config.GetKeyValue("Domain.Staging", "{not found}", "Fynydd.Carbide")))
                {
                    debugId = "staging-banner";
                    debugMessage = Config.GetKeyValue("Banner.Staging.Message", "STAGING", "Fynydd.Carbide");
                }

                result = "<section id=\"" + debugId + "\"><span>" + debugMessage + "</span></section>";
            }

            return result;
        }
    }
}
