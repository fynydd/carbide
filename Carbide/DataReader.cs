using System;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Reflection;
using System.Text;

namespace Fynydd.Carbide
{
    /// <summary>
    /// The Reader class provides a more powerful, flexible SQL reader class.
    /// </summary>
    /// <example>
    /// <code>
    /// DataReader reader = new DataReader("select * from test");
    /// </code>
    /// Add the following to your web.config file in order to use the Carbide DataReader without specifying a connection string.
    /// <code>
    /// <![CDATA[
    ///		<connectionStrings>
    ///			<add name="Carbide"
    ///			connectionString="Data Source=[server name or address]; Initial Catalog=[database name];
    ///				User ID=[user name]; password=[password]; Connection Timeout=30;"
    ///			providerName="System.Data.SqlClient" />
    ///		</connectionStrings>
    ///	]]>
    /// </code>
    /// </example>
    public class DataReader : System.IDisposable
    {
        #region Variables

        private OleDbConnection cn_Oledb;
        private OleDbDataReader dr_Oledb;
        private OleDbCommand cmd_Oledb;
        private string oledb_ConnectionString;
        private string oledb_CommandString;

        private SqlConnection cn;
        private SqlDataReader dr;
        private SqlCommand cmd;
        private DataTable schemaTable;
        private bool schemaAvailable = false;
        private Exception _lastSqlError;
        private string _connectionStringName = "Carbide";

        /// <summary>
        /// SQL Command String.
        /// </summary>
        public string sqlCommandString = "";
        private string xmlResult = null;

        /// <summary>
        /// Number of rows that have been read.
        /// </summary>
        private int _RowsRead = 0;

        #endregion

        #region Constants

        /// <summary>
        /// External file connection strings, for use with Excel and Access file connections.
        /// Placeholder {FILEPATH} must be replaced with actual file path.
        /// Placeholder {PASSWORD} must be replaced with password, if applicable.
        /// </summary>
        public enum ConnectionStrings
        {
            /// <summary>
            /// XLSX OLEDB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Extended Properties=\"Excel 12.0 Xml;HDR=YES\";")]
            XLSX_OLEDB,

            /// <summary>
            /// XLSX
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Extended Properties=\"Excel 12.0 Xml;HDR=YES;IMEX=1\";")]
            XLSX_All_Text_OLEDB,

            /// <summary>
            /// XLSB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Extended Properties=\"Excel 12.0;HDR=YES\";")]
            XLSB_OLEDB,

