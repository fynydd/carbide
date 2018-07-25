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
    public class EventHandlers : ApplicationEventHandler
    {
        protected override void ApplicationInitialized(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            UmbracoApplicationBase.ApplicationInit += InjectCarbideDependencies;
        }

        /// <summary>
        /// Process Carbide dependencies on startup
        /// </summary>
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
                    xmlDoc.Load(Storage.MapPath(file));
                    XmlNode root = xmlDoc.DocumentElement;

                    XmlDocument fragment = new XmlDocument();
                    fragment.LoadXml(Storage.CarbideEmbeddedHtml("DashControl.xml"));
                    XmlNode tab = xmlDoc.ImportNode(fragment.DocumentElement, true);

                    root.InsertBefore(tab, root.FirstChild);

                    xmlDoc.Save(Storage.MapPath(file));
                }
            }

            else
            {
                if (tabExists == true)
                {
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.Load(Storage.MapPath(file));

                    XmlNodeList xnList = xmlDoc.SelectNodes("//dashBoard/section[@alias='CarbideContentTools']");

                    foreach (XmlNode node in xnList)
                    {
                        node.ParentNode.RemoveChild(node);
                    }

                    xmlDoc.Save(Storage.MapPath(file));
                }
            }

            UmbracoApplicationBase.ApplicationInit -= InjectCarbideDependencies;
        }
    }
}
