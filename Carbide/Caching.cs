using System;
using System.Collections;
using System.Web;

namespace Fynydd.Carbide
{
    /// <summary>
    /// The Caching class contains methods and properties for
    /// manipulating the page output cache, as well as other
    /// caching and history functionality. Cache time is determined by the "OutputCacheTime" setting
    /// in the Carbide configuration section of the web.config file. The time is in seconds.
    /// <example>
    /// <code>
    /// <![CDATA[
    /// <configSections>
    ///		<section name="Fynydd.Carbide" type="System.Configuration.NameValueFileSectionHandler"/>
    /// </configSections>
    /// <Fynydd.Carbide>
    ///     <add key="OutputCacheTime" value="300"/>
    ///		<add key="EncryptionBaseKey" value="10,64,9,2,13,99,67,118,241,133,116,30,217,183,146,18,56,74,90,36,26,129,81,219"/>
    ///		<add key="EncryptionInitVector" value="162,199,183,54,126,11,114,221,16,187,122,221,151,9,176,75,119,17"/>
    /// </Fynydd.Carbide>
    ///	]]>
    ///	</code>
    ///	</example>
    /// </summary>
    public static class Caching
    {
        #region Properties

        /// <summary>
        /// Returns the outputCacheTime setting from the Carbide Settings within the Web.config file.
        /// </summary>
        public static int OutputCacheTime
        {
            get
            {
                return Config.GetKeyValue<int>("OutputCacheTime", 300, "Fynydd.Carbide");
            }
        }

        #endregion

        #region Methods

        /// <summary>
        /// Output Caching wrapper method. Caches an object for the number of seconds specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="expirationSeconds">Expiration time, in seconds, from the current date and time.</param>
        public static void Cache(string key, object value, int expirationSeconds)
        {
            HttpContext.Current.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value for the number of seconds specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        /// <param name="expirationSeconds">Expiration time, in seconds, from the current date and time.</param>
        public static void Cache(string key, string value, int expirationSeconds)
        {
            HttpContext.Current.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches an object until the date and time specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time.</param>
        public static void Cache(string key, object value, DateTime expirationDateTime)
        {
            HttpContext.Current.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value until the date and time specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time.</param>
        public static void Cache(string key, string value, DateTime expirationDateTime)
        {
            HttpContext.Current.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches an object for a number of seconds specified
        /// in the web.config file under the Carbide Settings key "OutputCacheTime".
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        public static void Cache(string key, object value)
        {
            HttpContext.Current.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value for a number of seconds specified
        /// in the web.config file under the Carbide Settings key "OutputCacheTime".
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        public static void Cache(string key, string value)
        {
            HttpContext.Current.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Clear the output cache.
        /// </summary>
        public static void CacheClear()
        {
            IDictionaryEnumerator CacheEnum = HttpContext.Current.Cache.GetEnumerator();

            while (CacheEnum.MoveNext())
            {
                HttpContext.Current.Cache.Remove(CacheEnum.Key.ToString());
            }
        }

        /// <summary>
        /// Output caching wrapper method. Determines if a cached item exists or not.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <returns>true if cached item exists, false if not.</returns>
        public static bool CacheValid(string key)
        {
            bool result = false;

            if (HttpContext.Current.Cache[key] != null)
            {
                result = true;
            }

            return result;
        }

        #endregion
    }
}