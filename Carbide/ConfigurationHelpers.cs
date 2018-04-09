﻿using System;
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
                return "2018.04.09A";
            }
        }

        #endregion

        #region Methods

        /// <summary>
        /// Retrieve the value of an application setting from the Web.config file.
        /// </summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <returns>A key value or the default value if the key does not exist.</returns>
        public static T GetKeyValue<T>(string keyName, T defaultValue)
        {
            if (typeof(T) == typeof(string))
            {
                if (ConfigurationManager.AppSettings[keyName] != null)
                {
                    return (T)(object)ConfigurationManager.AppSettings[keyName].ToString();
                }

                else
                {
                    return defaultValue;
                }
            }

            else
            {
                if (ConfigurationManager.AppSettings[keyName] != null)
                {
                    var value = ConfigurationManager.AppSettings[keyName].ToString();

                    return (T)(object)value;
                }

                else
                {
                    return defaultValue;
                }
            }
        }

        /// <summary>
        /// Retrieve the value of an application setting from the Web.config file.
        /// </summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <returns>A key value or en empty string if the key does not exist.</returns>
        public static string GetKeyValue(string keyName, string defaultValue)
        {
            return GetKeyValue<string>(keyName, defaultValue);
        }

        /// <summary>
        ///	Return a SQL connection string by name, from the Web.config file.
        /// </summary>
        /// <param name="connectionStringName">Name of a connection string within the 
        /// Web.config file.</param>
        /// <returns>A connection string.</returns>
        public static string GetConnectionString(string connectionStringName)
        {
            string CS = "";

            try
            {
                if (!string.IsNullOrEmpty(connectionStringName))
                {
                    CS = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
                }
            }

            catch
            {
                if (string.IsNullOrEmpty(CS))
                {
                    CS = "";
                }
            }

            return CS;
        }

        #endregion
    }
}
