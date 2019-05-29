using System;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Text;
using System.Web;

using Umbraco.Web;

using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary>
    /// Various configuration settings for REST security calls.
    /// </summary>
    public class RestSecurityConfig
    {
        /// <summary>
        /// Maximum number of seconds allowed between a given number of successive REST calls, per WAN address.
        /// Default: 10
        /// </summary>
        public int RestApiRateLimitSeconds = 10;

        /// <summary>
        /// Maximum number of successive REST calls withina given number of seconds, per WAN address.
        /// Default: 1000
        /// </summary>
        public int RestApiRateLimitCount = 1000;

        /// <summary>
        /// Maximum failure count within RestApiBlacklistMaxFailureSeconds before a caller is blacklisted.
        /// Default: 25
        /// </summary>
        public int RestApiBlacklistMaxFailureCount = 25;

        /// <summary>
        /// Timeframe used to blacklist a caller for successive bad requests.
        /// Default: 300
        /// </summary>
        public int RestApiBlacklistMaxFailureSeconds = 60 * 5;

        /// <summary>
        /// Number of seconds a blacklisted WAN IP address is blacklisted.
        /// Default: 3,600
        /// </summary>
        public int RestApiBlacklistSeconds = 60 * 60;

        /// <summary>
        /// Age of a caller-provided timestamp in minutes considered valid.
        /// Default: 15
        /// </summary>
        public int RestApiTimestampMinutes = 15;
    }

    /// <summary>
    /// Class for returning REST results
    /// </summary>
    public class RestSecurityResult
    {
        /// <summary>
        /// WAN IP address
        /// </summary>
        public string WanIp { get; set; }

        /// <summary>
        /// HTTP status code
        /// </summary>
        public HttpStatusCode StatusCode { get; set; }

        /// <summary>
        /// HTTP status code text (e.g. OK)
        /// </summary>
        public string StatusText { get; set; }

        /// <summary>
        /// Verbose result description
        /// </summary>
        public string Message { get; set; }
    }

    /// <summary>
    /// Class for REST call rate limiting counters
    /// </summary>
    public class RateLimitingCounter
    {
        /// <summary>
        /// Number of requests in a given time
        /// </summary>
        public int Counter { get; set; }

        /// <summary>
        /// Number of requests in a given time
        /// </summary>
        public DateTime Expiration { get; set; }
    }

    /// <summary><![CDATA[
    /// Various helper methods for ensuring REST call security.
    /// ]]></summary>
    public static class RestSecurity
    {
        /// <summary>
        /// Get the RestSecurity cache name
        /// </summary>
        /// <param name="wanIp">WAN IP address</param>
        /// <param name="restPath">REST path to use as an identifier so that each path has its own rate limiting, etc. (e.g. "/member/signin")</param>
        /// <returns></returns>
        public static string GetWanIpCacheName(string wanIp, string restPath = "/")
        {
            return restPath + (restPath.EndsWith("/") ? "" : "/") + "IP" + wanIp.Replace(".", "-");
        }

        /// <summary>
        /// Simple way to rate limit and blacklist abusers for anonymous REST requests.
        /// Uses WAN IP address to identify requesters and track their bad requests in order to blacklist them.
        /// </summary>
        /// <example>
        /// One line of code will enforce rate limiting and blacklist a repeated bad request offender, 
        /// returning a class object that contains the HttpStatusCode and messaging.
        /// <code>
        /// var jsonData = RestSecurity.RateLimit("169.128.25.23", "2018-12-01T23:59:00Z", "member/signin", restApiSettings);
        /// if (jsonData.StatusCode == HttpStatusCode.OK)
        ///	{
        ///	    // Do stuff and set the status code and messaging properties in jsonData.
        ///     // After all processing, execute ProcessRestSecurityTracking() so subsequent
        ///     // calls to RateLimit() are aware of the ultimate result of this request.
        ///	    RestSecurity.ProcessRestSecurityTracking(jsonData, "member/signin", restApiSettings);
        ///	}
        /// </code>
        /// </example>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="wanIpAddress">Optional WAN IP address of the caller (provided by the caller) to compare against the actual address used to make the request</param>
        /// <param name="timestamp">Optional UTC timestamp of the REST call (provided by the caller) in the format 2018-12-01T23:59:00Z</param>
        /// <param name="restPath">REST path to use as an identifier so that each path has its own rate limiting, etc. (e.g. "/member/signin")</param>
        /// <param name="config">RestSecurityConfig object</param>
        /// <returns>RestSecurityResult object with response information</returns>
        public static RestSecurityResult RateLimit(this UmbracoContext umbCtx, string wanIpAddress, string timestamp, string restPath, RestSecurityConfig config)
        {
            var wanip = umbCtx.HttpContext.Request.UserHostAddress;
            var result = new RestSecurityResult { WanIp = wanip, StatusCode = HttpStatusCode.BadGateway, StatusText = "Bad Gateway", Message = "Invalid request" };

            try
            {
                if (umbCtx.CacheExists("BLACKLISTED" + GetWanIpCacheName(wanip, restPath)))
                {
                    result.StatusCode = HttpStatusCode.Forbidden;
                    result.StatusText = "Forbidden";
                    result.Message = "You've been blacklisted. You appear to be up to no good.";
                }

                else
                {
                    if (umbCtx.CacheExists(GetWanIpCacheName(wanip, restPath)) == false)
                    {
                        var newRateData = new RateLimitingCounter { Counter = 0, Expiration = DateTime.Now.AddSeconds(config.RestApiRateLimitSeconds) };
                        umbCtx.CacheAdd(GetWanIpCacheName(wanip, restPath), newRateData, expirationDateTime: newRateData.Expiration);
                    }

                    var rateData = umbCtx.Cache<RateLimitingCounter>(GetWanIpCacheName(wanip, restPath));
                    rateData.Counter += 1;

                    umbCtx.CacheDelete(GetWanIpCacheName(wanip, restPath));
                    umbCtx.CacheAdd(GetWanIpCacheName(wanip, restPath), rateData, expirationDateTime: rateData.Expiration);

                    if (rateData.Counter <= config.RestApiRateLimitCount)
                    {
                        // Validate WAN IP address matches actual
                        if (string.IsNullOrEmpty(wanIpAddress) || (wanIpAddress.HasValue() && wanip == wanIpAddress))
                        {
                            if (string.IsNullOrEmpty(timestamp))
                            {
                                // Timestamp not used, request is good...

                                result.StatusCode = HttpStatusCode.OK;
                                result.StatusText = "OK";
                                result.Message = "";
                            }

                            else
                            {
                                // Enforce UTC timestamp format of 2018-12-01T23:59:00Z
                                if (timestamp.Length > 19 && timestamp.Contains("T") && timestamp.EndsWith("Z"))
                                {
                                    if (timestamp.HasValue() && timestamp.IsDate() && DateTime.Parse(timestamp, null, System.Globalization.DateTimeStyles.AdjustToUniversal).DateDiff<int>(DateTime.Now.ToUniversalTime(), DateDiffComparisonType.Minutes) <= config.RestApiTimestampMinutes)
                                    {
                                        // Validate timestamp, request is good...

                                        result.StatusCode = HttpStatusCode.OK;
                                        result.StatusText = "OK";
                                        result.Message = "";
                                    }
                                }
                            }
                        }

                        else
                        {
                            result.StatusCode = HttpStatusCode.BadRequest;
                            result.StatusText = "Bad Request";
                            result.Message = "You are not who you claim to be.";
                        }
                    }

                    else
                    {
                        result.StatusCode = (HttpStatusCode)429;
                        result.StatusText = "Too Many Requests";
                        result.Message = "Slow down there partner.";
                    }
                }
            }

            catch //(Exception e)
            {
                result.StatusCode = HttpStatusCode.InternalServerError;
                result.StatusText = "Internal Server Error";
                result.Message = "Houston, we have a problem.";
                //result.Message = e.Message;
            }

            umbCtx.ProcessRestSecurityTracking(result, restPath, config);

            return result;
        }

        /// <summary>
        /// Process and track REST request tracking.
        /// </summary>
        /// <example>
        /// One line of code will enforce rate limiting and blacklist a repeated bad request offender, 
        /// returning a class object that contains the HttpStatusCode and messaging.
        /// <code>
        /// var jsonData = RestSecurity.RateLimit("169.128.25.23", "2018-12-01T23:59:00Z", "member/signin", restApiSettings);
        /// if (jsonData.StatusCode == HttpStatusCode.OK)
        ///	{
        ///	    // Do stuff and set the status code and messaging properties in jsonData.
        ///     // After all processing, execute ProcessRestSecurityTracking() so subsequent
        ///     // calls to RateLimit() are aware of the ultimate result of this request.
        ///	    RestSecurity.ProcessRestSecurityTracking(jsonData, "member/signin", restApiSettings);
        ///	}
        /// </code>
        /// </example>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="result">REST request result to process and track</param>
        /// <param name="restPath">REST path to use as an identifier so that each path has its own rate limiting, etc. (e.g. "/member/signin")</param>
        /// <param name="config">REST security configuration</param>
        public static void ProcessRestSecurityTracking(this UmbracoContext umbCtx, RestSecurityResult result, string restPath, RestSecurityConfig config)
        {
            // Failure, track bad requests for potential blacklisting
            if (result.StatusCode != HttpStatusCode.OK)
            {
                int failures = 0;

                if (umbCtx.CacheExists("FAILURES" + GetWanIpCacheName(result.WanIp, restPath)))
                {
                    failures = umbCtx.Cache<int>("FAILURES" + GetWanIpCacheName(result.WanIp, restPath));
                }

                failures++;

                if (failures > config.RestApiBlacklistMaxFailureCount)
                {
                    umbCtx.CacheDelete("FAILURES" + GetWanIpCacheName(result.WanIp, restPath));
                    umbCtx.CacheAdd("BLACKLISTED" + GetWanIpCacheName(result.WanIp, restPath), 0, expirationSeconds: config.RestApiBlacklistSeconds);
                }

                else
                {
                    umbCtx.CacheAdd("FAILURES" + GetWanIpCacheName(result.WanIp, restPath), failures, expirationSeconds: config.RestApiBlacklistMaxFailureSeconds);
                }
            }
        }

        /// <summary>
        /// Determine if a bearer token in the Authorization header matches a provided token.
        /// </summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="bearerToken">Bearer token to compare with the Authorization header bearer token</param>
        public static bool BearerTokenIsValid(this Umbraco.Web.UmbracoContext umbCtx, string bearerToken = "")
        {
            var result = false;

            if (bearerToken.HasValue())
            {
                if (umbCtx.HttpContext.Request.Headers["Authorization"] != null)
                {
                    if (umbCtx.HttpContext.Request.Headers["Authorization"].ToString().ToLower().StartsWith("bearer "))
                    {
                        if (umbCtx.HttpContext.Request.Headers["Authorization"].ToString().EndsWith(" " + bearerToken))
                        {
                            result = true;
                        }
                    }
                }
            }

            return result;
        }
    }
}
