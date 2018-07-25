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
            var result = false;
            var file = "/config/Dashboard.config";
            var aliases = Config.GetConfigFileValues(file, "//dashBoard/section/@alias");

            foreach (var alias in aliases)
            {
                if (alias.ToLower() == "carbidecontenttools")
                {
                    result = true;
                }
            }

            if (result == false)
            { 
                //<section alias="CarbideContentTools">
                //  <areas>
                //    <area>content</area>
                //  </areas>
                //  <tab caption="Carbide Content Tools">
                //    <control>/umbraco/api/carbidesupport/html/?file=DashControl</control>
                //  </tab>
                //</section>

                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Storage.MapPath(file));
                XmlNode root = xmlDoc.DocumentElement;

                XmlElement section = xmlDoc.CreateElement("section");
                section.SetAttribute("alias", "CarbideContentTools");

                XmlElement areas = xmlDoc.CreateElement("areas");
                XmlElement area = xmlDoc.CreateElement("area");
                area.InnerText = "content";
                areas.AppendChild(area);

                XmlElement tab = xmlDoc.CreateElement("tab");
                tab.SetAttribute("caption", "Carbide Content Tools");
                XmlElement control = xmlDoc.CreateElement("control");
                control.InnerText = "/umbraco/api/carbidesupport/html/?file=DashControl";
                tab.AppendChild(control);

                section.AppendChild(areas);
                section.AppendChild(tab);

                root.InsertBefore(section, root.FirstChild);

                xmlDoc.Save(Storage.MapPath(file));
            }

            UmbracoApplicationBase.ApplicationInit -= InjectCarbideDependencies;
        }
    }
}
