using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Hosting;

using Umbraco.Core;
using Umbraco.Core.Configuration;
using Umbraco.Core.Logging;
using Umbraco.Core.Models;
using Umbraco.Core.Services;
using Umbraco.Web;
using Umbraco.Web.Mvc;
using Umbraco.Web.Routing;
using Umbraco.Web.Security;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

namespace Carbide.Web.Controllers
{
    public class HelpersController : SurfaceController
    {
        /// <summary>
        /// Used to structure list JSON results
        /// </summary>
        public class StringListResult
        {
            public StringListResult()
            {
                result = "";
                message = "";
                list = new List<string>();
            }

            public string result { get; set; }
            public string message { get; set; }
            public List<string> list { get; set; }
        }

        /// <summary>
        /// Empty content in the trash.
        /// </summary>
        /// <example>
        /// /umbraco/surface/helpers/emptycontenttrash
        /// </example>
        /// <returns></returns>
        public JsonResult EmptyContentTrash()
        {
            StringListResult jsonData = new StringListResult();

            try
            {
                var contentService = Services.ContentService;

                var opResult = contentService.EmptyRecycleBin(-1);

                if (opResult.Success)
                {
                    jsonData.result = "SUCCESS";
                    jsonData.message = "";
                }

                else
                {
                    jsonData.result = "ERROR";
                    jsonData.message = "Could not empty the content trash";
                }
            }

            catch (Exception e)
            {
                jsonData.result = "ERROR";
                jsonData.message = e.StackTrace;
            }

            return new JsonResult() { Data = jsonData, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        /// <summary>
        /// Empty media in the trash.
        /// </summary>
        /// <example>
        /// /umbraco/surface/helpers/emptymediatrash
        /// </example>
        /// <returns></returns>
        public JsonResult EmptyMediaTrash()
        {
            StringListResult jsonData = new StringListResult();

            try
            {
                var mediaService = Services.MediaService;

                var opResult = mediaService.EmptyRecycleBin(-1);

                if (opResult.Success)
                {
                    jsonData.result = "SUCCESS";
                    jsonData.message = "";
                }

                else
                {
                    jsonData.result = "ERROR";
                    jsonData.message = "Could not empty the media trash";
                }
            }

            catch (Exception e)
            {
                jsonData.result = "ERROR";
                jsonData.message = e.StackTrace;
            }

            return new JsonResult() { Data = jsonData, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        /// <summary>
        /// Delete versions from all content earlier than a specified date.
        /// </summary>
        /// <example>
        /// /umbraco/surface/helpers/deleteversions?beforedate=10-OCT-2019
        /// </example>
        /// <param name="beforeDate">Versions earlier than this date will be deleted.</param>
        /// <returns></returns>
        public JsonResult DeleteVersions(string beforeDate = "")
        {
            StringListResult jsonData = new StringListResult();
            var priorDate = Temporal.DateFormat(DateTime.Now, DateFormats.European);

            if (beforeDate.HasValue())
            {
                try
                {
                    priorDate = Temporal.DateFormat(Convert.ToDateTime(beforeDate), DateFormats.European);
                }

                catch { }
            }

            try
            {
                var contentService = Services.ContentService;

                // Empty the trash bin...
                var opResult = contentService.EmptyRecycleBin(-1);


                // Delete old content versions...
                var cmd = @"
SELECT cv.id
INTO #toDelete
FROM umbracoDocumentVersion dv
INNER JOIN umbracoContentVersion cv ON dv.id = cv.id
WHERE cv.[current] != 1 AND dv.published != 1 AND cv.VersionDate < '" + priorDate + @"'

DELETE FROM umbracoPropertyData WHERE versionId IN (select id from #toDelete)
DELETE FROM umbracoDocumentVersion WHERE id IN (select id from #toDelete)
DELETE FROM umbracoContentVersion WHERE id IN (select id from #toDelete)

DROP TABLE #toDelete
";
                var result = Databases.Lookup<string>(cmd, "umbracoDbDSN");

                if (result.HasValue())
                {
                    jsonData.result = "ERROR";
                    jsonData.message = result;
                }

                else
                {
                    jsonData.result = "SUCCESS";
                    jsonData.message = "";
                }
            }

            catch (Exception e)
            {
                jsonData.result = "ERROR";
                jsonData.message = e.StackTrace;
            }

            return new JsonResult() { Data = jsonData, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        // /umbraco/surface/helpers/gettags?groupName=Pages
        public JsonResult GetTags(string groupName)
        {
            StringListResult jsonData = new StringListResult();

            try
            {
                var tags = Umbraco.TagQuery.GetAllTags(groupName);

                if (tags != null && tags.Count() > 0)
                {
                    foreach (var tag in tags.OrderBy(o => o.Text))
                    {
                        jsonData.list.Add(tag.Text);
                    }
                }

                jsonData.result = "SUCCESS";
            }

            catch (Exception e)
            {
                jsonData.result = "ERROR";
                jsonData.message = e.StackTrace;
            }

            return new JsonResult() { Data = jsonData, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}