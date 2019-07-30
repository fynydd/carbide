using System;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Text;
using System.Web;

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
        /// Legacy HTTP status code text (e.g. OK)
        /// </summary>
        public string Result { get; set; }

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
		/// <param name="wanIpAddress">Optional WAN IP address of the caller (provided by the caller) to compare against the actual address used to make the request</param>
		/// <param name="timestamp">Optional UTC timestamp of the REST call (provided by the caller) in the format 2018-12-01T23:59:00Z</param>
		/// <param name="restPath">REST path to use as an identifier so that each path has its own rate limiting, etc. (e.g. "/member/signin")</param>
		/// <param name="config">RestSecurityConfig object</param>
		/// <param name="context">Optional HttpContext object (uses Current if not provided)</param>
		/// <returns>RestSecurityResult object with response information</returns>
		public static RestSecurityResult RateLimit(string wanIpAddress, string timestamp, string restPath, RestSecurityConfig config, HttpContext context = null)
		{
			var wanip = ContextHelpers.EnsureAppContext(context).Request.UserHostAddress;
			var result = new RestSecurityResult { WanIp = wanip, StatusCode = HttpStatusCode.BadGateway, StatusText = "Bad Gateway", Message = "Invalid request" };

			try
			{
				if (CacheHelpers.CacheExists("BLACKLISTED" + GetWanIpCacheName(wanip, restPath)))
				{
					result.StatusCode = HttpStatusCode.Forbidden;
					result.StatusText = "Forbidden";
					result.Message = "You appear to be up to no good.";
				}

				else
				{
					if (CacheHelpers.CacheExists(GetWanIpCacheName(wanip, restPath)) == false)
					{
						var newRateData = new RateLimitingCounter { Counter = 0, Expiration = DateTime.Now.AddSeconds(config.RestApiRateLimitSeconds) };
						CacheHelpers.CacheAdd(GetWanIpCacheName(wanip, restPath), newRateData, expirationDateTime: newRateData.Expiration);
					}

					var rateData = CacheHelpers.Cache<RateLimitingCounter>(GetWanIpCacheName(wanip, restPath));
					rateData.Counter += 1;

					CacheHelpers.CacheDelete(GetWanIpCacheName(wanip, restPath));
					CacheHelpers.CacheAdd(GetWanIpCacheName(wanip, restPath), rateData, expirationDateTime: rateData.Expiration);

					if (rateData.Counter <= config.RestApiRateLimitCount)
					{
						// Validate WAN IP address matches actual
						if (string.IsNullOrEmpty(wanIpAddress) || (string.IsNullOrEmpty(wanIpAddress) == false && wanip == wanIpAddress))
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
									if (string.IsNullOrWhiteSpace(timestamp) == false && timestamp.IsDate() && DateTime.Parse(timestamp, null, System.Globalization.DateTimeStyles.AdjustToUniversal).DateDiff<int>(DateTime.Now.ToUniversalTime(), DateDiffComparisonType.Minutes) <= config.RestApiTimestampMinutes)
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

			catch (Exception e)
			{
				result.StatusCode = HttpStatusCode.InternalServerError;
				result.StatusText = "Internal Server Error";
				result.Message = e.Message;
			}

			ProcessRestSecurityTracking(result, restPath, config);

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
		/// <param name="result">REST request result to process and track</param>
		/// <param name="restPath">REST path to use as an identifier so that each path has its own rate limiting, etc. (e.g. "/member/signin")</param>
		/// <param name="config">REST security configuration</param>
		public static void ProcessRestSecurityTracking(RestSecurityResult result, string restPath, RestSecurityConfig config)
		{
			// Failure, track bad requests for potential blacklisting
			if (result.StatusCode != HttpStatusCode.OK)
			{
				int failures = 0;
				var _x = HttpContext.Current.Cache;

				if (CacheHelpers.CacheExists("FAILURES" + GetWanIpCacheName(result.WanIp, restPath)))
				{
					failures = CacheHelpers.Cache<int>("FAILURES" + GetWanIpCacheName(result.WanIp, restPath));
				}

				failures++;

				if (failures > config.RestApiBlacklistMaxFailureCount)
				{
					CacheHelpers.CacheDelete("FAILURES" + GetWanIpCacheName(result.WanIp, restPath));
					CacheHelpers.CacheAdd("BLACKLISTED" + GetWanIpCacheName(result.WanIp, restPath), 0, expirationSeconds: config.RestApiBlacklistSeconds);
				}

				else
				{
					CacheHelpers.CacheAdd("FAILURES" + GetWanIpCacheName(result.WanIp, restPath), failures, expirationSeconds: config.RestApiBlacklistMaxFailureSeconds);
				}
			}
		}

        /// <summary>
        /// Determine if a bearer token in the Authorization header matches a provided token.
        /// </summary>
		/// <param name="context">HttpContext object</param>
        /// <param name="bearerToken">Bearer token to compare with the Authorization header bearer token</param>
        public static bool BearerTokenIsValid(this HttpContext context, string bearerToken = "")
        {
            var result = false;

            if (String.IsNullOrEmpty(bearerToken) == false)
            {
                if (context.Request.Headers["Authorization"] != null)
                {
                    if (context.Request.Headers["Authorization"].ToString().ToLower().StartsWith("bearer "))
                    {
                        if (context.Request.Headers["Authorization"].ToString().EndsWith(" " + bearerToken))
                        {
                            result = true;
                        }
                    }
                }
            }

            return result;
        }
    }

    /// <summary><![CDATA[
    /// A class for performing HTTP REST requests.
    /// ]]></summary>
    /// <example>
    /// <code><![CDATA[
    /// RestHelper request = new RestHelper();
    /// request.Url="http://seeker.dice.com/jobsearch/servlet/JobSearch";
    /// request.HeaderItems.Add("X-App-Token","skadjfhaskjfs");
    /// request.RequestType = RestHelper.RequestTypeEnum.GET;
    /// request.RequestFormat = RestHelper.RequestFormatEnum.JSON;
    /// request.Timeout = 10000;
    /// string result = request.Call();
    /// ]]></code>
    /// </example>
    public class RestHelper
    {
        #region Properties and variables

        private string m_url = String.Empty;
        private bool _forceTls2 = false;
        private string payload = null;
        private int timeout = 30000;
        private Dictionary<string, string> h_values = new Dictionary<string, string>();
        private RequestFormatEnum f_type = RequestFormatEnum.JSON;
        private RequestTypeEnum m_type = RequestTypeEnum.GET;

        private string status = "";

        /// <summary><![CDATA[
        /// Content for the request
        /// ]]></summary>
        public string Payload
        {
            get
            {
                return payload;
            }

            set
            {
                payload = value;
            }
        }

        /// <summary><![CDATA[
        /// Timeout for the request in milliseconds
        /// ]]></summary>
        public int Timeout
        {
            get
            {
                return timeout;
            }

            set
            {
                timeout = value;
            }
        }

        /// <summary><![CDATA[
        /// The last status returned by the HttpWebResponse object (e.g. 201, 200, etc.)
        /// ]]></summary>
        public string LastStatus
        {
            get
            {
                return status;
            }

            set
            {
                status = value;
            }
        }

        /// <summary><![CDATA[
        /// Gets or sets the url to submit the post to.
        /// ]]></summary>
        public string Url
        {
            get
            {
                return m_url;
            }
            set
            {
                m_url = value;
            }
        }

        /// <summary><![CDATA[
        /// Gets or sets the name value collection of header items.
        /// ]]></summary>
        public Dictionary<string, string> HeaderItems
        {
            get
            {
                return h_values;
            }
            set
            {
                h_values = value;
            }
        }

        /// <summary><![CDATA[
        /// Gets or sets the type of action to perform against the url.
        /// ]]></summary>
        public RequestTypeEnum RequestType
        {
            get
            {
                return m_type;
            }
            set
            {
                m_type = value;
            }
        }

        /// <summary><![CDATA[
        /// Gets or sets the request and response format in-use.
        /// ]]></summary>
        public RequestFormatEnum RequestFormat
        {
            get
            {
                return f_type;
            }
            set
            {
                f_type = value;
            }
        }

        /// <summary><![CDATA[
        /// Force TLS 2.0
        /// ]]></summary>
        public bool ForceTls2
        {
            get
            {
                return _forceTls2;
            }
            set
            {
                _forceTls2 = value;
            }
        }

        #endregion

        /// <summary><![CDATA[
        /// Default constructor.
        /// ]]></summary>
        public RestHelper()
        {
        }

        #region Methods

        /// <summary><![CDATA[
        /// Execute the REST request.
        /// ]]></summary>
        /// <returns>Response data as a string</returns>
        public string Call()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(Url);
            HttpWebResponse response = null;
            string result = "";

            request.Method = RequestType.ToString();
            request.AllowAutoRedirect = true;
            request.UserAgent = "Mozilla/5.0";
            request.ContentType = "application/x-www-form-urlencoded; charset=utf-8";
            request.CookieContainer = new CookieContainer();
            request.Referer = "";

            switch (RequestFormat)
            {
                case RequestFormatEnum.JSON:
                    request.Accept = "application/json";
                    break;

                case RequestFormatEnum.XML:
                    request.Accept = "application/xml";
                    break;

                default:
                    request.Accept = "text/html";
                    break;
            }

            request.Timeout = Timeout;
            request.ReadWriteTimeout = Timeout;

            if (HeaderItems != null)
            {
                foreach (KeyValuePair<string, string> item in HeaderItems)
                {
                    request.Headers.Add(item.Key, item.Value);
                }
            }

            if (RequestType == RequestTypeEnum.POST || RequestType == RequestTypeEnum.PUT || RequestType == RequestTypeEnum.PATCH)
            {
                if (string.IsNullOrEmpty(Payload))
                {
                    Payload = "";
                }

                var dataToSend = Encoding.UTF8.GetBytes(Payload);

                request.ContentLength = dataToSend.Length;

                request.GetRequestStream().Write(dataToSend, 0, dataToSend.Length);
            }

            SecurityProtocolType oldSecurityProtocol = System.Net.ServicePointManager.SecurityProtocol;

            try
            {
                if (_forceTls2)
                {
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                }

                using (response = (HttpWebResponse)request.GetResponse())
                {
                    using (Stream responseStream = response.GetResponseStream())
                    {
                        using (StreamReader readStream = new StreamReader(responseStream, Encoding.UTF8))
                        {
                            result = readStream.ReadToEnd();
                        }
                    }

                    if (response != null)
                    {
                        LastStatus = ((Int32)response.StatusCode).ToString();
                    }
                }
            }

            catch (WebException ex)
            {
                LastStatus = result = ex.ToString();
            }

            if (_forceTls2)
            {
                System.Net.ServicePointManager.SecurityProtocol = oldSecurityProtocol;
            }

            return result;
        }

        #endregion
    }
}
