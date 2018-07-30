using System.Web;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// Helper methods for accessing and managing Application State.
    /// ]]></summary>
    public static class AppStateHelpers
    {
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
