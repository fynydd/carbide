using System;
using System.Text.RegularExpressions;
using System.Web;

using Fynydd.Carbide.Constants;
using System.Net;
using System.IO;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Various helper methods for managing HTTP requests, browser identification, query string parsing, etc.
    /// ]]></summary>
    public static class Http
    {
        #region Host / domain

        /// <summary><![CDATA[
        /// Get the fully qualified domain name of the current URL.
        /// ]]></summary>
        /// <returns>Domain name (FQDN).</returns>
        public static string GetHost()
        {
            return HttpContext.Current.Request.Url.Host;
        }

        /// <summary><![CDATA[
        /// Get the fully qualified domain name of the current URL.
        /// ]]></summary>
        /// <param name="context">Context to use</param>
        /// <returns>Domain name (FQDN).</returns>
        public static string GetHost(HttpContext context)
        {
            return context.Request.Url.Host;
        }

        /// <summary><![CDATA[
        /// Get the fully qualified domain name of the current URL with port.
        /// ]]></summary>
        /// <returns>Domain name (FQDN) with a colon and a port number.</returns>
        public static string GetHostWithPort()
        {
            return HttpContext.Current.Request.Url.Host + ":" + HttpContext.Current.Request.Url.Port;
        }

        /// <summary><![CDATA[
        /// Get the fully qualified domain name of the current URL with port.
        /// ]]></summary>
        /// <param name="context">Context to use</param>
        /// <returns>Domain name (FQDN) with a colon and a port number.</returns>
        public static string GetHostWithPort(HttpContext context)
        {
            return context.Request.Url.Host + ":" + context.Request.Url.Port;
        }

        /// <summary><![CDATA[
        /// Get the root domain from the fully qualified domain name of the current URL.
        /// (e.g. if visiting "www.mydomain.com", "mydomain.com" is returned.)
        /// ]]></summary>
        /// <returns>Root domain name.</returns>
        public static string GetHostRoot()
        {
            String fqdn = GetHost();
            String dn = fqdn;
            String[] dnParts = fqdn.Split('.');

            if (dnParts.Length > 1)
            {
                dn = dnParts[dnParts.Length - 2] + "." + dnParts[dnParts.Length - 1];
            }

            return dn;
        }

        #endregion

        #region Get and Post web pages and files

        /// <summary><![CDATA[
        /// Perform an Http GET operation, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com");
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <returns>A string with the result from the GET operation.</returns>
        public static string GetWebPage(string url)
        {
            return GetWebPage(url, GetWebPageMethod.Get, null, null, null, null);
        }

        /// <summary><![CDATA[
        /// Perform an Http GET operation, and return the result.
        /// Timeout in milliseconds is passed as well.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com");
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="timeoutMilliseconds">Timeout in milliseconds for the request.</param>
        /// <returns>A string with the result from the GET operation.</returns>
        public static string GetWebPage(string url, int timeoutMilliseconds)
        {
            return GetWebPage(url, GetWebPageMethod.Get, null, null, null, null, timeoutMilliseconds);
        }

        /// <summary><![CDATA[
        /// Perform an Http GET operation, passing cookies, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com", myCookies);
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="cookies">CookieContainer variable for sending cookies.</param>
        /// <returns>A string with the result from the GET operation.</returns>
        public static string GetWebPage(string url, CookieContainer cookies)
        {
            return GetWebPage(url, GetWebPageMethod.Get, cookies, null, null, null);
        }

        /// <summary><![CDATA[
        /// Perform an Http GET or POST operation, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com", Carbide.Http.GetWebPageMethod.Get, postData);
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="method">GetWebPageMethod enum value.</param>
        /// <param name="postData">String post data for sending a post.</param>
        /// <returns>A string with the result from the GET or POST operation.</returns>
        public static string GetWebPage(string url, GetWebPageMethod method, string postData)
        {
            return GetWebPage(url, method, null, postData, null, null);
        }

        /// <summary><![CDATA[
        /// Perform an Http GET operation, passing credentials, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com", "jsmith", "password");
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="userName">User name string for Windows Authentication.</param>
        /// <param name="password">password string for Windows Authentication.</param>
        /// <returns>A string with the result from the GET operation.</returns>
        public static string GetWebPage(string url, string userName, string password)
        {
            return GetWebPage(url, GetWebPageMethod.Get, null, null, userName, password);
        }

        /// <summary><![CDATA[
        /// Perform an Http GET or POST operation, passing cookies, post data,
        /// user name and password, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com", Http.GetWebPageMethod.Get, cookies, postData, "jsmith", "password");
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="method">GetWebPageMethod enum value.</param>
        /// <param name="cookies">CookieContainer variable for sending cookies.</param>
        /// <param name="postData">String post data for sending a post.</param>
        /// <param name="userName">User name string for Windows Authentication.</param>
        /// <param name="password">password string for Windows Authentication.</param>
        /// <param name="timeoutMilliseconds">Timeout in milliseconds for the request.</param>
        /// <returns>A string with the result from the GET or POST operation.</returns>
        public static string GetWebPage(string url, GetWebPageMethod method, CookieContainer cookies, string postData, string userName, string password, int timeoutMilliseconds)
        {
            string response = "";

            try
            {
                HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url);
                objRequest.ReadWriteTimeout = timeoutMilliseconds;
                objRequest.Timeout = timeoutMilliseconds;

                if (!string.IsNullOrEmpty(userName) || !string.IsNullOrEmpty(password))
                {
                    NetworkCredential nc = new NetworkCredential();
                    nc.UserName = userName;
                    nc.Password = password;
                    objRequest.Credentials = nc;
                }

                objRequest.AllowWriteStreamBuffering = true;
                objRequest.Method = method.ToString().ToUpper();

                if (cookies != null)
                {
                    objRequest.CookieContainer = cookies;
                }

                objRequest.AllowAutoRedirect = true;
                objRequest.Timeout = 30000;
                objRequest.Proxy = null;
                objRequest.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";

                if (method == GetWebPageMethod.Post && !String.IsNullOrEmpty(postData))
                {
                    objRequest.ContentType = "application/x-www-form-urlencoded";

                    using (StreamWriter myWriter = new StreamWriter(objRequest.GetRequestStream()))
                    {
                        myWriter.Write(postData);
                    }
                }

                HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();

                //if redirected, this is the final uri
                //FinalURL = objResponse.ResponseUri.ToString();

                using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
                {
                    response = sr.ReadToEnd();
                }
            }

            catch (Exception err)
            {
                throw new Exception("Carbide.Http Error: " + err.ToString());
            }

            return response;
        }

        /// <summary><![CDATA[
        /// Perform an Http GET or POST operation, passing cookies, post data,
        /// user name and password, and return the result.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = Http.GetWebPage("http://www.site.com", Http.GetWebPageMethod.Get, cookies, postData, "jsmith", "password");
        /// ]]></code>
        /// </example>
        /// <param name="url">Fully qualified URL to the remote page.</param>
        /// <param name="method">GetWebPageMethod enum value.</param>
        /// <param name="cookies">CookieContainer variable for sending cookies.</param>
        /// <param name="postData">String post data for sending a post.</param>
        /// <param name="userName">User name string for Windows Authentication.</param>
        /// <param name="password">password string for Windows Authentication.</param>
        /// <returns>A string with the result from the GET or POST operation.</returns>
        public static string GetWebPage(string url, GetWebPageMethod method, CookieContainer cookies, string postData, string userName, string password)
        {
            return GetWebPage(url, method, cookies, postData, userName, password, 300000);
        }

        /// <summary><![CDATA[
        /// Read a binary file from a URL and write it to disk.
        /// ]]></summary>
        /// <param name="url">URL to the web resource.</param>
        /// <param name="filePath">Web-style path for the destination file on disk, including new file name.</param>
        /// <returns>Number of bytes read, or zero if no file was returned.</returns>
        public static long WriteBinaryFile(string url, string filePath)
        {
            long bytesWritten = 0;

            try
            {
                WebResponse objResponse;
                objResponse = WebRequest.Create(url).GetResponse();
                Byte[] ByteBucket = new Byte[objResponse.ContentLength];
                BinaryReader readStream = new BinaryReader(objResponse.GetResponseStream());
                FileStream fileToWrite = new FileStream(HttpContext.Current.Server.MapPath(filePath), FileMode.Create, FileAccess.Write);

                int currentBytesRead = 0;
                int totalBytesRead = 0;
                bool done = false;

                #region Use a buffer to prevent truncated files

                while (!done)
                {
                    currentBytesRead = readStream.Read(ByteBucket, 0, Convert.ToInt32(objResponse.ContentLength));
                    fileToWrite.Write(ByteBucket, 0, currentBytesRead);
                    totalBytesRead += currentBytesRead;

                    if (totalBytesRead == objResponse.ContentLength)
                    {
                        done = true;
                    }
                }

                #endregion

                fileToWrite.Close();
                bytesWritten = objResponse.ContentLength;
            }

            catch
            {
                bytesWritten = 0;
            }

            return bytesWritten;
        }

        #endregion

        #region Browser and OS identification

        /// <summary><![CDATA[
        /// Return the version of Internet Explorer being used
        /// or -1 if the request came from another browser.
        /// ]]></summary>
        /// <returns>Version of IE, or -1 if not IE.</returns>
        public static double GetInternetExplorerVersion()
        {
            double ver;

            ver = GetBrowserVersion("IE");

            if (ver == -1)
            {
                ver = GetBrowserVersion("InternetExplorer");
            }

            return ver;
        }

        /// <summary><![CDATA[
        /// Return the version of Mozilla Firefox being used
        /// or -1 if the request came from another browser.
        /// ]]></summary>
        /// <returns>Version of Firefox, or -1 if not Firefox.</returns>
        public static double GetFirefoxVersion()
        {
            return GetBrowserVersion("Firefox");
        }

        /// <summary><![CDATA[
        /// Return the version of Apple Safari being used
        /// or -1 if the request came from another browser.
        /// ]]></summary>
        /// <returns>Version of Safari, or -1 if not Safari.</returns>
        public static double GetSafariVersion()
        {
            return GetBrowserVersion("Safari");
        }

        /// <summary><![CDATA[
        /// Return the version of Google Chrome being used
        /// or -1 if the request came from another browser.
        /// ]]></summary>
        /// <returns>Version of Safari, or -1 if not Safari.</returns>
        public static double GetChromeVersion()
        {
            return GetBrowserVersion("Chrome");
        }

        /// <summary><![CDATA[
        /// Return the version of specific browser based on HTTP headers
        /// or -1 if the request came from another browser.
        /// ]]></summary>
        /// <returns>Version of the browser, or -1 if not the requested browser.</returns>
        public static double GetBrowserVersion(string browserName)
        {
            // Returns the version of Mozilla Firefox or a -1
            // (indicating the use of another browser).
            double rv = -1;

            System.Web.HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;

            if (browser.Browser.ToLower().EndsWith(browserName.ToLower()))
            {
                rv = (double)(browser.MajorVersion + browser.MinorVersion);
            }

            return rv;
        }

        /// <summary><![CDATA[
        /// Return the browser name.
        /// ]]></summary>
        /// <returns>Browser name.</returns>
        public static string GetBrowserName()
        {
            if (HttpContext.Current != null)
            {
                System.Web.HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;
                return browser.Browser;
            }

            else
            {
                return "Unknown";
            }
        }

        private static string BuildMatch(string pattern, string userAgent, string browser, int versionIndex, string browserNameVersionFallback, out string browserName, out long majorVersion, out long minorVersion, out long buildVersion)
        {
            browserName = browser;
            majorVersion = 0;
            minorVersion = 0;
            buildVersion = 0;

            Match match = Regex.Match(userAgent, pattern, RegexOptions.IgnoreCase | RegexOptions.CultureInvariant);

            if (match.Success)
            {
                string key = match.Groups[versionIndex].Value;

                key = key.Replace("_", ".");

                string[] versions = key.Split('.');

                // Handle minor build versioning without dot syntax (leading zeroes)
                // (9.06 becomes 9.0.6)
                if (versions.Length > 1 && versions[1].StartsWith("0"))
                {
                    key = key.Replace(versions[0] + "." + versions[1], versions[0] + ".0." + Convert.ToInt64(versions[1]));
                    versions = key.Split('.');
                }

                if (versions.Length > 0)
                {
                    if (versions[0].Length > 18)
                    {
                        versions[0] = versions[0].Substring(0, 18);
                    }

                    if (Identify.IsPureNumeric(versions[0]))
                    {
                        majorVersion = Convert.ToInt64(versions[0]);
                    }
                }

                if (versions.Length > 1)
                {
                    if (versions[1].Length > 18)
                    {
                        versions[1] = versions[1].Substring(0, 18);
                    }

                    if (Identify.IsPureNumeric(versions[1]))
                    {
                        minorVersion = Convert.ToInt64(versions[1]);
                    }
                }

                if (versions.Length > 2)
                {
                    if (versions[2].Length > 18)
                    {
                        versions[2] = versions[2].Substring(0, 18);
                    }

                    if (Identify.IsPureNumeric(versions[2]))
                    {
                        buildVersion = Convert.ToInt64(versions[2]);
                    }
                }

                browser += " " + majorVersion + "." + minorVersion + (buildVersion > 0 ? "." + buildVersion : "");
            }

            else
            {
                if (browserNameVersionFallback != "")
                {
                    browser = browserName = browserNameVersionFallback;
                }
            }

            return browser;
        }

        /// <summary><![CDATA[
        /// Return the browser name and version.
        /// ]]></summary>
        /// <param name="userAgent">Browser user agent string</param>
        /// <returns>Browser name.</returns>
        public static string GetBrowser(string userAgent)
        {
            long majorVersion = 0;
            long minorVersion = 0;
            long buildVersion = 0;
            string browserName = "Unknown";

            return GetBrowser(userAgent, out majorVersion, out minorVersion, out buildVersion, out browserName);
        }

        /// <summary><![CDATA[
        /// Return the browser name and version.
        /// ]]></summary>
        /// <param name="userAgent">Browser user agent string</param>
        /// <param name="majorVersion">Output of major version</param>
        /// <param name="minorVersion">Output of minor version</param>
        /// <param name="buildVersion">Output of build version</param>
        /// <param name="browserName">Output of browser name</param>
        /// <returns>Browser name.</returns>
        public static string GetBrowser(string userAgent, out long majorVersion, out long minorVersion, out long buildVersion, out string browserName)
        {
            string browser = "Unknown";
            majorVersion = 0;
            minorVersion = 0;
            buildVersion = 0;
            browserName = browser;

            userAgent = userAgent.Trim();

            if (!string.IsNullOrEmpty(userAgent))
            {
                #region Internet Explorer

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("iemobile"))
                    {
                        browser = "Internet Explorer Mobile";
                        string pattern = @"IEMobile (\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }

                    else if (userAgent.ToLower().Contains("msie"))
                    {
                        browser = "Internet Explorer";
                        string pattern = @"MSIE (\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }

                    else if (userAgent.ToLower().Contains("trident"))
                    {
                        browser = "Internet Explorer";
                        string pattern = @"rv:(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }

                    else if (userAgent.ToLower().Contains("edge"))
                    {
                        browser = "Edge";
                        string pattern = @"Edge/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Firefox / Gecko

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("firefox"))
                    {
                        browser = "Firefox";
                        string pattern = @"Firefox/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }

                    else if (userAgent.ToLower().Contains("gecko") && !userAgent.ToLower().Contains("like gecko"))
                    {
                        browser = "Gecko";
                        string pattern = @"Gecko/(\d+(\.\d+)?(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Chrome

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("chrome"))
                    {
                        browser = "Chrome";
                        string pattern = @"Chrome/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Opera

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("opera"))
                    {
                        browser = "Opera";
                        string pattern = @"((Opera/)|(Opera ))(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 4, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Android

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("safari") && GetOSType(userAgent).ToLower().Contains("android"))
                    {
                        browser = "Android Web Browser";
                        string pattern = @"Version/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Blackberry

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("safari") && GetOSType(userAgent).ToLower().Contains("blackberry"))
                    {
                        browser = "Webkit";
                        string pattern = @"Version/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Safari

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("safari"))
                    {
                        browser = "Safari";
                        string pattern = @"Version/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "Webkit", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }

                    else if (userAgent.ToLower().Contains("applewebkit") && userAgent.ToLower().Contains("mobile"))
                    {
                        browser = "Safari (App Mode)";
                        string pattern = @"AppleWebKit/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "Webkit", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Konqueror

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("konqueror"))
                    {
                        browser = "Konqueror";
                        string pattern = @"Konqueror/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Webkit Engine

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("webkit"))
                    {
                        browser = "Webkit";
                        string pattern = @"Version/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Chromium Engine

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("chromium"))
                    {
                        browser = "Chromium";
                        string pattern = @"Version/(\d+\.\d+(\.\d+)?)";

                        browser = BuildMatch(pattern, userAgent, browser, 1, "", out browserName, out majorVersion, out minorVersion, out buildVersion);
                    }
                }

                #endregion

                #region Bots

                if (browser == "Unknown")
                {
                    if (userAgent.ToLower().Contains("bingbot"))
                    {
                        browser = "Bing (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("googlebot-image"))
                    {
                        browser = "GoogleBot-Images (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("googlebot"))
                    {
                        browser = "GoogleBot (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("slurp") || userAgent.ToLower().Contains("yahooseeker"))
                    {
                        browser = "Yahoo (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("duckduckbot"))
                    {
                        browser = "Duck Duck Go (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("msnbot"))
                    {
                        browser = "MSN (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("facebookexternalhit"))
                    {
                        browser = "Facebook External Hit (Spider)";
                    }

                    else if (userAgent.ToLower().Contains("teoma"))
                    {
                        browser = "Ask.com (Spider)";
                    }

                    #region Other known bots

                    else
                    {
                        string[] bots = { "Adidxbot", "blekkobot", "ia_archiver", "GingerCrawler", "webmon ", "httrack", "webcrawler", "FAST-WebCrawler", "FAST Enterprise Crawler", "convera", "biglotron", "grub.org", "UsineNouvelleCrawler", "antibot", "netresearchserver", "speedy", "fluffy", "jyxobot", "bibnum.bnf", "findlink", "exabot", "gigabot", "msrbot", "seekbot", "ngbot", "panscient", "yacybot", "AISearchBot", "IOI", "ips-agent", "tagoobot", "MJ12bot", "dotbot", "woriobot", "yanga", "buzzbot", "mlbot", "yandex", "purebot", "Linguee Bot", "Voyager", "CyberPatrol", "voilabot", "baiduspider", "citeseerxbot", "spbot", "twengabot", "postrank", "turnitinbot", "scribdbot", "page2rss", "sitebot", "linkdex", "ezooms", "dotbot", "mail\\.ru", "discobot", "heritrix", "findthatfile", "europarchive.org", "NerdByNature.Bot", "sistrix crawler", "ahrefsbot", "Aboundex", "domaincrawler", "wbsearchbot", "summify", "ccbot", "edisterbot", "seznambot", "ec2linkfinder", "gslfbot", "aihitbot", "intelium_bot", "yeti", "RetrevoPageAnalyzer", "lb-spider", "sogou", "lssbot", "careerbot", "wotbox", "wocbot", "ichiro", "DuckDuckBot", "lssrocketcrawler", "drupact", "webcompanycrawler", "acoonbot", "openindexspider", "gnam gnam spider", "web-archive-net.com.bot", "backlinkcrawler", "coccoc", "integromedb", "content crawler spider", "toplistbot", "seokicks-robot", "it2media-domain-crawler", "ip-web-crawler.com", "siteexplorer.info", "elisabot" };

                        for (int x = 0; x < bots.Length; x++)
                        {
                            if (userAgent.ToLower().Contains(bots[x].ToLower()))
                            {
                                browser = bots[x] + " (Spider)";
                            }
                        }

                        if (browser == "Unknown")
                        {
                            #region Unknown bots

                            if (userAgent.ToLower().Contains("crawler") || userAgent.ToLower().Contains("bot") || userAgent.ToLower().Contains("spider") || userAgent.ToLower().Contains("daemon") || userAgent.ToLower().Contains("agent"))
                            {
                                browser = "Unknown (Spider)";
                            }

                            #endregion
                        }
                    }

                    browserName = browser;

                    #endregion
                }

                #endregion
            }

            return browser;
        }

        /// <summary><![CDATA[
        /// Return the browser major version number.
        /// ]]></summary>
        /// <returns>Browser major version number.</returns>
        public static string GetBrowserMajorVersion()
        {
            if (HttpContext.Current != null)
            {
                System.Web.HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;
                return browser.MajorVersion.ToString();
            }

            else
            {
                return "0";
            }
        }

        /// <summary><![CDATA[
        /// Return the browser minor version number.
        /// ]]></summary>
        /// <returns>Browser minor version number.</returns>
        public static string GetBrowserMinorVersion()
        {
            if (HttpContext.Current != null)
            {
                System.Web.HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;
                return browser.MinorVersion.ToString();
            }

            else
            {
                return "0";
            }
        }

        /// <summary><![CDATA[
        /// Return the IP address of a web visitor.
        /// ]]></summary>
        /// <returns>IP address</returns>
        public static string GetIPAddress()
        {
            if (HttpContext.Current != null)
            {
                if (HttpContext.Current.Request.UserHostAddress == "::1")
                {
                    return "127.0.0.1";
                }

                else
                {
                    return HttpContext.Current.Request.UserHostAddress;
                }
            }

            else
            {
                return "127.0.0.1";
            }
        }

        /// <summary><![CDATA[
        /// Return the operating system type for the current user agent
        /// ]]></summary>
        /// <returns>Operating friendly system type (e.g. "Mac OS X 10.8").</returns>
        public static string GetOSType()
        {
            string userAgent = "";

            if (HttpContext.Current != null)
            {
                if (HttpContext.Current.Request.UserAgent != null)
                {
                    userAgent = HttpContext.Current.Request.UserAgent;
                }
            }

            return (GetOSType(userAgent));
        }

        /// <summary><![CDATA[
        /// Return the operating system type and version for the current user agent
        /// ]]></summary>
        /// <param name="userAgent">Web browser User Agent string</param>
        /// <returns>Operating friendly system type (e.g. "Mac OS X 10.8").</returns>
        public static string GetOSType(string userAgent)
        {
            long majorVersion = 0;
            long minorVersion = 0;
            long buildVersion = 0;
            string osName = "Unknown";

            return GetOSType(userAgent, out majorVersion, out minorVersion, out buildVersion, out osName);
        }

        /// <summary><![CDATA[
        /// Return the operating system type for the current user agent
        /// ]]></summary>
        /// <param name="userAgent">Web browser User Agent string</param>
        /// <param name="majorVersion">Output of major version</param>
        /// <param name="minorVersion">Output of minor version</param>
        /// <param name="buildVersion">Output of build version</param>
        /// <param name="osName">Output of OS name</param>
        /// <returns>Operating friendly system type (e.g. "Mac OS X 10.8").</returns>
        public static string GetOSType(string userAgent, out long majorVersion, out long minorVersion, out long buildVersion, out string osName)
        {
            string os = "Unknown";
            majorVersion = 0;
            minorVersion = 0;
            buildVersion = 0;
            osName = os;

            userAgent = userAgent.Trim();

            if (!string.IsNullOrEmpty(userAgent))
            {
                #region iOS

                if (os == "Unknown")
                {
                    if (userAgent.Contains("iPhone") || userAgent.Contains("iPad") || userAgent.Contains("iPod"))
                    {
                        os = "iOS";
                        string pattern = @" OS (\d+_\d+(_\d+)?)";

                        os = BuildMatch(pattern, userAgent, os, 1, "", out osName, out majorVersion, out minorVersion, out buildVersion);

                        if (userAgent.Contains("iPad"))
                        {
                            os += " (Tablet)";
                            osName += " (Tablet)";
                        }
                        else if (userAgent.Contains("iPhone"))
                        {
                            os += " (Phone)";
                            osName += " (Phone)";
                        }
                        else
                        {
                            os += " (iPod)";
                            osName += " (iPod)";
                        }
                    }
                }

                #endregion

                #region Android

                if (os == "Unknown")
                {
                    if (userAgent.Contains("Android"))
                    {
                        os = "Android";
                        string pattern = @"Android (\d+\.\d+(\.\d+)?)";

                        os = BuildMatch(pattern, userAgent, os, 1, "", out osName, out majorVersion, out minorVersion, out buildVersion);

                        if (userAgent.Contains("mobile") || userAgent.Contains("Mobile"))
                        {
                            os += " (Phone)";
                            osName += " (Phone)";
                        }

                        else
                        {
                            os += " (Tablet)";
                            osName += " (Tablet)";
                        }
                    }
                }

                #endregion

                #region OS X and macOS

                if (os == "Unknown")
                {
                    if (userAgent.Contains("OS X") || userAgent.Contains("Mac_PowerPC") || userAgent.Contains("Macintosh"))
                    {
                        os = "OS X";
                        string pattern = @"OS X (\d+_\d+(_\d+)?)";

                        os = BuildMatch(pattern, userAgent, os, 1, "", out osName, out majorVersion, out minorVersion, out buildVersion);

                        if (majorVersion < 1)
                        {
                            pattern = @"OS X (\d+.\d+(.\d+)?)";

                            os = BuildMatch(pattern, userAgent, os, 1, "", out osName, out majorVersion, out minorVersion, out buildVersion);
                        }

                        if (os != "Unknown")
                        {
                            if (majorVersion > 9 && minorVersion > 11)
                            {
                                os = osName = "macOS";
                            }
                        }
                    }
                }

                #endregion

                #region Windows Phone

                if (os == "Unknown")
                {
                    if (userAgent.Contains("Windows Phone"))
                    {
                        os = "Windows Phone";
                        string pattern = @"((Windows Phone)|(Windows Phone OS)) (\d+\.\d+(\.\d+)?)";

                        os = BuildMatch(pattern, userAgent, os, 4, "", out osName, out majorVersion, out minorVersion, out buildVersion);

                        os += " (Phone)";
                        osName += " (Phone)";
                    }
                }

                #endregion

                #region Windows

                if (os == "Unknown")
                {
                    if (userAgent.Contains("Windows") || userAgent.Contains("Win16") || userAgent.Contains("Win95") || userAgent.Contains("Win98") || userAgent.Contains("WinNT"))
                    {
                        os = "Windows";

                        #region Windows NT Kernel

                        string pattern = @"Windows NT (\d+\.\d+)";

                        BuildMatch(pattern, userAgent, os, 1, "", out osName, out majorVersion, out minorVersion, out buildVersion);

                        if (majorVersion > 0)
                        {
                            if (majorVersion < 5)
                            {
                                os += " NT " + majorVersion + "." + minorVersion;
                            }

                            else if (majorVersion == 5)
                            {
                                if (minorVersion == 0)
                                {
                                    os += " 2000";
                                }

                                else if (minorVersion == 1)
                                {
                                    os += " XP";
                                }

                                else if (minorVersion == 2)
                                {
                                    os += " Server 2003";
                                }
                            }

                            else if (majorVersion == 6)
                            {
                                if (minorVersion == 0)
                                {
                                    os += " Vista";
                                }

                                else if (minorVersion == 1)
                                {
                                    os += " 7";
                                }

                                else if (minorVersion == 2)
                                {
                                    os += " 8";
                                }

                                else if (minorVersion == 3)
                                {
                                    os += " 8.1";
                                }
                            }

                            else if (majorVersion == 10)
                            {
                                os += " 10." + minorVersion;
                            }

                            if (userAgent.Contains("Touch"))
                            {
                                os += " (Tablet)";
                            }
                        }

                        #endregion

                        #region Legacy OS versions

                        if (os == "Windows")
                        {
                            if (userAgent.Contains("Windows 2000"))
                            {
                                os += " 2000";
                                majorVersion = 5;
                                minorVersion = 0;
                            }

                            else if (userAgent.Contains("Windows CE"))
                            {
                                os += " CE";
                                majorVersion = 1;
                                minorVersion = 0;
                            }

                            else if (userAgent.Contains("Windows XP"))
                            {
                                os += " XP";
                                majorVersion = 5;
                                minorVersion = 1;
                            }

                            else if (userAgent.Contains("WinNT"))
                            {
                                os += " NT 4.0";
                                majorVersion = 4;
                                minorVersion = 0;
                            }

                            else if (userAgent.Contains("Windows Me") || userAgent.Contains("Windows 9x 4.9"))
                            {
                                os += " Me";
                                majorVersion = 4;
                                minorVersion = 9;
                            }

                            else if (userAgent.Contains("Win98") || userAgent.Contains("Windows 98"))
                            {
                                os += " 98";
                                majorVersion = 4;
                                minorVersion = 1;
                            }

                            else if (userAgent.Contains("Win95") || userAgent.Contains("Windows 95") || userAgent.Contains("Windows_95"))
                            {
                                os += " 95";
                                majorVersion = 4;
                                minorVersion = 0;
                            }

                            else if (userAgent.Contains("Win16"))
                            {
                                os += " 3.11";
                                majorVersion = 3;
                                minorVersion = 1;
                                buildVersion = 1;
                            }
                        }

                        #endregion

                        osName = os;

                        if (userAgent.ToLower().Contains("mobile"))
                        {
                            os += " (Phone)";
                            osName += " (Phone)";
                        }
                    }
                }

                #endregion

                #region Other OS types and bots

                if (os == "Unknown")
                {
                    string[] agents =
                    {
                        "Open BSD", @"OpenBSD",
                        "Sun OS", @"SunOS",
                        "Linux", @"(Linux)|(X11)",
                        "QNX", @"QNX",
                        "BeOS", @"BeOS",
                        "OS/2", @"OS/2"
                    };

                    for (int x = 0; x < agents.Length - 1; x += 2)
                    {
                        if (Regex.IsMatch(userAgent, agents[x + 1]))
                        {
                            os = agents[x];
                            x = agents.Length;
                        }
                    }

                    if (userAgent.ToLower().Contains("mobile"))
                    {
                        os += " (Phone)";
                        osName += " (Phone)";
                    }
                }

                #endregion
            }

            return (os);
        }

        #endregion

        #region Query string

        /// <summary><![CDATA[
        /// Remove a querystring from the URL. Looks for "?" and removes everything from it to the end.
        /// ]]></summary>
        /// <param name="url">URL to evaluate</param>
        /// <returns>URL without a query string</returns>
        public static string RemoveQueryString(this string url)
        {
            var result = url;

            if (!string.IsNullOrEmpty(url))
            {
                if (url.IndexOf("?") > 0)
                {
                    result = url.Substring(0, url.IndexOf("?"));
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Return the query string from a provided URL.
        /// ]]></summary>
        /// <param name="filepath">File URL (e.g. "/download/file.pdf?abc=1")</param>
        /// <param name="includePrefix">Include the "?" prefix</param>
        /// <returns>Query string (e.g. "?abc=1")</returns>
        public static string QueryString(this string filepath, bool includePrefix = true)
        {
            if (filepath.Contains("?"))
            {
                return filepath.Substring(filepath.IndexOf("?") + (includePrefix ? 0 : 1));
            }

            else
            {
                return "";
            }
        }

        /// <summary><![CDATA[
        /// Get the current URL parameters as a single string.
        /// ]]></summary>
        /// <param name="includePrefix">Include the leading "?" if there are parameters.</param>
        /// <returns>The current URL parameters as a single string with the leading "?" if there are parameters.</returns>
        public static string GetUrlParams(bool includePrefix)
        {
            string urlParams = "";

            if (HttpContext.Current.Request.ServerVariables["QUERY_STRING"].ToString().Length > 0)
            {
                urlParams = HttpContext.Current.Request.ServerVariables["QUERY_STRING"].ToString();
            }

            if (includePrefix)
            {
                if (!string.IsNullOrEmpty(urlParams))
                {
                    urlParams = "?" + urlParams;
                }
            }

            return urlParams;
        }

        /// <summary><![CDATA[
        /// When passed a URL parameter list, it is returned with the leading "?",
        /// or as a blank string if there are no parameters. This method is used to
        /// ensure that a URL parameter list starts with a "?".
        /// ]]></summary>
        /// <param name="urlParams">URL parameters list with or without the leading "?".</param>
        /// <returns>The URL parameters as a single string with the leading "?" if there are parameters, or an empty string.</returns>
        public static string AddUrlParamPrefix(this string urlParams)
        {
            string result = urlParams;

            if (!string.IsNullOrEmpty(result))
            {
                if (!result.StartsWith("?"))
                {
                    result = "?" + result;
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Get the current URL parameters as a single string, without the leading "?".
        /// ]]></summary>
        /// <returns>The current URL parameters as a single string, without the leading "?".</returns>
        public static string GetUrlParams()
        {
            return GetUrlParams(false);
        }

        /// <summary><![CDATA[
        /// Remove a URL parameter and return the new request string.
        /// ]]></summary>
        /// <param name="urlParameterString">The URL parameter string to modify, without the leading "?".</param>
        /// <param name="urlParam">Name of the URL parameter to remove.</param>
        /// <returns>Altered URL parameter string without the leading "?".</returns>
        public static string DeleteUrlParameter(this string urlParameterString, string urlParam)
        {
            string urlParams = urlParameterString;
            string result = "";

            if (urlParams.Length > 0)
            {
                string[] paramArray = urlParams.Split('&');

                for (int x = 0; x < paramArray.Length; x++)
                {
                    if (!paramArray[x].StartsWith(urlParam + "="))
                    {
                        result += "&" + paramArray[x];
                    }
                }

                result = result.TrimStart('&');
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Remove a URL parameter from the current URL parameter list
        /// and return the new request string.
        /// ]]></summary>
        /// <param name="urlParam">Name of the URL parameter to remove.</param>
        /// <returns>Altered URL parameter string without the leading "?".</returns>
        public static string DeleteUrlParameter(string urlParam)
        {
            return DeleteUrlParameter(GetUrlParams(), urlParam);
        }

        /// <summary><![CDATA[
        /// Add or Edit a URL parameter value.
        /// If the parameter exists on the supplied URL parameter string, it is modified.
        /// Otherwise, its value is changed.
        /// ]]></summary>
        /// <param name="urlParameterString">The URL parameter string to modify, without the leading "?".</param>
        /// <param name="urlParam">Name of the URL parameter.</param>
        /// <param name="value">Value of the URL parameter to add or edit.</param>
        /// <returns>Altered URL parameter string without the leading "?".</returns>
        public static string SetUrlParameterValue(this string urlParameterString, string urlParam, string value)
        {
            string urlParams = urlParameterString;
            string result = "";

            if (urlParams.Length > 0)
            {
                string[] paramArray = urlParams.Split('&');
                bool found = false;

                for (int x = 0; x < paramArray.Length; x++)
                {
                    if (paramArray[x].StartsWith(urlParam + "=") && !found)
                    {
                        found = true;
                        paramArray[x] = urlParam + "=" + HttpUtility.UrlEncode(value).Replace("'", "%27");
                    }

                    result += "&" + paramArray[x];
                }

                if (!found)
                {
                    result += "&" + urlParam + "=" + HttpUtility.UrlEncode(value).Replace("'", "%27");
                }

                result = result.TrimStart('&');
            }

            else
            {
                result = urlParam + "=" + HttpUtility.UrlEncode(value).Replace("'", "%27");
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Add or Edit a URL parameter value in the current URL.
        /// If the parameter exists, it is modified. Otherwise, its value is changed.
        /// ]]></summary>
        /// <param name="urlParam">Name of the URL parameter.</param>
        /// <param name="value">Value of the URL parameter to add or edit.</param>
        /// <returns>Altered URL parameter string without the leading "?".</returns>
        public static string SetUrlParameterValue(string urlParam, string value)
        {
            return SetUrlParameterValue(GetUrlParams(), urlParam, value);
        }

        #endregion
    }
}
