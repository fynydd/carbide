using System.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Helper methods for accessing and managing Application State.
    /// ]]></summary>
    public static class AppStateHelpers
    {
        /// <summary>
        /// Determine if the application is running in debug mode.
        /// </summary>
        /// <param name="context">HttpContext; defaults to Current</param>
        /// <returns>True if application is running in debug mode.</returns>
        public static bool IsDebugging(HttpContext context = null)
        {
            context = ContextHelpers.EnsureAppContext(context);

            return context.IsDebuggingEnabled;
        }

        /// <summary><![CDATA[
        /// Determine if an Application-level state variable exists.
        /// ]]></summary>
        /// <param name="application">The current HttpApplictionState object</param>
        /// <param name="keyName">The key name of the Application-level state variable</param>
        public static bool KeyExists(this HttpApplicationState application, string keyName)
        {
            bool result = false;

            if (application != null)
            {
                if (application[keyName] != null)
                {
                    result = true;
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Remove an Application-level state variable, first checking for its existence
        /// and a valid context.
        /// ]]></summary>
        /// <param name="application">The current HttpApplictionState object</param>
        /// <param name="keyName">The key name of the Application-level state variable</param>
        public static void SafeRemove(this HttpApplicationState application, string keyName)
        {
            if (KeyExists(application, keyName))
            {
                application.Remove(keyName);
            }
        }
    }
}
