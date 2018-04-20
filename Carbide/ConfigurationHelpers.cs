using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Argentini.Carbide
{
    /// <summary>
    /// The ConfigurationHelpers class contains methods and properties for 
    /// manipulating configuration properties
    /// within the Web.config file.
    /// </summary>
    public static class ConfigurationHelpers
    {
        #region Properties

        /// <summary>
        /// Return the version number of the class; read-only.
        /// </summary>
        /// <value>
        /// A string with the version number of the class.
        /// </value>
        public static string Version
        {
            get
            {
                return "2018.04.20A";
            }
        }

        #endregion

        #region Methods

        /// <summary>
        /// Retrieve the value of an application setting from the Web.config file.
        /// </summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <param name="defaultValue">A default value if the key does not exist.</param>
        /// <returns>A key value or the default value if the key does not exist.</returns>
        public static T GetKeyValue<T>(string keyName, T defaultValue)
        {
			if (ConfigurationManager.AppSettings[keyName] != null)
            {
				var value = ConfigurationManager.AppSettings[keyName].ToString();

                if (typeof(T) == typeof(string))
                {
					return (T)(object)value;
                }

                else if (typeof(T) == typeof(bool))
                {
					return (T)((object)value ?? defaultValue);
                }

                else if (typeof(T) == typeof(int) || typeof(T) == typeof(uint) || typeof(T) == typeof(decimal) || typeof(T) == typeof(Decimal) || typeof(T) == typeof(double) || typeof(T) == typeof(Double) || typeof(T) == typeof(float) || typeof(T) == typeof(Int16) || typeof(T) == typeof(Int32) || typeof(T) == typeof(Int64) || typeof(T) == typeof(Single) || typeof(T) == typeof(short) || typeof(T) == typeof(ushort) || typeof(T) == typeof(long) || typeof(T) == typeof(ulong))
                {
					return (T)((object)value ?? defaultValue);
                }

                else if (typeof(T) == typeof(DateTime))
                {
					return (T)((object)value ?? defaultValue);
                }

                else
                {
					return defaultValue;
                }
            }

            else
            {
				return defaultValue;
            }
        }

        /// <summary>
        /// Retrieve the value of an application setting from the Web.config file.
        /// </summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <param name="defaultValue">A default value if the key does not exist.</param>
        /// <returns>A key value or a default value if the key does not exist.</returns>
        public static string GetKeyValue(string keyName, string defaultValue)
        {
            return GetKeyValue<string>(keyName, defaultValue);
        }

        /// <summary>
        /// Retrieve the value of an application setting from the Web.config file.
        /// </summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <returns>A key value or an empty string if the key does not exist.</returns>
        public static string GetKeyValue(string keyName)
        {
            return GetKeyValue<string>(keyName, "");
        }

        #endregion
    }
}
