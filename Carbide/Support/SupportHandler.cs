using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Reflection;
using System.Text;
using System.Web.Http;

using Umbraco.Web.WebApi;

namespace Argentini.Carbide
{
    public class CarbideSupportController : UmbracoApiController
    {
        [HttpGet]
        public HttpResponseMessage Scripts(string file) // /umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers
        {
            string result = "";

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var jsName = "Carbide.Support.Scripts." + file + ".js";

                using (Stream stream = assembly.GetManifestResourceStream(jsName))
                {
                    using (StreamReader reader = new StreamReader(stream))
                    {
                        result = reader.ReadToEnd();
                    }
                }
            }

            catch
            {
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/plain");
            return response;
        }
    }
}
