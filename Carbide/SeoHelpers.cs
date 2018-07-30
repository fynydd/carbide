using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Static helper methods to assist with SEO initiatives.
    /// ]]></summary>
    public static class SeoHelpers
    {
        /// <summary><![CDATA[
        /// Output a meta tag to prevent page indexing in current context.
        /// Use in a Razor page.
        /// ]]></summary>
        public static string PreventSearchIndexingWhenDebug()
        {
            return Metadata.DoNotIndex;
        }

        /// <summary><![CDATA[
        /// Return a meta tag to prevent browser page caching in current context.
        /// Use in a Razor page.
        /// ]]></summary>
        public static string PreventBrowserCachingWhenDebug()
        {
            return Metadata.DoNotCache;
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

            var path = HttpContext.Current.Server.MapPath(VirtualPathUtility.ToAbsolute("~/robots.txt"));
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

                    text = text.Replace("{HTTP_HOST}", HttpContext.Current.Request.ServerVariables["HTTP_HOST"]);
                }
            }

            context.Response.Write(text);
        }
    }
}
