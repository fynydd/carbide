using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

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
