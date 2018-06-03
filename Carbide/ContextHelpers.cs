using System;
using System.IO;
using System.Web;
using System.Web.Hosting;

using Umbraco.Core;
using Umbraco.Core.Configuration;
using Umbraco.Web;
using Umbraco.Web.Routing;
using Umbraco.Web.Security;

using Fynydd.Halide;
using Fynydd.Halide.Constants;

namespace Fynydd.Carbide
{
    /// <summary>
    /// The ContextHelpers class has static methods and properties for 
    /// ensuring and establishing contexts.
    /// </summary>
    /// <example>
    /// For example, you can make calls like this:
    /// <code>
    /// <![CDATA[
    /// var helper = new UmbracoHelper(ContextHelpers.EnsureUmbracoContext());
    /// ]]>
    /// </code>
    /// </example>
    public static class ContextHelpers
    {
        /// <summary>
        /// Return an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.
        /// </summary>
        /// <example>
        /// var context = ContextHelper.EnsureUmbracoContext();
        /// var helper = new UmbracoHelper(context);
        /// </example>
        /// <returns>UmbracoContext object</returns>
        public static UmbracoContext EnsureUmbracoContext()
        {
            if (UmbracoContext.Current != null)
            {
                return UmbracoContext.Current;
            }

            else
            {
                var httpContext = new HttpContextWrapper(HttpContext.Current ?? new HttpContext(new SimpleWorkerRequest("default.aspx", "", new StringWriter())));

                return UmbracoContext.EnsureContext(
                    httpContext,
                    ApplicationContext.Current,
                    new WebSecurity(httpContext, ApplicationContext.Current),
                    UmbracoConfig.For.UmbracoSettings(),
                    UrlProviderResolver.Current.Providers,
                    false);
            }
        }

        /// <summary>
        /// Establish an UmbracoContext. For use in controllers and threads that need access to Umbraco Helper, etc.
        /// <example>
        /// Thread workerThread = new Thread(new ThreadStart(() =>
		/// {
        ///     ContextHelpers.EstablishUmbracoContext();
        ///     ...
        /// </example>
        /// </summary>
        public static void EstablishUmbracoContext()
        {
            if (UmbracoContext.Current == null)
            {
                var httpContext = new HttpContextWrapper(HttpContext.Current ?? new HttpContext(new SimpleWorkerRequest("default.aspx", "", new StringWriter())));

                UmbracoContext.EnsureContext(
                    httpContext,
                    ApplicationContext.Current,
                    new WebSecurity(httpContext, ApplicationContext.Current),
                    UmbracoConfig.For.UmbracoSettings(),
                    UrlProviderResolver.Current.Providers,
                    false);
            }
        }
    }
}
