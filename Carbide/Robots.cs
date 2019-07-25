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
    /// Replaces {HTTP_HOST} in your robots.txt file with your current domain and serves it dynamically
    /// (original file is not modified). It will serve a global disallow if the web app is in debug mode.
    /// If no robots.txt file is present, a global allow to all user agents is served.
    /// 
    /// Add the following to the web.config to enable this feature:
    /// 
    /// <system.webServer>
    ///     <handlers>
    ///         <add name="Robots" path="/robots.txt" verb="*" type="Fynydd.Carbide.Robots" resourceType="Unspecified" preCondition="integratedMode" />
    /// ]]></summary>
    public class Robots : IHttpHandler
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
            var text = @"# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

User-agent: *
Disallow:
";

            if (context.IsDebuggingEnabled)
            {
                text = @"# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449
# DEBUGGING ENABLED: PROVIDING NO-SPIDER OUTPUT
# Disable debugging in the web.config to see the robots.txt file output

User-agent: *
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
