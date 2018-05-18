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

namespace Fynydd.Carbide
{
    public class CarbideFileController : UmbracoApiController
    {
        public static string Version { get { return "2018-05-18"; } }

        [HttpGet]
        public HttpResponseMessage Svg(int id) // /umbraco/api/carbidefile/svg/?id=1024
        {
            string result = "";

            try
            {
                var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());
                var svg = umbracoHelper.TypedMedia(id);

                if (svg != null)
                {
                    result = StorageHelpers.ReadFile(svg.Url);

                    if (result.Length > 0)
                    {
                        if (result.Contains("<svg "))
                        {
                            result = ContentHelpers.CleanSvg(result, false);
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