            /// <summary>
            /// XLSM
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Extended Properties=\"Excel 12.0 Macro;HDR=YES\";")]
            XLSM_OLEDB,

            /// <summary>
            /// XLS JET
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.Jet.OLEDB.4.0;Data Source={FILEPATH};Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=1\";")]
            XLS_Jet_OLEDB,

            /// <summary>
            /// XLS OLEDB
            /// </summary>
            [DescriptionAttribute("OLEDB;Provider=Microsoft.Jet.OLEDB.4.0;Data Source={FILEPATH};Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=1\";")]
            XLS_OLEDB_Alt,

            /// <summary>
            /// ACCDB OLEDB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Persist Security Info=False;")]
            ACCDB_OLEDB,

            /// <summary>
            /// ACCDB OLEDB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={FILEPATH};Jet OLEDB:Database password={PASSWORD};")]
            ACCDB_With_password_OLEDB,

            /// <summary>
            /// MDB OLEDB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.Jet.OLEDB.4.0;Data Source={FILEPATH};User Id=admin;password=;")]
            MDB_OLEDB,

            /// <summary>
            /// MDB OLEDB
            /// </summary>
            [DescriptionAttribute("Provider=Microsoft.Jet.OLEDB.4.0;Data Source={FILEPATH};Jet OLEDB:Database password={PASSWORD};")]
            MDB_With_password_OLEDB
        }

        #endregion

        #region Properties

        /// <summary>
        /// Returns the # of rows read so far.
        /// </summary>
        public int RowsRead
        {
            get
            {
                return _RowsRead;
            }
        }

        /// <summary>
        /// Determine if schema information is available.
        /// </summary>
        public bool SchemaAvailable
        {
            get
            {
                return schemaAvailable;
            }
        }

        /// <summary>
        /// Retrieve the last SQL error that occurred.
        /// </summary>
        /// <returns>Last SQL Exception</returns>
        public Exception SqlLastError
        {
            get
            {
                return _lastSqlError;
            }

            set
            {
                _lastSqlError = value;
            }
        }

        /// <summary>
        /// Connection string name within the Web.config file.
        /// </summary>
        public string connectionStringName
        {
            get
            {
                return _connectionStringName;
            }

            set
            {
                _connectionStringName = value;
            }
        }

        /// <summary>
        /// Connection string loaded via the connectionStringName property.
        /// </summary>
        public string ConnectionString
        {
            get
            {
                string CS = "";

                try
                {
                    CS = System.Configuration.ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
                }

                catch
                {
                    if (String.IsNullOrEmpty(CS))
                    {
                        CS = "";
                    }
                }

                return CS;
            }
        }

        /// <summary>
        /// Returns true if there are rows to return.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.HasRows;
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <value>A boolean representing the availability of rows to read.</value>
        public bool HasRows
        {
            get
            {
                try
                {
                    if (dr_Oledb != null)
                    {
                        return dr_Oledb.HasRows;
                    }

                    else
                    {
                        return dr.HasRows;
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                    return false;
                }
            }
        }

        /// <summary>
        /// Returns the number of fields in a recordset.
        /// </summary>
        /// <value>An integer.</value>
        public int FieldCount
        {
            get
            {
                try
                {
                    if (dr_Oledb != null)
                    {
                        return dr_Oledb.FieldCount;
                    }

                    else
                    {
                        return dr.FieldCount;
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                    return 0;
                }
            }
        }

        /// <summary>
        /// Return the SqlDataReader object.
        /// </summary>
        public SqlDataReader SqlDataReader
        {
            get
            {
                return dr;
            }
        }

        /// <summary>
        /// Return the OleDbDataReader object.
        /// </summary>
        public OleDbDataReader OlwDbDataReader
        {
            get
            {
                return dr_Oledb;
            }
        }

        #endregion

        #region Constructors / Deconstructors / Disposal

        /// <summary>
        /// Instantiate the class by passing a SQL command string, where clause, order by clause,
        /// rows per page, and page number, to receive only that page's rows. Only compatible with
        /// Microsoft SQL Server 2005 and later.
        /// 
        /// If you insert [WHERECLAUSE] within your SELECT statement, you can force the passed
        /// where clause to be inserted for you; for advanced queries. The same holds true for
        /// [ORDERBY]. Remember NOT to include the "WHERE" or "ORDER BY" text in your passed arguments.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test", "ID>5", "LastName ASC, FirstName ASC", 10, 3, "Carbide");
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="whereClause">Where clause without the "Where".</param>
        /// <param name="orderByClause">Order BY clause without the "order by".</param>
        /// <param name="pageNum">Which page full of records to read.</param>
        /// <param name="perPage">How many records per page?</param>
        /// <param name="useConnectionStringName">Which connection string to use from within the Web.config file?</param>
        public DataReader(string commandText, string whereClause, string orderByClause, int perPage, int pageNum, string useConnectionStringName)
        {
            connectionStringName = useConnectionStringName;
            ReadByPage(commandText, whereClause, orderByClause, perPage, pageNum);
        }

        /// <summary>
        /// Instantiate the class by passing a SQL command string, where clause, order by clause,
        /// rows per page, and page number, to receive only that page's rows. Only compatible with
        /// Microsoft SQL Server 2005 and later. Uses the default "Carbide" connection string.
        /// 
        /// If you insert [WHERECLAUSE] within your SELECT statement, you can force the passed
        /// where clause to be inserted for you; for advanced queries. The same holds true for
        /// [ORDERBY]. Remember NOT to include the "WHERE" or "ORDER BY" text in your passed arguments.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test", "ID>5", "LastName ASC, FirstName ASC", 10, 3);
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="whereClause">Where clause without the "Where".</param>
        /// <param name="orderByClause">Order BY clause without the "order by".</param>
        /// <param name="pageNum">Which page full of records to read.</param>
        /// <param name="perPage">How many records per page?</param>
        public DataReader(string commandText, string whereClause, string orderByClause, int perPage, int pageNum)
        {
            ReadByPage(commandText, whereClause, orderByClause, perPage, pageNum);
        }

        /// <summary>
        /// Instantiate the class.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader();
        /// </code>
        /// </example>
        public DataReader()
        {
        }

        /// <summary>
        /// Instantiate the class by passing a SQL command string.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        public DataReader(string commandText)
        {
            sqlCommandString = commandText;

            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = ConnectionString;
                cn.Open();
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = commandText;
                cmd.CommandTimeout = 0;
                dr = cmd.ExecuteReader();
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Instantiate the class by passing a SQL command string. Optionally enables getting schema information.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test", true);
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="getSchema">Determines if schema information should also be retured, enabling various other methods and properties.</param>
        public DataReader(string commandText, bool getSchema)
        {
            sqlCommandString = commandText;

            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = ConnectionString;
                cn.Open();
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandTimeout = 0;
                cmd.CommandText = commandText;

                if (getSchema)
                {
                    dr = cmd.ExecuteReader(CommandBehavior.SchemaOnly);
                    schemaTable = dr.GetSchemaTable();
                    dr.Close();

                    schemaAvailable = true;
                }

                dr = cmd.ExecuteReader();
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Instantiate the class by passing a SQL command string and connection string name.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test", "Carbide");
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="connectionName">Name of a connection string within the Web.Config file.</param>
        public DataReader(string commandText, string connectionName)
        {
            sqlCommandString = commandText;

            try
            {
                connectionStringName = connectionName;

                cn = new SqlConnection();
                cn.ConnectionString = ConnectionString;
                cn.Open();
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandTimeout = 0;
                cmd.CommandText = commandText;
                dr = cmd.ExecuteReader();
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Instantiate the class for connecting to an external data source file.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("SELECT * FROM Sheet", "/uploads/sheet.xls", "", DataReader.ConnectionStrings.XLS_OLEDB);
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="filePath">Path to the file.</param>
        /// <param name="password">password for the file, if any, or a blank string.</param>
        /// <param name="Connection_String">DataReader.ConnectionString constant which defines the file type.</param>
        public DataReader(string commandText, string filePath, string password, ConnectionStrings Connection_String)
        {
            oledb_CommandString = commandText;

            string cs = StringValueOf(Connection_String).Replace("{FILEPATH}", filePath).Replace("{PASSWORD}", password);
            oledb_ConnectionString = cs;

            try
            {
                cn_Oledb = new OleDbConnection(cs);
                cmd_Oledb = new OleDbCommand(commandText, cn_Oledb);
                cmd_Oledb.CommandTimeout = 0;
                cn_Oledb.Open();
                dr_Oledb = cmd_Oledb.ExecuteReader();
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Instantiate the class by passing a SQL command string, optionally enables getting schema information,
        /// pass a connection string name.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test", true, "Carbide");
        /// </code>
        /// </example>
        /// <param name="commandText">A SQL command to execute.</param>
        /// <param name="getSchema">Determines if schema information should also be retured, enabling various other methods and properties.</param>
        /// <param name="connectionName">Name of a connection string within the Web.Config file.</param>
        public DataReader(string commandText, bool getSchema, string connectionName)
        {
            sqlCommandString = commandText;

            try
            {
                connectionStringName = connectionName;

                cn = new SqlConnection();
                cn.ConnectionString = ConnectionString;
                cn.Open();
                cmd = new SqlCommand();
                cmd.CommandTimeout = 0;
                cmd.Connection = cn;
                cmd.CommandText = commandText;

                if (getSchema)
                {
                    dr = cmd.ExecuteReader(CommandBehavior.SchemaOnly);
                    schemaTable = dr.GetSchemaTable();
                    dr.Close();

                    schemaAvailable = true;
                }

                dr = cmd.ExecuteReader();
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Closes the Smart Reader object when the class is destroyed.
        /// </summary>
        ~DataReader()
        {
            Close();
        }

        /// <summary>
        /// Close a previously opened DataReader object. You must close an opened DataReader object when finished using it!
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Close();
        /// </code>
        /// </example>
        /// <returns>Nothing.</returns>
        public void Close()
        {
            try
            {
                if (cn != null)
                {
                    cn.Dispose();
                    cmd.Dispose();
                }

                if (cn_Oledb != null)
                {
                    cn_Oledb.Dispose();
                    cmd_Oledb.Dispose();
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }
        }

        /// <summary>
        /// Disposes the SmartReader.
        /// </summary>
        public void Dispose()
        {
            Close();
        }

        #endregion

        #region Indexers

        /// <summary>
        /// Shorthand for the GetString method. Returns a record as a string by name.
        /// </summary>
        /// <value>
        /// Record value as a string.
        /// </value>
        public string this[string columnName]
        {
            get
            {
                return GetString(columnName);
            }
        }

        /// <summary>
        /// Shorthand for the GetString method. Returns a record as a string by column number.
        /// </summary>
        /// <value>
        /// Record value as a string.
        /// </value>
        public string this[int columnIndex]
        {
            get
            {
                return GetString(columnIndex);
            }
        }

        #endregion

        #region Utility / Schema Methods

        private static string StringValueOf(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());
            DescriptionAttribute[] attributes = (DescriptionAttribute[])fi.GetCustomAttributes(typeof(DescriptionAttribute), false);

            if (attributes.Length > 0)
            {
                return attributes[0].Description;
            }

            else
            {
                return value.ToString();
            }
        }

        private static Object EnumValueOf(string value, Type enumType)
        {
            String[] names = Enum.GetNames(enumType);

            foreach (string name in names)
            {
                if (StringValueOf((Enum)Enum.Parse(enumType, name)).Equals(value))
                {
                    return Enum.Parse(enumType, name);
                }
            }

            throw new ArgumentException("The string is not a description or value of the specified enum.");
        }

        /// <summary>
        /// Used by the constructor to read in a page of results.
        /// </summary>
        private void ReadByPage(string commandText, string WhereClause, string OrderByClause, int PerPage, int PageNum)
        {
            string template = "WITH VIRTUAL_HALIDE_ROWSET AS (SELECT ROW_NUMBER() OVER( ORDER BY [ORDERBY] ) AS ROWNUMBER, * FROM ([SELECT]) AS ML_HALIDE WHERE [WHERECLAUSE]) SELECT * FROM VIRTUAL_HALIDE_ROWSET WHERE ROWNUMBER BETWEEN CONVERT(varchar, [BEGINRECORD]) and CONVERT(varchar, [ENDRECORD]);";

            if (PerPage > 0 && PageNum > 0)
            {
                template = template.Replace("[ORDERBY]", OrderByClause);
                template = template.Replace("[SELECT]", commandText);
                template = template.Replace("[WHERECLAUSE]", WhereClause);

                int beginRecord = (PerPage * PageNum) - PerPage + 1;
                int endRecord = (PerPage * PageNum);

                template = template.Replace("[BEGINRECORD]", beginRecord.ToString());
                template = template.Replace("[ENDRECORD]", endRecord.ToString());

                sqlCommandString = template;

                try
                {
                    cn = new SqlConnection();
                    cn.ConnectionString = ConnectionString;
                    cn.Open();
                    cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandTimeout = 0;
                    cmd.CommandText = template;
                    dr = cmd.ExecuteReader();
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }
        }

        /// <summary>
        /// Read the first (or next) row in the query.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// while (reader.Read())
        /// {
        ///		...
        ///	}
        ///	reader.Close();
        /// </code>
        /// </example>
        /// <returns>true if read, false if end of data.</returns>
        public bool Read()
        {
            bool output = false;

            try
            {
                if (dr_Oledb != null)
                {
                    output = dr_Oledb.Read();
                }

                else
                {
                    output = dr.Read();
                }

                if (output)
                {
                    _RowsRead++;
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Switch to the next result set; for use with SQL statements that return multiple (compound) recordsets.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.NextResult();
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <returns>true if result set is switched, false if not.</returns>
        public bool NextResult()
        {
            try
            {
                if (dr_Oledb != null)
                {
                    return dr_Oledb.NextResult();
                }

                else
                {
                    return dr.NextResult();
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return false;
            }
        }

        /// <summary>
        /// Retrieve the columns and their schema information as an ASCII text string for output.
        /// </summary>
        /// <example>
        /// <code>
        /// <![CDATA[
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// Response.Write (reader.ListSchema().Replace("\r\n", "<br />"));
        /// ...
        /// reader.Close();
        /// ]]>
        /// </code>
        /// </example>
        /// <returns>A string</returns>
        public string ListSchema()
        {
            string output = "Schema information is not available. Instantiate the Smartreader with a true value to use schema-based features.";

            if (schemaAvailable)
            {
                output = "";

                try
                {
                    foreach (System.Data.DataRow myField in schemaTable.Rows)
                    {
                        //For each property of the field...
                        foreach (System.Data.DataColumn myProperty in schemaTable.Columns)
                        {
                            //Display the field name and value.
                            output += myProperty.ColumnName + " = " + myField[myProperty].ToString() + "\r\n";
                        }

                        output += "\r\n";
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Get the primary key column name, or an empty string if schema is not available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetPrimarykeyName();
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <returns>A string with the column name of the primary key.</returns>
        public string GetPrimarykeyName()
        {
            if (schemaAvailable)
            {
                try
                {
                    // Find by iteration
                    foreach (System.Data.DataRow myField in schemaTable.Rows)
                    {
                        foreach (System.Data.DataColumn myProperty in schemaTable.Columns)
                        {
                            if (myProperty.ColumnName.ToLower() == "iskey")
                            {
                                return myField["columnName"].ToString();
                            }
                        }
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return "";
        }

        /// <summary>
        /// Get the size (dimension) of the column, or zero if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// int result = reader.GetColumnSize("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>An integer.</returns>
        public int GetColumnSize(string columnName)
        {
            int output = 0;

            if (schemaAvailable)
            {
                try
                {
                    System.Data.DataColumn[] myPrimaryKey = new System.Data.DataColumn[1];
                    myPrimaryKey[0] = schemaTable.Columns["columnName"];
                    schemaTable.PrimaryKey = myPrimaryKey;
                    System.Data.DataRow myDataRow = schemaTable.Rows.Find(columnName);
                    output = (int)myDataRow["ColumnSize"];
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            /*
			// Find by iteration
			foreach (DataRow myField in schemaTable.Rows)
			{
				if (myField["columnName"].ToString().ToLower() == columnName.ToLower())
				{
					//For each property of the field...
					foreach (DataColumn myProperty in schemaTable.Columns)
					{
						if (myProperty.ColumnName.ToLower() == "columnsize")
						{
							return (int)myField[myProperty];
						}
					}
				}
			}
			*/

            return output;
        }

        /// <summary>
        /// Is the specified column a primary key? Returns false if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.GetColumnIsKey("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>true or false.</returns>
        public bool GetColumnIsKey(string columnName)
        {
            bool output = false;

            if (schemaAvailable)
            {
                try
                {
                    if (GetPrimarykeyName().ToLower() == columnName.ToLower())
                    {
                        output = true;
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Does a specified column allow nulls? Returns false if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.GetColumnAllowNulls("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>true or false.</returns>
        public bool GetColumnAllowNulls(string columnName)
        {
            bool output = false;

            if (schemaAvailable)
            {
                try
                {
                    System.Data.DataColumn[] myPrimaryKey = new System.Data.DataColumn[1];
                    myPrimaryKey[0] = schemaTable.Columns["columnName"];
                    schemaTable.PrimaryKey = myPrimaryKey;
                    System.Data.DataRow myDataRow = schemaTable.Rows.Find(columnName);
                    output = (bool)myDataRow["AllowDBNull"];
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Is a specified column an identity? Returns false if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.GetColumnIsIdentity("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>true or false.</returns>
        public bool GetColumnIsIdentity(string columnName)
        {
            bool output = false;

            if (schemaAvailable)
            {
                try
                {
                    System.Data.DataColumn[] myPrimaryKey = new System.Data.DataColumn[1];
                    myPrimaryKey[0] = schemaTable.Columns["columnName"];
                    schemaTable.PrimaryKey = myPrimaryKey;
                    System.Data.DataRow myDataRow = schemaTable.Rows.Find(columnName);
                    output = (bool)myDataRow["IsIdentity"];
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Is a specified column an auto-incrementing field? Returns false if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.GetColumnIsAutoIncrement("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>true or false.</returns>
        public bool GetColumnIsAutoIncrement(string columnName)
        {
            bool output = false;

            if (schemaAvailable)
            {
                try
                {
                    System.Data.DataColumn[] myPrimaryKey = new System.Data.DataColumn[1];
                    myPrimaryKey[0] = schemaTable.Columns["columnName"];
                    schemaTable.PrimaryKey = myPrimaryKey;
                    System.Data.DataRow myDataRow = schemaTable.Rows.Find(columnName);
                    output = (bool)myDataRow["IsAutoIncrement"];
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Return a column's equivalent system data type name (e.g. "String", "Int64", et al.).
        /// Returns an empty string if no schema information is available.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetColumnSystemDataType("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>Data type name as a string.</returns>
        public string GetColumnSystemDataType(string columnName)
        {
            string output = "";

            if (schemaAvailable)
            {
                try
                {
                    System.Data.DataColumn[] myPrimaryKey = new System.Data.DataColumn[1];
                    myPrimaryKey[0] = schemaTable.Columns["columnName"];
                    schemaTable.PrimaryKey = myPrimaryKey;
                    System.Data.DataRow myDataRow = schemaTable.Rows.Find(columnName);
                    output = myDataRow["DataType"].ToString();
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        /// <summary>
        /// Retrieve the SQL data type name of a specified column (e.g. "varchar", "int", "smallint", et al.).
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetDataTypeName(0);
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnIndex">Number of the column.</param>
        /// <returns>A string.</returns>
        public string GetDataTypeName(int columnIndex)
        {
            string output = string.Empty;

            try
            {
                output = dr.GetDataTypeName(columnIndex);
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Retrieve the SQL data type name of a specified column (e.g. "varchar", "int", "smallint", et al.).
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetDataTypeName("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of the column.</param>
        /// <returns>A string.</returns>
        public string GetDataTypeName(string columnName)
        {
            try
            {
                return GetDataTypeName(dr.GetOrdinal(columnName));
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return "";
            }
        }

        /// <summary>
        /// Get a column name by its number.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.ColumnName(0);
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnNumber">Number of column to retrieve.</param>
        /// <returns>A string.</returns>
        public string ColumnName(int columnNumber)
        {
            try
            {
                if (dr_Oledb != null)
                {
                    return dr_Oledb.GetName(columnNumber);
                }

                else
                {
                    return dr.GetName(columnNumber);
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return "";
            }
        }

        /// <summary>
        /// Is a specified column value empty or null?
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.IsNullOrEmpty("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to evaluate.</param>
        /// <returns>true if column value is null or empty, false if not.</returns>
        public bool IsNullOrEmpty(string columnName)
        {
            try
            {
                if (dr_Oledb != null)
                {
                    return String.IsNullOrEmpty(GetString(dr_Oledb.GetOrdinal(columnName)));
                }

                else
                {
                    return String.IsNullOrEmpty(GetString(dr.GetOrdinal(columnName)));
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return false;
            }
        }

        #endregion

        #region Column Value / Data Return Methods

        /// <summary>
        /// Create a dynamic DataTable object from a SQL data statement.
        /// One use for this method is to create a data source for other
        /// controls that want a DataTable, like 3rd party controls.
        /// </summary>
        /// <returns>DataTable object</returns>
        public DataTable ReadTable()
        {
            return ReadTable(false);
        }

        /// <summary>
        /// Create a dynamic DataTable object from a SQL data statement.
        /// One use for this method is to create a data source for other
        /// controls that want a DataTable, like 3rd party controls.
        /// </summary>
        /// <param name="addBlank">Determine whether to add a blank row to the end or not.</param>
        /// <returns>DataTable object</returns>
        public DataTable ReadTable(bool addBlank)
        {
            DataTable outp = new DataTable();
            DateTime start = DateTime.Now;

            try
            {
                if (dr_Oledb != null)
                {
                    using (OleDbConnection con = new OleDbConnection(oledb_ConnectionString))
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter(oledb_CommandString, con))
                        {
                            con.Open();
                            da.Fill(outp);
                        }
                    }

                    if (addBlank)
                    {
                        DataRow drow = outp.NewRow();
                        outp.Rows.InsertAt(drow, 0);
                    }
                }

                else
                {
                    using (SqlConnection con = new SqlConnection(ConnectionString))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(sqlCommandString, con))
                        {
                            con.Open();
                            da.Fill(outp);
                        }
                    }

                    if (addBlank)
                    {
                        DataRow drow = outp.NewRow();
                        outp.Rows.InsertAt(drow, 0);
                    }
                }
            }

            catch { }

            return (outp);
        }

        /// <summary>
        /// Read a column value in as a DateTime object.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// DateTime reader.GetDateTime("thedate");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>DateTime object.</returns>
        public DateTime GetDateTime(string columnName)
        {
            DateTime output = new DateTime(1900, 1, 1);
            int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

            try
            {
                if (dr_Oledb != null)
                {
                    output = dr_Oledb.GetDateTime(ord);
                }

                else
                {
                    output = dr.GetDateTime(ord);
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a nullable DateTime object.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// DateTime? dt = reader.GetDateTimeNullable("thedate");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>DateTime object.</returns>
        public DateTime? GetDateTimeNullable(string columnName)
        {
            DateTime? output = null;
            int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

            try
            {
                if (dr_Oledb != null)
                {
                    output = dr_Oledb.GetDateTime(ord);
                }

                else
                {
                    output = dr.GetDateTime(ord);
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a string formatted as a date.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetDate("thedate");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve</param>
        /// <returns>A string with the column value as a date.</returns>
        public string GetDate(string columnName)
        {
            string output = string.Empty;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr_Oledb.GetDateTime(ord).ToString("M/d/yyyy");
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr.GetDateTime(ord).ToString("M/d/yyyy");
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a string formatted as a time.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetTime("thedate");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A string with the column value as a time.</returns>
        public string GetTime(string columnName)
        {
            string output = string.Empty;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr_Oledb.GetDateTime(ord).ToString("h:mm tt");
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr.GetDateTime(ord).ToString("h:mm tt");
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a string formatted as money.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetMoney("cost");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A string with the column formatted as currency.</returns>
        public string GetMoney(string columnName)
        {
            string output = string.Empty;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr_Oledb.GetDouble(ord).ToString("0.00");
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr.GetSqlMoney(ord).ToDouble().ToString("0.00");
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as an integer.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// int result = reader.GetInt("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>An integer.</returns>
        public int GetInt(string columnName)
        {
            int output = 0;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToInt32(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToInt32(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a nullable int.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// int? result = reader.GetInt32Nullable("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A nullable int</returns>
        public int? GetInt32Nullable(string columnName)
        {
            int? output = null;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (!dr_Oledb.IsDBNull(ord))
                    {
                        output = Convert.ToInt32(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (!dr.IsDBNull(ord))
                    {
                        output = Convert.ToInt32(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as an int.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// int result = reader.GetInt32("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>An int.</returns>
        public int GetInt32(string columnName)
        {
            return GetInt(columnName);
        }

        /// <summary>
        /// Read a column value in as a nullable Int64.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// Int64? result = reader.GetInt64Nullable("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A nullable Int64.</returns>
        public Int64? GetInt64Nullable(string columnName)
        {
            Int64? output = null;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (!dr_Oledb.IsDBNull(ord))
                    {
                        output = Convert.ToInt64(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (!dr.IsDBNull(ord))
                    {
                        output = Convert.ToInt64(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a long.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// long result = reader.GetLong("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A long.</returns>
        public long GetLong(string columnName)
        {
            long output = 0;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToInt64(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToInt64(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as an Int64.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// long result = reader.GetInt64("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>An Int64.</returns>
        public Int64 GetInt64(string columnName)
        {
            return GetLong(columnName);
        }

        /// <summary>
        /// Read a column value in as a double.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// double result = reader.GetDouble("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A double.</returns>
        public double GetDouble(string columnName)
        {
            double output = 0;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToDouble(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToDouble(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a decimal.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// decimal result = reader.GetDecimal("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A decimal.</returns>
        public decimal GetDecimal(string columnName)
        {
            decimal output = 0;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToDecimal(dr_Oledb[ord].ToString());
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = Convert.ToDecimal(dr[ord].ToString());
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a float.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// float result = reader.GetFloat("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A float.</returns>
        public float GetFloat(string columnName)
        {
            float output = 0;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = dr_Oledb.GetFloat(ord);
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = 0;
                    }

                    else
                    {
                        output = dr.GetFloat(ord);
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read an XML result from a stored procedure.
        /// Used to bypass the 2,033 byte limit (multiple row) segmentation of XML results
        /// when simply requesting the column as a string.
        /// Reads in column 0 of all rows in the result set and appends them.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("EXEC prGetXML @email='me@example.com'");
        /// reader.Read();
        /// string XMLresult = reader.GetXMLResult();
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <returns>A string with the XML result.</returns>
        public string GetXMLResult()
        {
            if (xmlResult == null)
            {
                try
                {
                    if (!dr.IsDBNull(0))
                    {
                        if (this.HasRows)
                        {
                            StringBuilder output = new StringBuilder("");

                            if (this.RowsRead > 0)
                            {
                                output.Append(this.GetString(0));
                            }

                            while (this.Read())
                            {
                                output.Append(this.GetString(0));
                            }

                            xmlResult = output.ToString();
                        }
                    }

                    else
                    {
                        xmlResult = "";
                    }
                }

                catch (Exception err)
                {
                    _lastSqlError = err;

                    xmlResult = "";
                }
            }

            return xmlResult;
        }


        /// <summary>
        /// Read a column value in as a string, by its column number.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetString(0);
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnIndex">Number of column to retrieve.</param>
        /// <returns>A string.</returns>
        public string GetString(int columnIndex)
        {
            string output = string.Empty;

            try
            {
                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(columnIndex))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr_Oledb[columnIndex].ToString();
                    }
                }

                else
                {
                    if (dr.IsDBNull(columnIndex))
                    {
                        output = "";
                    }

                    else
                    {
                        output = dr[columnIndex].ToString();
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in as a string by its column name. Can return nulls.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetStringNullable("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A string value or null.</returns>
        public string GetStringNullable(string columnName)
        {
            try
            {
                string x = null;

                if (dr_Oledb != null)
                {
                    if (!dr_Oledb.IsDBNull(dr_Oledb.GetOrdinal(columnName)))
                    {
                        x = dr_Oledb[dr_Oledb.GetOrdinal(columnName)].ToString();
                    }
                }

                else
                {
                    if (!dr.IsDBNull(dr.GetOrdinal(columnName)))
                    {
                        x = dr[dr.GetOrdinal(columnName)].ToString();
                    }
                }

                return x;
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return null;
            }
        }

        /// <summary>
        /// Read a column value in as a string, by its column name.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetString("ID", "none");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <param name="defaultValue">Default value to return if string is null or empty.</param>
        /// <returns>A string.</returns>
        public string GetString(string columnName, string defaultValue)
        {
            try
            {
                string x = "";

                if (dr_Oledb != null)
                {
                    x = GetString(dr_Oledb.GetOrdinal(columnName));

                    if (String.IsNullOrEmpty(x))
                    {
                        x = defaultValue;
                    }
                }

                else
                {
                    x = GetString(dr.GetOrdinal(columnName));

                    if (String.IsNullOrEmpty(x))
                    {
                        x = defaultValue;
                    }
                }

                return x;
            }

            catch (Exception err)
            {
                _lastSqlError = err;
                return "";
            }
        }

        /// <summary>
        /// Read a column value in as a string, by its column name.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetString("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A string.</returns>
        public string GetString(string columnName)
        {
            return GetString(columnName, "");
        }

        /// <summary>
        /// Read a column value in as a boolean, by its column name.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// bool result = reader.GetBoolean("ID");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A boolean.</returns>
        public bool GetBoolean(string columnName)
        {
            bool output = false;

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = false;
                    }

                    else
                    {
                        output = dr_Oledb.GetBoolean(ord);
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = false;
                    }

                    else
                    {
                        output = dr.GetBoolean(ord);
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Read a column value in and process as "Yes", "No", or "n/a" using the GetBoolean method.
        /// </summary>
        /// <example>
        /// <code>
        /// DataReader reader = new DataReader("select * from test");
        /// reader.Read();
        /// string result = reader.GetYesNo("choice");
        /// ...
        /// reader.Close();
        /// </code>
        /// </example>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A string.</returns>
        public string GetYesNo(string columnName)
        {
            string output = "n/a";

            try
            {
                int ord = (dr_Oledb != null ? dr_Oledb.GetOrdinal(columnName) : dr.GetOrdinal(columnName));

                if (dr_Oledb != null)
                {
                    if (dr_Oledb.IsDBNull(ord))
                    {
                        output = "n/a";
                    }

                    else if (dr_Oledb.GetBoolean(ord))
                    {
                        output = "Yes";
                    }

                    else
                    {
                        output = "No";
                    }
                }

                else
                {
                    if (dr.IsDBNull(ord))
                    {
                        output = "n/a";
                    }

                    else if (dr.GetBoolean(ord))
                    {
                        output = "Yes";
                    }

                    else
                    {
                        output = "No";
                    }
                }
            }

            catch (Exception err)
            {
                _lastSqlError = err;
            }

            return output;
        }

        /// <summary>
        /// Gets a numeric field that represents minutes (ie 125)
        /// and converts it to an hour format (ie 2:05)
        /// </summary>
        /// <param name="columnName">Name of column to retrieve.</param>
        /// <returns>A formatted string.</returns>
        public string GetStringOfMinutes(string columnName)
        {
            string output = "";
            string d;

            if (dr_Oledb != null)
            {
                d = GetString(dr_Oledb.GetOrdinal(columnName));
            }

            else
            {
                d = GetString(dr.GetOrdinal(columnName));
            }

            if (!String.IsNullOrEmpty(d))
            {
                try
                {
                    Double x = Convert.ToDouble(d);
                    output = Math.Floor(x / 60).ToString() + ":";
                    x -= Math.Floor(x / 60) * 60;
                    output += x.ToString().PadLeft(2, '0');
                }

                catch (Exception err)
                {
                    _lastSqlError = err;
                }
            }

            return output;
        }

        #endregion
    }
}