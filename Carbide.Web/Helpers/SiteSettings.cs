using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Fynydd.Carbide;
using Fynydd.Carbide.Constants;
using Umbraco.Web;

namespace Carbide.Web.Helpers
{
    public static class SiteSettings
    {
        public static RestSecurityConfig RestApiSettings = new RestSecurityConfig
        {
            RestApiRateLimitSeconds = 10, // Maximum number of seconds allowed between a given number of successive REST calls, per WAN address
            RestApiRateLimitCount = 1000, // Maximum number of successive REST calls withina given number of seconds, per WAN address
            RestApiBlacklistMaxFailureCount = 25, // Max failure count within the timeframe below
            RestApiBlacklistMaxFailureSeconds = 60 * 5, // Max failures within this time frame
            RestApiBlacklistSeconds = 60 * 60, // WAN addresses are blacklisted for this many seconds
            RestApiTimestampMinutes = 15 // Timestamps can be this old to be valid
        };

        //public static byte[] HMAC128ByteSecret = { 37, 116, 122, 17, 230, 38, 19, 136, 227, 128, 113, 251, 11, 80, 173, 218, 11, 29, 142, 7, 69, 132, 71, 106, 229, 37, 85, 70, 70, 36, 179, 106, 98, 194, 229, 233, 173, 25, 242, 52, 68, 16, 106, 189, 177, 16, 88, 9, 243, 60, 32, 194, 4, 219, 218, 245, 14, 148, 142, 133, 46, 195, 221, 246, 48, 106, 58, 176, 108, 196, 44, 242, 43, 90, 194, 53, 25, 137, 184, 212, 204, 75, 82, 10, 4, 241, 102, 135, 232, 240, 218, 25, 139, 109, 6, 129, 51, 116, 140, 71, 213, 168, 156, 46, 15, 46, 151, 170, 24, 165, 219, 133, 219, 185, 184, 226, 112, 210, 241, 63, 3, 179, 200, 124, 233, 19, 102, 189 };

        //public static string HMAC128ByteSecretString
        //{
        //    get
        //    {
        //        return Encryption.Base64UrlEncode(HMAC128ByteSecret);
        //    }
        //}

        public static string AppKey = Config.GetKeyValue("AppKey");

        /// <summary>
        /// Get the pixel width of a media breakpoint from the SCSS _config-media-breakpoints.scss file.
        /// Returns "false" if none is set.
        /// </summary>
        /// <param name="shortBreakpointName">Four character breakpoint name (e.g. "desk")</param>
        /// <returns>Pixel width as a string, or "false"</returns>
        public static string GetCssBreakpoint(string shortBreakpointName)
        {
            var result = "false";
            var umbCtx = DependencyResolver.Current.GetService<IUmbracoContextFactory>().EnsureUmbracoContext().UmbracoContext;
            shortBreakpointName = shortBreakpointName.ToLower();

            if (Caching.CacheExists(umbCtx, shortBreakpointName + "-breakpoint"))
            {
                result = Caching.Cache<string>(umbCtx, shortBreakpointName + "-breakpoint");
            }

            else
            {
                var _config = Storage.ReadFile(umbCtx, "/scss/_config-media-breakpoints.scss");
                var endIndex = _config.IndexOf(", " + shortBreakpointName + ")") - 1;

                if (endIndex > 0)
                {
                    for (int x = endIndex - 1; x > 0; x--)
                    {
                        if (_config.Substring(x, 1) == "(")
                        {
                            result = _config.Substring(x + 1, endIndex - x).ToLower();
                            x = 0;

                            Caching.CacheAddPermanent(umbCtx, shortBreakpointName + "-breakpoint", result);
                        }
                    }
                }
            }

            return result;
        }
    }
}