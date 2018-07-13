using Examine;
using System;
using System.Collections.Generic;
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
using System.Xml;

using Umbraco.Core.Models;
using Umbraco.Web;
using Umbraco.Web.WebApi;

using Fynydd.Halide;
using Fynydd.Halide.Constants;

namespace Fynydd.Carbide
{
    public class CarbideSupportController : UmbracoApiController
    {
        public static string Version { get { return "2018-05-14"; } }

        [HttpGet]
        public HttpResponseMessage Html(string file) // /umbraco/api/carbidesupport/html/?file=DashControl
        {
            string result = "";

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var fileName = "Fynydd.Carbide.Support.Html." + file + ".html";

                using (Stream stream = assembly.GetManifestResourceStream(fileName))
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
            response.Content = new StringContent(result, Encoding.UTF8, "text/html");
            return response;
        }

        [HttpGet]
        public HttpResponseMessage Scripts(string file) // /umbraco/api/carbidesupport/scripts/?file=FormValidationHelpers
        {
            string result = "";

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var jsName = "Fynydd.Carbide.Support.Scripts." + file + ".js";

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
            response.Content = new StringContent(result, Encoding.UTF8, "application/javascript");
            return response;
        }

        [HttpGet]
        public HttpResponseMessage Svg(string file) // /umbraco/api/carbidesupport/svg/?file=inline-busy-icon
        {
            string result = "";

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var resourceName = "Fynydd.Carbide.Support.Images." + file + ".svg";

                using (Stream stream = assembly.GetManifestResourceStream(resourceName))
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
            response.Content = new StringContent(result, Encoding.UTF8, "image/svg+xml");
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
				context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

                result = context.Application["RebuildCacheHistory"].ToString();

                Thread workerThread = new Thread(new ThreadStart(() =>
                {
                    StopWatch timer = new StopWatch();
                    StopWatch timer2 = new StopWatch();

                    try
                    {
                        timer.Start();
                        context.Server.ScriptTimeout = 100000;

						context.Application["RebuildCacheHistory"] += "<ol style=\"padding: 0.25rem 0 0 1rem;\">";

                        context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Republishing all content... ";
                        timer2.Reset();
                        timer2.Start();
                        Services.ContentService.RePublishAll();
                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";

						context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Refreshing XML cache... ";
                        timer2.Reset();
                        timer2.Start();
                        umbraco.library.RefreshContent();
                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";

                        context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Rebuilding Examine indexes... ";
                        timer2.Reset();
                        timer2.Start();

                        foreach (var index in ExamineManager.Instance.IndexProviderCollection.ToList())
                        {
                            context.Application["RebuildCacheHistory"] += index.Name.Replace("Indexer", "") + "... ";
                            index.RebuildIndex();
                        }

                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";

                        timer.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] += "</ol>";

						context.Application["RebuildCacheHistory"] += "<h4 style=\"font-size: 1.1rem;\">Finished in " + timer.GetSeconds<int>() + " seconds</h4>";
                    }

                    catch (Exception e)
                    {
                        timer.Stop();
                        timer2.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

                        result = context.Application["RebuildCacheHistory"].ToString();
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
        public HttpResponseMessage RebuildImageCache() // /umbraco/api/carbidesupport/rebuildimagecache/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
                context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

                result = context.Application["RebuildCacheHistory"].ToString();

                Thread workerThread = new Thread(new ThreadStart(() =>
                {
                    StopWatch timer = new StopWatch();
                    StopWatch timer2 = new StopWatch();

                    try
                    {
                        timer.Start();
                        context.Server.ScriptTimeout = 100000;

                        context.Application["RebuildCacheHistory"] += "<ol style=\"padding: 0.25rem 0 0 1rem;\">";

                        context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Clearing cached images... ";
                        timer2.Start();

                        foreach (var folder in Storage.GetFolders("/App_Data/cache/"))
                        {
                            Storage.DeleteDirectory("/App_Data/cache/" + folder);

                            if (Storage.DirectoryExists("/App_Data/cache/" + folder))
                            {
                                // Retry up to 5 times after pausing...

                                int retry = 0;

                                string original = context.Application["RebuildCacheHistory"].ToString();

                                while (retry < 5)
                                {
                                    retry++;

                                    context.Application["RebuildCacheHistory"] = original + "cache/" + folder + " retry " + retry;

                                    Temporal.PauseExecution(1);

                                    if (Storage.DirectoryExists("/App_Data/cache/" + folder))
                                    {
                                        Storage.DeleteDirectory("/App_Data/cache/" + folder);
                                    }

                                    if (!Storage.DirectoryExists("/App_Data/cache/" + folder))
                                    {
                                        retry = 5;
                                    }
                                }

                                context.Application["RebuildCacheHistory"] = original;

                                if (Storage.DirectoryExists("/App_Data/cache/" + folder))
                                {
                                    context.Application["RebuildCacheHistory"] += "<strong style='color:#b94a48;'>cache/" + folder + " locked...</strong> ";
                                }
                            }
                        }

                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";

                        timer.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] += "</ol>";

                        context.Application["RebuildCacheHistory"] += "<h4 style=\"font-size: 1.1rem;\">Finished in " + timer.GetSeconds<int>() + " seconds</h4>";
                    }

                    catch (Exception e)
                    {
                        timer.Stop();
                        timer2.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

                        result = context.Application["RebuildCacheHistory"].ToString();
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
        public HttpResponseMessage PrerenderPages() // /umbraco/api/carbidesupport/prerenderpages/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
                context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

                result = context.Application["RebuildCacheHistory"].ToString();

                Thread workerThread = new Thread(new ThreadStart(() =>
                {
                    StopWatch timer = new StopWatch();
                    StopWatch timer2 = new StopWatch();

                    try
                    {
                        timer.Start();
                        context.Server.ScriptTimeout = 100000;

                        context.Application["RebuildCacheHistory"] += "<ol style=\"padding: 0.25rem 0 0 1rem;\">";

                        context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Pre-rendering templates... ";
                        timer2.Reset();
                        timer2.Start();

                        var umbracoHelper = new UmbracoHelper(Carbide.ContextHelpers.EnsureUmbracoContext());
                        int pageCounter = 0;
                        List<int> templates = new List<int>();

                        foreach (var node in umbracoHelper.TypedContentAtRoot())
                        {
                            ListChildNodes(node, ref pageCounter, ref context, ref templates);
                        }

                        if (pageCounter > 1)
                        {
                            var msg = context.Application["RebuildCacheHistory"].ToString();
                            msg = msg.Substring(0, msg.LastIndexOf("..."));
                            context.Application["RebuildCacheHistory"] = msg + "... ";
                        }

                        timer2.Stop();
                        context.Application["RebuildCacheHistory"] += "<strong>" + pageCounter + " template" + (pageCounter != 1 ? "s" : "") + " in " + timer2.GetSeconds<int>() + " seconds</strong></li>";

                        timer.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] += "</ol>";

                        context.Application["RebuildCacheHistory"] += "<h4 style=\"font-size: 1.1rem;\">Finished in " + timer.GetSeconds<int>() + " seconds</h4>";
                    }

                    catch (Exception e)
                    {
                        timer.Stop();
                        timer2.Stop();

                        context.Application.SafeRemove("RebuildCacheStatus");

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + Temporal.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + Temporal.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

                        result = context.Application["RebuildCacheHistory"].ToString();
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
            var result = "Last run: a long time ago";

            if (HttpContext.Current.Application["RebuildCacheHistory"] != null)
            {
                result = HttpContext.Current.Application["RebuildCacheHistory"].ToString();
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/plain");
            return response;
        }

        private void ListChildNodes(IPublishedContent startNode, ref int counter, ref HttpContext context, ref List<int> templates)
        {
            ProcessNode(startNode, ref counter, ref context, ref templates);

            foreach (var node in startNode.Children().OrderBy(m => m.SortOrder))
            {
                ProcessNode(node, ref counter, ref context, ref templates);

                if (node.Children().Count() > 0)
                {
                    ListChildNodes(node, ref counter, ref context, ref templates);
                }
            }
        }

        private void ProcessNode(IPublishedContent node, ref int counter, ref HttpContext context, ref List<int> templates)
        {
            if (node.TemplateId > 0)
            {
                if (templates.Contains<int>(node.TemplateId) == false)
                {
                    try
                    {
                        counter++;

                        context.Application["RebuildCacheHistory"] += node.GetTemplateAlias() + "... ";

                        RestHelper rest = new RestHelper();
                        rest.Url = context.Request.Url.Scheme + "://" + Http.GetHostWithPort(context) + node.Url;
                        rest.Timeout = 30000;
                        rest.Call();

                        templates.Add(node.TemplateId);
                    }

                    catch (Exception e)
                    {
                        Debug.WriteLine("ERROR: " + e.Message);
                    }
                }
            }
        }
    }
}
