using System;

using Umbraco.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Cookies class contains methods and properties for controlling cookies.
    /// ]]></summary>
    public static class Cookies
    {
        /// <summary><![CDATA[
        /// Determines if a cookie exists.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool cookieExists = Cookies.CookieExists("Score");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="cookieName">Name of cookie for which to verify its existence</param>
        public static bool CookieExists(this UmbracoContext umbCtx, string cookieName)
        {
            if (umbCtx.HttpContext.Request.Cookies[cookieName] != null)
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
        /// string cookieVal = Cookies.GetCookie(Request, "Score");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="cookieName">Name of cookie to retrieve</param>
        public static string GetCookie(this UmbracoContext umbCtx, string cookieName)
        {
            if (umbCtx.HttpContext.Request.Cookies[cookieName] != null)
            {
                return umbCtx.HttpContext.Request.Cookies[cookieName].Value.ToString();
            }

            else
            {
                return (string.Empty);
            }
        }

        /// <summary><![CDATA[
        /// Create a cookie on the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Cookies.SetCookie("Score", "15", "", 7, ".mydomain.com");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="cookieName">Name of the cookie to create</param>
        /// <param name="cookieValue">Cookie string value</param>
        /// <param name="days">Number of days until expiration (defaults to 7)</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "" for the root domain)</param>
        /// <param name="domain">Domain for this cookie (e.g. use ".mydomain.com" format to save cookie for all subdomains)</param>
        public static void SetCookie(this UmbracoContext umbCtx, string cookieName, string cookieValue, int days = 7, string path = "", string domain = "")
        {
            umbCtx.HttpContext.Response.Cookies[cookieName].Value = cookieValue;
            umbCtx.HttpContext.Response.Cookies[cookieName].Expires = DateTime.Now.AddDays(days);

            if (path.HasValue())
            {
                umbCtx.HttpContext.Response.Cookies[cookieName].Path = path;
            }

            if (domain.HasValue())
            {
                umbCtx.HttpContext.Response.Cookies[cookieName].Domain = domain;
            }
        }

        /// <summary><![CDATA[
        /// Remove a cookie from the client web browser.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// Cookies.ClearCookie("Score", "/", "mysite.com");
        /// ]]></code>
        /// </example>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="cookieName">Name of the cookie to remove</param>
        /// <param name="path">Virtual web path for cookie ownership (e.g. use "/" for the root web site)</param>
        /// <param name="domain">Domain which owns the cookie (e.g. ".mydomain.com") or "" for the current domain</param>
        public static void RemoveCookie(this UmbracoContext umbCtx, string cookieName, string path = "", string domain = "")
        {
            umbCtx.HttpContext.Response.Cookies[cookieName].Value = "";
            umbCtx.HttpContext.Response.Cookies[cookieName].Path = "/";
            umbCtx.HttpContext.Response.Cookies[cookieName].Expires = DateTime.Now;

            if (path.HasValue())
            {
                umbCtx.HttpContext.Response.Cookies[cookieName].Path = path;
            }

            if (domain.HasValue())
            {
                umbCtx.HttpContext.Response.Cookies[cookieName].Domain = domain;
            }
        }
    }
}
