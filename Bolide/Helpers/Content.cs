using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Fynydd.Carbide;
using Fynydd.Carbide.Constants;

using Bolide.Helpers;

namespace Bolide.Helpers
{
    public static class Content
    {
        public static string MakeNodeName(string quote = "", string fn = "", string mn = "", string ln = "")
        {
            string result = "";

            if (quote.HasValue() && (fn.HasValue() || mn.HasValue() || ln.HasValue()))
            {
                List<string> searchTerms = new List<string>();

                var q = quote.StripHtml().SanitizeEscapes().Crop(220, StringCropType.Characters, " ", "");

                result = Strings.SortableName(fn, mn, ln) + " - " + q;
            }

            return result;
        }
    }
}
