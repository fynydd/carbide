using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

using Fynydd.Halide;
using Fynydd.Halide.Constants;

namespace Fynydd.Carbide
{
    /// <summary>
    /// Replaces {HTTP_HOST} in your robots.txt file with your current domain and serve dynamically.
    /// Add the following to the web.config to enable this feature:
    /// 
    /// <![CDATA[
    /// <system.webServer>
    ///     <handlers>
    ///         <add name="RobotsTxt" path="/robots.txt" verb="*" type="Fynydd.Carbide.RobotsTxt" resourceType="Unspecified" preCondition="integratedMode" />
    /// ]]>
    /// </summary>
    public class RobotsTxt : IHttpHandler
    {
        public bool IsReusable
        {
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            var path = HttpContext.Current.Server.MapPath(VirtualPathUtility.ToAbsolute("~/robots.txt"));
            
            if (File.Exists(path))
            {
                var streamReader = File.OpenText(path);
                var text = streamReader.ReadToEnd();
                context.Response.Write(text.Replace("{HTTP_HOST}", HttpContext.Current.Request.ServerVariables["HTTP_HOST"]));
                streamReader.Close();
                streamReader.Dispose();
            }

            else
            {
                context.Response.Write("");
            }
        }
    }
}
