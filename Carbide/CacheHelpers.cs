using System;
using System.Collections;
using System.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Caching class contains methods and properties for
    /// manipulating the page output cache, as well as other
    /// caching and history functionality. Cache time is determined by the "OutputCache.Expiration.Seconds" setting
    /// in the Carbide configuration section of the web.config file. The time is in seconds.
    /// ]]></summary>
    /// <example>
    /// <code><![CDATA[
    /// <configSections>
    ///		<section name="Fynydd.Carbide" type="System.Configuration.NameValueFileSectionHandler"/>
    /// </configSections>
    /// <Fynydd.Carbide>
    ///     <add key="OutputCache.Expiration.Seconds" value="300"/>
    /// </Fynydd.Carbide>
    ///	]]></code>
    ///	</example>
    public static class CacheHelpers
    {
        #region Properties

        /// <summary><![CDATA[
        /// Returns the outputCacheTime setting from the Carbide Settings within the Web.config file.
        /// ]]></summary>
        public static int OutputCacheTime
        {
            get
            {
                return Config.GetKeyValue<int>("OutputCache.Expiration.Seconds", 300, "Fynydd.Carbide");
            }
        }

        #endregion

        #region Methods

        /// <summary><![CDATA[
        /// Output Caching wrapper method. Caches an object for the number of seconds specified.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Data to store in the cache</param>
        /// <param name="expirationSeconds">Expiration time, in seconds, from the current date and time.</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheAdd<T>(string key, T value, int expirationSeconds, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            if (CacheExists(key, context))
            {
                CacheDelete(key, context);
            }

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Output Caching wrapper method. Caches an object until the date and time specified.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time.</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheAdd<T>(string key, T value, DateTime expirationDateTime, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            if (CacheExists(key, context))
            {
                CacheDelete(key, context);
            }

            context.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Output Caching wrapper method. Caches an object for the life of the application.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheAddPermanent<T>(string key, T value, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            if (CacheExists(key, context))
            {
                CacheDelete(key, context);
            }

            context.Cache.Add(key, value, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.High, null);
        }

        /// <summary><![CDATA[
        /// Output Caching wrapper method. Caches an object for a number of seconds specified
        /// in the web.config file under the Carbide Settings key "OutputCache.Expiration.Seconds".
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheAdd<T>(string key, T value, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Clear the output cache.
        /// ]]></summary>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheClear(HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            IDictionaryEnumerator CacheEnum = context.Cache.GetEnumerator();

            while (CacheEnum.MoveNext())
            {
                context.Cache.Remove(CacheEnum.Key.ToString());
            }
        }

        /// <summary><![CDATA[
        /// Delete a single cached item.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheDelete(string key, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            if (string.IsNullOrWhiteSpace(key) == false)
            {
                if (CacheExists(key, context) == true)
                {
                    context.Cache.Remove(key);
                }
            }
        }

        /// <summary><![CDATA[
        /// Output caching wrapper method. Determines if a cached item exists or not.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        /// <returns>true if cached item exists, false if not.</returns>
        public static bool CacheExists(string key, HttpContext context = null)
        {
            bool result = false;

            context = ContextHelpers.EnsureAppContext(context);

            if (context.Cache[key] != null)
            {
                result = true;
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Output caching wrapper method. Retrieve a typed cache item.
        /// ]]></summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        /// <returns>Cached value</returns>
        public static T Cache<T>(string key, HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            try
            {
                if (CacheExists(key, context))
                {
                    return (T)HttpContext.Current.Cache[key];
                }

                else
                {
                    return default(T);
                }
            }
            
            catch (InvalidCastException)
            {
                return default(T);
            }
        }

        #endregion
    }
}
