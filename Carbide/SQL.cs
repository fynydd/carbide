using System;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Fynydd.Carbide
{
    /// <summary><![CDATA[
    /// The SQL class contains methods and properties for
    /// performing operations on, or evaluating, SQL databases.
    /// ]]></summary>
    /// <example>
    /// Add the following to your web.config file to use the
    /// these class methods without specifying the connection string:
    /// <code lang="XML"><![CDATA[
    ///		<connectionStrings>
    ///			<add name="Carbide" connectionString="Data Source=server; Initial Catalog=database; User ID=username; password=password; Connection Timeout=30;" providerName="System.Data.SqlClient" />
    ///		</connectionStrings>
    /// ]]></code>
    /// </example>
    public static class SQL
    {
        /// <summary><![CDATA[
        ///	The SQL connection string, retrieved from the web.config file by its name.
        /// ]]></summary>
        /// <param name="connectionStringName">Name of a connection string within the Web.config file.</param>
        /// <returns>A connection string.</returns>
        public static string ConnectionString(string connectionStringName)
        {
            string CS = "";

            try
            {
                if (string.IsNullOrEmpty(connectionStringName))
                {
                    CS = ConfigurationManager.ConnectionStrings["Carbide"].ConnectionString;
                }

                else
                {
                    CS = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
                }
            }

            catch
            {
                if (string.IsNullOrEmpty(CS))
                {
                    CS = "";
                }
            }

            return CS;
        }

        /// <summary><![CDATA[
        /// Look up a value from a database object. Returns only one string
        /// value, so query must only return one value.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string result = SQL.Lookup("SELECT TOP 5 * FROM ContentTable", "SqlServer01", 30);
        /// string result2 = SQL.Lookup("exec spu_ProcedureName", "SqlServer02", 30);
        /// ]]></code>
        /// </example>
        /// <param name="sqlCommand">SQL query string for which to return a string value.</param>
        /// <param name="connectionStringName">Name of a connection string in the Web.config file.</param>
        /// <param name="timeout">Timeout in seconds for the request. Use zero for no timeout period.</param>
        /// <returns>A string value returned from the query.</returns>
        public static T Lookup<T>(string sqlCommand, string connectionStringName = "Carbide", int timeout = 30)
        {
            T result = default(T);

            try
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString(connectionStringName)))
                {
                    cn.Open();

                    using (SqlCommand oc = new SqlCommand(sqlCommand, cn))
                    {
                        oc.CommandTimeout = timeout;
                        object retval = oc.ExecuteScalar();
                        oc.Dispose();

                        if (retval != null)
                        {
                            result = (T)Convert.ChangeType(retval, typeof(T));
                        }
                    }

                    cn.Close();
                }
            }

            catch (Exception err)
            {
                throw new Exception("Carbide.SQL Error: " + err.ToString());
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Execute a SQL stored procedure.
        /// Returns true or false indicating error state.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// bool result = SQL.Exec("spu_ProcedureName @param1='test';", "SqlServer01", 60);
        /// ]]></code>
        /// </example>
        /// <param name="statement">SQL statement to execute.</param>
        /// <param name="connectionStringName">Name of a connection string in the Web.config file.</param>
        /// <param name="timeout">Timeout in seconds for the command to execute; use zero for no timeout period.</param>
        /// <returns>true if successful, false if failure.</returns>
        public static bool Exec(string statement, string connectionStringName = "Carbide", int timeout = 30)
        {
            bool result = false;

            if (!string.IsNullOrEmpty(statement))
            {
                try
                {
                    using (SqlConnection cn = new SqlConnection(ConnectionString(connectionStringName)))
                    {
                        cn.Open();

                        using (SqlCommand oc = new SqlCommand(statement, cn))
                        {
                            oc.CommandTimeout = timeout;
                            oc.ExecuteNonQuery();
                        }
                    }

                    result = true;
                }

                catch (Exception err)
                {
                    throw new Exception("Carbide.SQL Error: " + err.ToString());
                }
            }

            return result;
        }

        /// <summary><![CDATA[
        /// Execute a stored procedure with passed form field names in string array.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// string[] fields = new string[] { "fname", "lname", "email1" };
        /// string[] values = new string[] { "", "", value5 };
        /// string result = SQL.PowerExec("spu_Function_Name", fields, values, true, "SqlServer01");
        /// ]]></code>
        /// </example>
        /// <param name="procedureName">Name of stored procedure.</param>
        /// <param name="paramNames">string array with field names.</param>
        /// <param name="paramValues">string array with field values.</param>
        /// <param name="returnsValue">If the stored procedure returns a value, set to true,
        /// otherwise, set to false. When false, the number of rows affected is returned as a string.</param>
        /// <param name="connectionStringName">Name of a connection string in the Web.config file.</param>
        /// <param name="timeOut">SQL Command timeout value.</param>
        /// <returns>Returns the result of the stored procedure if successful.</returns>
        public static string PowerExec(string procedureName, string[] paramNames, string[] paramValues, bool returnsValue = true, string connectionStringName = "Carbide", int timeOut = 30)
        {
            string sql = procedureName;
            object added;

            if (paramNames.Length < 1 || string.IsNullOrEmpty(sql))
            {
                return ("No fields were specified for the SQL stored procedure to process, and/or no stored procedure name was specified.");
            }

            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConnectionString(connectionStringName));
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandTimeout = timeOut;

                    for (int counter = 0; counter < paramNames.Length; counter++)
                    {
                        string value = paramValues[counter];

                        paramNames[counter] = paramNames[counter].Replace("@", "");

                        cmd.Parameters.AddWithValue("@" + paramNames[counter], (value == null ? (object)DBNull.Value : (object)value));
                    }

                    try
                    {
                        con.Open();

                        if (returnsValue)
                        {
                            added = cmd.ExecuteScalar();
                        }

                        else
                        {
                            added = cmd.ExecuteNonQuery();
                        }
                    }

                    catch (Exception err)
                    {
                        throw new Exception("Carbide.SQL Error: " + err.ToString());
                    }

                    finally
                    {
                        cmd.Dispose();
                        con.Close();
                    }
                }

                catch (Exception err)
                {
                    throw new Exception("Carbide.SQL Error: " + err.ToString());
                }

                string result = null;

                if (added != null)
                {
                    result = added.ToString();
                }

                return (result);
            }
        }

        /// <summary><![CDATA[
        /// Loads the results of a SQL query into a DataTable object.
        /// ]]></summary>
        /// <example>
        /// <code><![CDATA[
        /// DataTable dt = SQL.ReadTable("SELECT TOP 5 FROM tablename;", "SqlServer01");
        /// ]]></code>
        /// </example>
        /// <param name="statement">SQL statement to execute.</param>
        /// <param name="connectionStringName">Name of a connection string in the Web.config file.</param>
        /// <returns>DataTable object.</returns>
        public static DataTable ReadTable(string statement, string connectionStringName = "Carbide")
        {
            DataTable dt = new DataTable();

            using (DataReader reader = new DataReader(statement, connectionStringName))
            {
                dt = reader.ReadTable();
            }

            return (dt);
        }

        /// <summary><![CDATA[
        /// Generate CSV data from a SQL Server request. Converts quotation marks to "&quot;".
        /// ]]></summary>
        /// <param name="select">SQL Server command to execute, which retrieves a dataset.</param>
        /// <param name="connectionStringName">Connection string name in the Web.config file.</param>
        /// <param name="includeHeaders">Include column names as a header row in the CSV file.</param>
        /// <param name="alwaysUseQuotes">Wrap all values in quotation marks. False will omit quotation marks around numeric values.</param>
        /// <returns>StringBuilder result with the new CSV data.</returns>
        public static StringBuilder GenerateCSV(string select, string connectionStringName, bool includeHeaders = true, bool alwaysUseQuotes = true)
        {
            StringBuilder csv = new StringBuilder();

            using (DataReader reader = new DataReader(select, true, connectionStringName))
            {
                #region Build header row

                if (includeHeaders)
                {
                    for (int x = 0; x < reader.FieldCount; x++)
                    {
                        if (x > 0)
                        {
                            csv.Append(",");
                        }

                        csv.Append("\"" + reader.ColumnName(x) + "\"");
                    }

                    csv.Append("\r\n");
                }

                #endregion

                #region Build data rows

                ArrayList types = new ArrayList();

                types.Add("int");
                types.Add("bigint");
                types.Add("float");
                types.Add("decimal");
                types.Add("numeric");
                types.Add("money");
                types.Add("tinyint");
                types.Add("int");
                types.Add("smallint");
                types.Add("smallmoney");
                types.Add("real");

                while (reader.Read())
                {
                    for (int x = 0; x < reader.FieldCount; x++)
                    {
                        if (x > 0)
                        {
                            csv.Append(",");
                        }

                        if (!alwaysUseQuotes && types.Contains(reader.GetDataTypeName(x).ToLower()))
                        {
                            csv.Append(reader[x]);
                        }

                        else
                        {
                            csv.Append("\"" + reader[x].Replace("\"", "&quot;") + "\"");
                        }
                    }

                    csv.Append("\r\n");
                }

                #endregion
            }

            return csv;
        }

        /// <summary><![CDATA[
        /// Generate CSV data from a SQL Server data request, and write it to a file. Converts quotation marks to "&quot;".
        /// ]]></summary>
        /// <param name="select">SQL Server command to execute, which retrieves a dataset.</param>
        /// <param name="connectionStringName">Connection string name in the Web.config file.</param>
        /// <param name="includeHeaders">Include column names as a header row in the CSV file.</param>
        /// <param name="alwaysUseQuotes">Wrap all values in quotation marks. False will omit quotation marks around numeric values.</param>
        /// <param name="filePath">Web-style path and filename for the output of the data.</param>
        /// <returns>True if the file was written successfully.</returns>
        public static bool ExportCSV(string select, string connectionStringName, bool includeHeaders, bool alwaysUseQuotes, string filePath)
        {
            bool result = false;

            StringBuilder CSV = new StringBuilder();

            CSV = GenerateCSV(select, connectionStringName, includeHeaders, alwaysUseQuotes);

            Storage.WriteFile(filePath, CSV.ToString());

            if (Storage.FileExists(filePath))
            {
                result = true;
            }

            return result;
        }
    }
}