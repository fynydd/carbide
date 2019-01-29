using Examine;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Http;

using Umbraco.Core.Models;
using Umbraco.Web;
using Umbraco.Web.WebApi;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// REST endpoints for using Carbide embedded file resources.
    /// ]]></summary>
    public class CarbideSupportController : UmbracoApiController
    {
        /// <summary><![CDATA[
        /// Get the current Carbide framework version.
        /// ]]></summary>
        /// <returns>Version nuumber</returns>
        [HttpGet]
        public HttpResponseMessage Version() // /umbraco/api/carbidesupport/version/
        {
            string result = "1.0.0";

            try
            {
                Version version = Assembly.GetExecutingAssembly().GetName().Version;

                result = version.Major + "." + version.Minor + "." + version.Build;
            }

            catch { }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/html");
            return response;
        }

        /// <summary><![CDATA[
        /// Get a Carbide embedded HTML resource.
        /// ]]></summary>
        /// <param name="file">HTML file name to retrieve (without the file extension)</param>
        /// <returns>HTML file contents</returns>
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

            var umbracoPath = Config.GetKeyValue("umbracoPath", "~/umbraco");

            result = result.Replace("~/umbraco", umbracoPath.TrimStart(new[] { '~' }).TrimEnd(new[] { '/' }));

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "text/html");
            return response;
        }

        /// <summary><![CDATA[
        /// Get a Carbide embedded JavaScript resource.
        /// ]]></summary>
        /// <param name="file">JavaScript file name to retrieve (without the file extension)</param>
        /// <returns>JavaScript file contents</returns>
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

            var umbracoPath = Config.GetKeyValue("umbracoPath", "~/umbraco");

            result = result.Replace("~/umbraco", umbracoPath.TrimStart(new[] { '~' }).TrimEnd(new[] { '/' }));

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "application/javascript");
            return response;
        }

        /// <summary><![CDATA[
        /// Get a Carbide embedded SVG resource.
        /// ]]></summary>
        /// <param name="file">SVG file name to retrieve (without the file extension)</param>
        /// <returns>SVG file contents</returns>
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

        /// <summary><![CDATA[
        /// Get a Carbide embedded PNG resource.
        /// ]]></summary>
        /// <param name="file">PNG file name to retrieve (without the file extension)</param>
        /// <returns>PNG file contents</returns>
        [HttpGet]
        public HttpResponseMessage Png(string file) // /umbraco/api/carbidesupport/png/?file=carbide-icon
        {
            byte[] result = null;

            try
            {
                var assembly = Assembly.GetExecutingAssembly();
                var resourceName = "Fynydd.Carbide.Support.Images." + file + ".png";

                using (Stream stream = assembly.GetManifestResourceStream(resourceName))
                {
                    if (stream != null)
                    {
                        using (BinaryReader reader = new BinaryReader(stream))
                        {
                            result = reader.ReadBytes((int)reader.BaseStream.Length);
                        }
                    }
                }
            }

            catch
            {
            }

            var response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new ByteArrayContent(result);
            response.Content.Headers.ContentType = new MediaTypeHeaderValue("image/png");
            return response;
        }

        /// <summary><![CDATA[
        /// Initiate an Umbraco content cache republish, rebuild, and Examine cache rebuild.
        /// ]]></summary>
        /// <returns>Operation result text</returns>
        [HttpGet]
        public HttpResponseMessage RebuildCache() // /umbraco/api/carbidesupport/rebuildcache/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
				context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

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

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

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

        /// <summary><![CDATA[
        /// Clear the ImageProcessor file cache.
        /// ]]></summary>
        /// <returns>Operation result text</returns>
        [HttpGet]
        public HttpResponseMessage RebuildImageCache() // /umbraco/api/carbidesupport/rebuildimagecache/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
                context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

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

                        foreach (var folder in StorageHelpers.GetFolders("/App_Data/cache/"))
                        {
                            StorageHelpers.DeleteDirectory("/App_Data/cache/" + folder);

                            if (StorageHelpers.DirectoryExists("/App_Data/cache/" + folder))
                            {
                                // Retry up to 5 times after pausing...

                                int retry = 0;

                                string original = context.Application["RebuildCacheHistory"].ToString();

                                while (retry < 5)
                                {
                                    retry++;

                                    context.Application["RebuildCacheHistory"] = original + "cache/" + folder + " retry " + retry;

                                    TemporalHelpers.PauseExecution(1);

                                    if (StorageHelpers.DirectoryExists("/App_Data/cache/" + folder))
                                    {
                                        StorageHelpers.DeleteDirectory("/App_Data/cache/" + folder);
                                    }

                                    if (!StorageHelpers.DirectoryExists("/App_Data/cache/" + folder))
                                    {
                                        retry = 5;
                                    }
                                }

                                context.Application["RebuildCacheHistory"] = original;

                                if (StorageHelpers.DirectoryExists("/App_Data/cache/" + folder))
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

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

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

		/// <summary><![CDATA[
		/// Delete log entries, unused property data and content, as well as old preview xml cache items.
		/// ]]></summary>
		/// <returns>Operation result text</returns>
		[HttpGet]
		public HttpResponseMessage CompactDatabase(string days = "30") // /umbraco/api/carbidesupport/compactdatabase/
		{
			string result = "";
			var response = new HttpResponseMessage(HttpStatusCode.OK);

			if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
			{
				var context = HttpContext.Current;

				context.Application["RebuildCacheStatus"] = "running";
				context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

				result = context.Application["RebuildCacheHistory"].ToString();

				if (days.IsPureNumeric() == true)
				{
					int _days = int.Parse(days);

					Thread workerThread = new Thread(new ThreadStart(() =>
					{
						StopWatch timer = new StopWatch();
						StopWatch timer2 = new StopWatch();

						try
						{
							timer.Start();
							context.Server.ScriptTimeout = 100000;

							context.Application["RebuildCacheHistory"] += "<ol style=\"padding: 0.25rem 0 0 1rem;\">";

							var daterange = "DATEADD(d, " + (_days * -1) + ", getdate())";
							var ageText = "> " + _days + " days old";



						// Truncate log

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Truncating log (" + ageText + ")... ";

							var commands = @"DECLARE @out int = (SELECT COUNT(*) FROM umbracoLog WHERE Datestamp < " + daterange + @");
DELETE FROM umbracolog WHERE Datestamp < " + daterange + @";
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

							timer2.Stop();
							context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";



						// Delete unused property data

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Delete unused property data (" + ageText + ")... ";

							commands = @"DECLARE @out int = (SELECT COUNT(*) FROM cmsPropertyData WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	contentNodeId IN (SELECT DISTINCT nodeID FROM cmsDocument));
DELETE FROM cmsPropertyData WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	contentNodeId IN (SELECT DISTINCT nodeID FROM cmsDocument);
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

							timer2.Stop();
							context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";



						// Delete preview XML (pass 1)

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Delete XML previews (" + ageText + ")... ";

							commands = @"DECLARE @out int = (SELECT COUNT(*) FROM cmsPreviewXml WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	nodeId IN (SELECT DISTINCT nodeID FROM cmsDocument));
DELETE FROM cmsPreviewXml WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	nodeId IN (SELECT DISTINCT nodeID FROM cmsDocument);
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

							timer2.Stop();
							context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";



						// Delete content versions

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Delete content versions (" + ageText + ")... ";

							commands = @"DECLARE @out int = (SELECT COUNT(*) FROM cmsContentVersion WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	ContentId  IN (SELECT DISTINCT nodeID FROM cmsDocument));
DELETE FROM cmsContentVersion WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	ContentId  IN (SELECT DISTINCT nodeID FROM cmsDocument);
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

							timer2.Stop();
							context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";



						// Delete unpublished content

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Delete unpublished content (" + ageText + ")... ";

							commands = @"DECLARE @out int = (SELECT COUNT(*) FROM cmsDocument WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	nodeId IN (SELECT DISTINCT nodeID FROM cmsDocument));
DELETE FROM cmsDocument WHERE
	versionId NOT IN (SELECT versionId FROM cmsDocument WHERE updateDate > " + daterange + @" OR published = 1 OR newest = 1) AND
	nodeId IN (SELECT DISTINCT nodeID FROM cmsDocument);
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

							timer2.Stop();
							context.Application["RebuildCacheHistory"] += "<strong>completed in " + timer2.GetSeconds<int>() + " seconds</strong></li>";



						// Delete preview XML (pass 2)

						timer2.Start();
							context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Delete XML previews (pass 2)... ";

							commands = @"DECLARE @out int = (SELECT COUNT(*) FROM cmsPreviewXml WHERE
	versionId IN (SELECT cmsPreviewXml.versionId FROM cmsPreviewXml JOIN cmsDocument ON cmsPreviewXml.versionId=cmsDocument.versionId WHERE cmsDocument.newest <> 1));
DELETE FROM cmsPreviewXml WHERE
	versionId IN (SELECT cmsPreviewXml.versionId FROM cmsPreviewXml JOIN cmsDocument ON cmsPreviewXml.versionId=cmsDocument.versionId WHERE cmsDocument.newest <> 1);
SELECT @out;";
							context.Application["RebuildCacheHistory"] += Carbide.SqlHelpers.Lookup<int>(commands, "umbracoDbDSN").FormatNumber(NumberFormats.Proper) + " deleted... ";

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

							context.Application["RebuildCacheHistory"] += "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

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
					context.Application.SafeRemove("RebuildCacheStatus");

					context.Application["RebuildCacheHistory"] += "<ol style=\"padding: 0.25rem 0 0 1rem;\">";
					context.Application["RebuildCacheHistory"] += "<li style=\"padding-bottom: 1rem;\">Days is not a numeric value.</li>";
					context.Application["RebuildCacheHistory"] += "</ol>";
					context.Application["RebuildCacheHistory"] += "<h4 style=\"font-size: 1.1rem;\">Aborted</h4>";

					result = context.Application["RebuildCacheHistory"].ToString();
				}
			}

			else
			{
				result = HttpContext.Current.Application["RebuildCacheHistory"].ToString();
			}

			response.Content = new StringContent(result, Encoding.UTF8, "text/plain");

			return response;
		}

		/// <summary><![CDATA[
		/// Initiate an Umbraco page template pre-cache, so pages load quickly on first request.
		/// ]]></summary>
		/// <returns>Operation result text</returns>
		[HttpGet]
        public HttpResponseMessage PrerenderPages() // /umbraco/api/carbidesupport/prerenderpages/
        {
            string result = "";

            if (HttpContext.Current.Application["RebuildCacheStatus"] == null)
            {
                var context = HttpContext.Current;

                context.Application["RebuildCacheStatus"] = "running";
                context.Application["RebuildCacheHistory"] = "<h4 style=\"font-size: 1.1rem; margin-bottom: 1.5rem;\">Started " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</h4>";

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

                        context.Application["RebuildCacheHistory"] = "</li></ol><p><strong>Error in " + timer.GetSeconds<int>() + " seconds on " + TemporalHelpers.DateFormat(DateTime.Now, DateFormats.European).ToUpper() + " @ " + TemporalHelpers.TimeFormat(DateTime.Now, TimeFormats.SqlMilitary) + "</strong></p>" + e.Message;

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

        /// <summary><![CDATA[
        /// Get the current status of an Umbraco content cache rebuild.
        /// ]]></summary>
        /// <returns>Operation status text</returns>
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

        /// <summary><![CDATA[
        /// Get the last complete status of an Umbraco content cache rebuild.
        /// ]]></summary>
        /// <returns>Operation status history text</returns>
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
                        rest.Url = context.Request.Url.Scheme + "://" + HttpHelpers.GetHostWithPort(context) + node.Url;
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
