using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using Umbraco.Core;
using Umbraco.Core.Events;
using Umbraco.Core.Logging;
using Umbraco.Core.Models;
using Umbraco.Core.Services;
using Umbraco.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Event handlers for Carbide functionality.
    /// ]]></summary>
    public class EventHandlers : ApplicationEventHandler
    {
        /// <summary><![CDATA[
        /// Event fired after Umbraco application has been initialized.
        /// ]]></summary>
        /// <param name="umbracoApplication">Umbraco base app</param>
        /// <param name="applicationContext">Umbraco context</param>
        protected override void ApplicationInitialized(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            UmbracoApplicationBase.ApplicationInit += InjectCarbideDependencies;
        }

        /// <summary><![CDATA[
        /// Process Carbide dependencies on startup
        /// ]]></summary>
        private void InjectCarbideDependencies(object sender, EventArgs e)
        {
            var tabExists = false;
            var file = "/config/Dashboard.config";
            var aliases = Config.GetConfigFileValues(file, "//dashBoard/section/@alias");

            foreach (var alias in aliases)
            {
                if (alias == "CarbideContentTools")
                {
                    tabExists = true;
                    break;
                }
            }

            if (Config.GetKeyValue<bool>("Tabs.Content.Enabled", true, "Fynydd.Carbide"))
            {
                if (tabExists == false)
                { 
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.Load(StorageHelpers.MapPath(file));
                    XmlNode root = xmlDoc.DocumentElement;

                    XmlDocument fragment = new XmlDocument();
                    fragment.LoadXml(StorageHelpers.CarbideEmbeddedHtml("DashControl.xml"));
                    XmlNode tab = xmlDoc.ImportNode(fragment.DocumentElement, true);

                    root.InsertBefore(tab, root.FirstChild);

                    xmlDoc.Save(StorageHelpers.MapPath(file));
                }
            }

            else
            {
                if (tabExists == true)
                {
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.Load(StorageHelpers.MapPath(file));

                    XmlNodeList xnList = xmlDoc.SelectNodes("//dashBoard/section[@alias='CarbideContentTools']");

                    foreach (XmlNode node in xnList)
                    {
                        node.ParentNode.RemoveChild(node);
                    }

                    xmlDoc.Save(StorageHelpers.MapPath(file));
                }
            }

            // Remove event hook to ensure it only runs once
            UmbracoApplicationBase.ApplicationInit -= InjectCarbideDependencies;
        }
    }
}
