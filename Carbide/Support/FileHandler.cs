using Examine;
using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;
using System.Web.Hosting;
using System.Web.Http;

using Umbraco.Core;
using static Umbraco.Core.Constants;
using Umbraco.Core.Events;
using Umbraco.Core.Models;
using Umbraco.Core.Media;
using Umbraco.Core.Services;
using Umbraco.Web;
using Umbraco.Web.WebApi;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    public class CarbideFileController : UmbracoApiController
    {
        public static string Version { get { return "2018-05-18"; } }

        [HttpGet]
        public HttpResponseMessage Svg(int id, bool clean = false, string color = "") // /umbraco/api/carbidefile/svg/?id=1024&color=008BFF
        {
            string result = "";

            try
            {
                var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());
                var svg = umbracoHelper.TypedMedia(id);

                if (svg != null)
                {
                    result = Storage.ReadFile(svg.Url);

                    if (result.Length > 0)
                    {
                        if (result.Contains("<svg "))
                        {
                            if (clean)
                            {
                                result = MediaHelpers.CleanSvg(result, removeStyles: false, fixStyles: false, removeXmlHeader: false);
                            }

                            if (color != "" && color.Length < 10)
                            {
                                result = MediaHelpers.CleanSvg(result, removeStyles: true, fixStyles: false, removeXmlHeader: false);
                                result = Regex.Replace(result, "#[0-9a-fA-F]{6,8}", color.FixHexColor(), RegexOptions.Singleline);
                                result = result.Replace("<svg ", "<svg style=\"fill: " + color.FixHexColor() + ";\" ");
                            }
                        }
                    }
                }
            }

            catch
            {
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "image/svg+xml");
            return response;
        }
    }
}
