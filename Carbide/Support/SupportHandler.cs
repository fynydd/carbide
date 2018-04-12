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

using Umbraco.Web;
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

        [HttpGet]
        public HttpResponseMessage RebuildCache() // /umbraco/api/carbidesupport/rebuildcache/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
                context.Application["RebuildCacheHistory"] = "<strong>Started " + TemporalHelpers.DateFormat(DateTime.Now, TemporalHelpers.DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TemporalHelpers.TimeFormats.SqlMilitary) + "...</strong><br />";

                result = context.Application["RebuildCacheHistory"].ToString();

                Thread workerThread = new Thread(new ThreadStart(() =>
                {
                    StopWatch timer = new StopWatch();
                    StopWatch timer2 = new StopWatch();

                    try
                    {
                        timer.Start();
                        context.Server.ScriptTimeout = 100000;

                        context.Application["RebuildCacheHistory"] += "1/3 Republishing content... ";
                        timer2.Start();
                        Services.ContentService.RePublishAll();
                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "completed in " + timer2.GetTime() + " seconds<br />";

                        context.Application["RebuildCacheHistory"] += "2/3 Rebuilding Examine indexes... ";
                        timer2.Reset();
                        timer2.Start();
                        ExamineManager.Instance.IndexProviderCollection.ToList().ForEach(index => index.RebuildIndex());
                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "completed in " + timer2.GetTime() + " seconds<br />";

                        context.Application["RebuildCacheHistory"] += "3/3 Refreshing content... ";
                        timer2.Reset();
                        timer2.Start();
                        umbraco.library.RefreshContent();
                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "completed in " + timer2.GetTime() + " seconds<br />";

                        timer.Stop();

                        context.Application["RebuildCacheHistory"] = "<p>" + context.Application["RebuildCacheHistory"].ToString() + "</p><strong>Finished in " + timer.GetTime() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, TemporalHelpers.DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TemporalHelpers.TimeFormats.SqlMilitary) + "</strong>";

                        context.Application.SafeRemove("RebuildCacheStatus");
                    }

                    catch (Exception e)
                    {
                        timer.Stop();
                        timer2.Stop();

                        context.Application["RebuildCacheHistory"] = "<strong>Error in " + timer.GetTime() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, TemporalHelpers.DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TemporalHelpers.TimeFormats.SqlMilitary) + "</strong><br />" + e.Message;

                        result = context.Application["RebuildCacheHistory"].ToString();

                        context.Application.SafeRemove("RebuildCacheStatus");
                    }
                }))
                {
                    IsBackground = true
                };
                workerThread.Start();

                while (HttpContext.Current.Application["RebuildCacheStatus"] == null)
                {
                    // Wait for worker thread to start up and initialize
                    System.Threading.Thread.Sleep(50);
                }
            }

            else
            {
                result = HttpContext.Current.Application["RebuildCacheHistory"].ToString();
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/plain");
            return response;
        }

        [HttpGet]
        public HttpResponseMessage RebuildCacheStatus() // /umbraco/api/carbidesupport/rebuildcachestatus/
        {
            var result = "idle";

            if (HttpContext.Current.Application["RebuildCacheStatus"] != null)
            {
                result = HttpContext.Current.Application["RebuildCacheStatus"].ToString();
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/plain");
            return response;
        }

        [HttpGet]
        public HttpResponseMessage RebuildCacheStatusHistory() // /umbraco/api/carbidesupport/rebuildcachestatushistory/
        {
            var result = "Last run: never";

            if (HttpContext.Current.Application["RebuildCacheHistory"] != null)
            {
                result = HttpContext.Current.Application["RebuildCacheHistory"].ToString();
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/plain");
            return response;
        }
    }
}
