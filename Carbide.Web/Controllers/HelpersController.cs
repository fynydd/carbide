using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Umbraco.Web.Mvc;

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