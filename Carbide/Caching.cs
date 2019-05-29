using System;
using System.Collections;
using System.Web;

using Umbraco.Web;

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
    public static class Caching
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
        /// Caches an object for the number of seconds specified.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Data to store in the cache</param>
        /// <param name="expirationSeconds">Expiration time, in seconds, from the current date and time</param>
        public static void CacheAdd<T>(this UmbracoContext umbCtx, string key, T value, int expirationSeconds)
        {
            if (umbCtx.CacheExists(key))
            {
                umbCtx.CacheDelete(key);
            }

            umbCtx.HttpContext.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Caches an object until the date and time specified.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time</param>
        public static void CacheAdd<T>(this UmbracoContext umbCtx, string key, T value, DateTime expirationDateTime)
        {
            if (umbCtx.CacheExists(key))
            {
                umbCtx.CacheDelete(key);
            }

            umbCtx.HttpContext.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Caches an object for the life of the application.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        public static void CacheAddPermanent<T>(this UmbracoContext umbCtx, string key, T value)
        {
            if (umbCtx.CacheExists(key))
            {
                umbCtx.CacheDelete(key);
            }

            umbCtx.HttpContext.Cache.Add(key, value, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.High, null);
        }

        /// <summary><![CDATA[
        /// Caches an object for a number of seconds specified in the web.config file
        /// under the Carbide Settings key "OutputCache.Expiration.Seconds".
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        public static void CacheAdd<T>(this UmbracoContext umbCtx, string key, T value)
        {
            umbCtx.HttpContext.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary><![CDATA[
        /// Clear the output cache.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        public static void CacheClear(this UmbracoContext umbCtx)
        {
            IDictionaryEnumerator CacheEnum = umbCtx.HttpContext.Cache.GetEnumerator();

            while (CacheEnum.MoveNext())
            {
                umbCtx.HttpContext.Cache.Remove(CacheEnum.Key.ToString());
            }
        }

        /// <summary><![CDATA[
        /// Delete a single cached item.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        public static void CacheDelete(this UmbracoContext umbCtx, string key)
        {
            if (key.HasValue())
            {
                if (umbCtx.CacheExists(key) == true)
                {
                    umbCtx.HttpContext.Cache.Remove(key);
                }
            }
        }

        /// <summary><![CDATA[
        /// Determine if a cached item exists or not.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <returns>true if cached item exists, false if not</returns>
        public static bool CacheExists(this UmbracoContext umbCtx, string key)
        {
            bool result = false;

            if (umbCtx.HttpContext.Cache[key] != null)
            {
                result = true;
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Retrieve a typed cache item.
        /// ]]></summary>
        /// <param name="umbCtx">Umbraco context to use</param>
        /// <param name="key">Unique name of the cached item</param>
        /// <returns>Cached value</returns>
        public static T Cache<T>(this UmbracoContext umbCtx, string key)
        {
            try
            {
                if (umbCtx.CacheExists(key))
                {
                    return (T)umbCtx.HttpContext.Cache[key];
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
