using System;
using System.Collections;
using System.Web;

namespace Fynydd.Carbide
{
    /// <summary>
    /// The Caching class contains methods and properties for
    /// manipulating the page output cache, as well as other
    /// caching and history functionality. Cache time is determined by the "OutputCache.Expiration.Seconds" setting
    /// in the Carbide configuration section of the web.config file. The time is in seconds.
    /// <example>
    /// <code>
    /// <![CDATA[
    /// <configSections>
    ///		<section name="Fynydd.Carbide" type="System.Configuration.NameValueFileSectionHandler"/>
    /// </configSections>
    /// <Fynydd.Carbide>
    ///     <add key="OutputCache.Expiration.Seconds" value="300"/>
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
                return Config.GetKeyValue<int>("OutputCache.Expiration.Seconds", 300, "Fynydd.Carbide");
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
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, object value, int expirationSeconds, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches an object for the life of the application.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CachePermanent(string key, object value, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.High, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value for the number of seconds specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        /// <param name="expirationSeconds">Expiration time, in seconds, from the current date and time.</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, string value, int expirationSeconds, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(expirationSeconds)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches an object until the date and time specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time.</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, object value, DateTime expirationDateTime, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value until the date and time specified.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        /// <param name="expirationDateTime">Expiration date and time.</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, string value, DateTime expirationDateTime, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, expirationDateTime, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches an object for a number of seconds specified
        /// in the web.config file under the Carbide Settings key "OutputCache.Expiration.Seconds".
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">Object to store in the cache</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, object value, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Output Caching wrapper method. Caches a string value for a number of seconds specified
        /// in the web.config file under the Carbide Settings key "OutputCache.Expiration.Seconds".
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="value">String value to store in the cache</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void Cache(string key, string value, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            context.Cache.Add(key, value, null, DateTime.Now.AddSeconds(Convert.ToDouble(OutputCacheTime)), System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Normal, null);
        }

        /// <summary>
        /// Clear the output cache.
        /// </summary>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheClear(HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            IDictionaryEnumerator CacheEnum = context.Cache.GetEnumerator();

            while (CacheEnum.MoveNext())
            {
                context.Cache.Remove(CacheEnum.Key.ToString());
            }
        }

        /// <summary>
        /// Delete a single cached item.
        /// </summary>
        /// <param name="context">HttpContext; defaults to Current</param>
        public static void CacheDelete(string key, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            if (string.IsNullOrWhiteSpace(key) == false)
            {
                if (CacheValid(key, context) == true)
                {
                    context.Cache.Remove(key);
                }
            }
        }

        /// <summary>
        /// Output caching wrapper method. Determines if a cached item exists or not.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        /// <returns>true if cached item exists, false if not.</returns>
        public static bool CacheValid(string key, HttpContext context = null)
        {
            bool result = false;

            if (context == null)
            {
                context = HttpContext.Current;
            }

            if (context.Cache[key] != null)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Output caching wrapper method. Retrieve a typed cache item.
        /// </summary>
        /// <param name="key">Unique name of the cached item</param>
        /// <param name="context">HttpContext; defaults to Current</param>
        /// <returns>Cached value</returns>
        public static T Cache<T>(string key, HttpContext context = null)
        {
            if (context == null)
            {
                context = HttpContext.Current;
            }

            if (string.IsNullOrWhiteSpace(key) == false)
            {
                if (CacheValid(key, context))
                {
                    var value = context.Cache[key];

                    if (typeof(T) == typeof(string))
                    {
                        return (T)(value == null ? (object)string.Empty : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(bool))
                    {
                        return (T)(value == null ? (object)false : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(int) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(long))
                    {
                        return (T)(value == null ? (object)-1 : Convert.ChangeType(value, typeof(T)));
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)(value == null ? (object)DateTime.MinValue : Convert.ChangeType(value, typeof(T)));
                    }

                    else
                    {
                        return (T)Convert.ChangeType(value, typeof(T));
                    }
                }

                else
                {
                    if (typeof(T) == typeof(string))
                    {
                        return (T)Convert.ChangeType("", typeof(T));
                    }

                    else if (typeof(T) == typeof(DateTime))
                    {
                        return (T)Convert.ChangeType(DateTime.MinValue, typeof(T));
                    }

                    else
                    {
                        return (T)(object)null;
                    }
                }
            }

            else
            {
                return (T)(object)null;
            }
        }

        #endregion
    }
}
