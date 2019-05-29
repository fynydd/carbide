using System.Web;

using Umbraco.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Helper methods for accessing and managing Application State.
    /// ]]></summary>
    public static class ApplicationState
    {
        /// <summary>
        /// Determine if the application is running in debug mode.
        /// </summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <returns>True if application is running in debug mode</returns>
        public static bool IsDebugging(this UmbracoContext umbCtx)
        {
            return umbCtx.HttpContext.IsDebuggingEnabled;
        }

        /// <summary><![CDATA[
        /// Determine if an Application-level state variable exists.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="keyName">The key name of the Application-level state variable</param>
        public static bool KeyExists(this UmbracoContext umbCtx, string keyName)
        {
            bool result = false;

            if (umbCtx.HttpContext.Application != null)
            {
                if (umbCtx.HttpContext.Application[keyName] != null)
                {
                    result = true;
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Remove an Application-level state variable, first checking for its existence
        /// and a valid context.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
        /// <param name="keyName">The key name of the Application-level state variable</param>
        public static void SafeRemove(this UmbracoContext umbCtx, string keyName)
        {
            if (umbCtx.KeyExists(keyName))
            {
                umbCtx.HttpContext.Application.Remove(keyName);
            }
        }

        /// <summary><![CDATA[
        /// Wrapper method for restrieving a development or staging page banner.
        /// Styling is in the application.scss file. 
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context object to use</param>
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
        public static string OutputDevelopmentBanner(this UmbracoContext umbCtx)
        {
            var debugging = umbCtx.IsDebugging();
            var domain = umbCtx.GetSeoHost();
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
