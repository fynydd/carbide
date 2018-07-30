using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Xml;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The Configuration class contains methods and properties for manipulating configuration properties
    /// within the Web.config file.
    /// 
    /// Add a reference to the Carbide configuration section in your Web.config file as below.
    ///	]]></summary>
    /// <example>
    /// <code><![CDATA[
    /// <configSections>
    ///		<section name="Fynydd.Carbide" type="System.Configuration.NameValueFileSectionHandler"/>
    /// </configSections>
    /// <Fynydd.Carbide>
    /// 	    <add key="OutputCacheTime" value="300"/>
    ///		<add key="EncryptionBaseKey" value="10,64,9,2,13,99,67,118,241,133,116,30,217,183,146,18,56,74,90,36,26,129,81,219"/>
    ///		<add key="EncryptionInitVector" value="162,199,183,54,126,11,114,221,16,187,122,221,151,9,176,75,119,17"/>
    /// </Fynydd.Carbide>
    ///	]]></code>
    ///	</example>
    public static class Config
    {
        /// <summary><![CDATA[
        /// Retrieve the value of an application setting from the Web.config file.
        /// ]]></summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <param name="defaultValue">A default value if the key does not exist.</param>
        /// <param name="sectionName">Optional section name (e.g. "Fynydd.Carbide")</param>
        /// <returns>A key value or the default value if the key does not exist.</returns>
        public static T GetKeyValue<T>(string keyName, T defaultValue, string sectionName = "")
        {
            if (string.IsNullOrEmpty(sectionName) == false)
            {
                NameValueCollection settings = (NameValueCollection)ConfigurationManager.GetSection(sectionName);

                if (settings != null)
                {
                    if (settings[keyName] != null)
                    {
                        var value = settings[keyName].ToString();

                        return (T)Convert.ChangeType(value, typeof(T));
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

            else
            {
                if (ConfigurationManager.AppSettings[keyName] != null)
                {
                    var value = ConfigurationManager.AppSettings[keyName].ToString();

                    return (T)Convert.ChangeType(value, typeof(T));
                }

                else
                {
                    return defaultValue;
                }
            }
        }

        /// <summary><![CDATA[
        /// Retrieve the value of an application setting from the Web.config file.
        /// ]]></summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <param name="defaultValue">A default value if the key does not exist.</param>
        /// <param name="sectionName">Config section name.</param>
        /// <returns>A key value or a default value if the key does not exist.</returns>
        public static string GetKeyValue(string keyName, string defaultValue, string sectionName = "")
        {
            return GetKeyValue<string>(keyName, defaultValue, sectionName);
        }

        /// <summary><![CDATA[
        /// Retrieve the value of an application setting from the Web.config file.
        /// ]]></summary>
        /// <param name="keyName">Key name for which a value should be returned.</param>
        /// <returns>A key value or an empty string if the key does not exist.</returns>
        public static string GetKeyValue(string keyName)
        {
            return GetKeyValue<string>(keyName, "", "");
        }

        /// <summary><![CDATA[
        /// Retrieve XML node data from a config file.
        /// ]]></summary>
        /// <param name="configFilePath">Web style path to the config file</param>
        /// <param name="nodePath">XPath for node selection</param>
        /// <returns>Enumerable string array of values</returns>
        public static string[] GetConfigFileValues(string configFilePath, string nodePath)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Storage.MapPath(configFilePath));
            XmlNodeList nodeList = xmlDoc.DocumentElement.SelectNodes(nodePath);
            List<string> result = new List<string>();

            foreach (XmlNode node in nodeList)
            {
                result.Add(node.InnerText);
            }

            return result.ToArray();
        }
    }
}
