using System;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Collections;
using DTO = Rifacimento.Books.Common.DataTransferObjects;
using Rifacimento.Books.Common;

namespace Rifacimento.Books.DataLayer
{
    public class InsightsDAO
    {
        #region Variable Declaration

        // Set the connection string        
        private static string connectionString = string.Empty;
        private static DataSet returnDataSet;
        //SqlTransaction transaction = null;

        #endregion

        #region Database Connection String

        /// <summary>
        /// This function is used to get the Correct Connection String based on the Environement Set 
        /// in the Web Config File.
        /// </summary>
        /// <returns></returns>
        public static string GetConnectionString()
        {
            string conString = null;

            try
            {
                string appEnvironmentConfig = System.Configuration.ConfigurationManager.AppSettings["Environment"];

                if (appEnvironmentConfig == null)
                {
                    throw new Exception("Unable to obtain reference to the AppEnvironmentConfig object based upon the config element Environment.");
                }
                else
                {
                    switch (appEnvironmentConfig)
                    {
                        case "PROD":
                            conString = "Data Source=;Initial Catalog=;User ID=;Password=";
                            break;
                        case "QA":
                            conString = "Data Source=;Initial Catalog=;User ID=;Password=";
                            break;
                        case "TEST":
                            conString = "Data Source=;Initial Catalog=;User ID=;Password=";
                            break;
                        case "DEV":
                            conString = "Data Source=;Initial Catalog=;User ID=;Password=";
                            break;
                        case "LOCAL":
                            conString = @"Server=01HW146181\SQLEXPRESS;uid='';pwd='';Database=model;Integrated Security=true;";
                            break;
                        default:
                            throw new ArgumentOutOfRangeException("humana.environment setting", "Invalid or missing Humana.Environment setting.");
                    }
                    return conString;
                }
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
                return conString = null;
            }
        }

        #endregion

        #region Project Functions

        /// <summary>
        /// GetProjects
        /// </summary>
        /// <param name="projectSearchDTO"></param>
        /// <returns></returns>
        public static DataSet GetProjects(string query)
        {
            connectionString = GetConnectionString();
            SqlConnection connection = new SqlConnection(connectionString);
            returnDataSet = new DataSet();
            try
            {
                connection.Open();
                // Call the ExecuteDataset() method to execute the stored procedure
                SqlCommand sqlCommand = new SqlCommand();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter();

                sqlCommand.Connection = connection;

                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandTimeout = 3600;

                sqlAdapter.SelectCommand = sqlCommand;
                sqlAdapter.Fill(returnDataSet, "Projects");

            }
            catch (SqlException sqlException)
            {
                ExceptionLogger.Log(sqlException);
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
            }
            finally
            {
                if (connection != null)
                    connection.Dispose();
            }
            return returnDataSet;
        }

        #endregion

        #region Touchpoint Functions
        #endregion

        #region MasterData Functions

        /// <summary>
        /// GetDetailsforMasterData
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public static DataSet GetDetailsforMasterData(string query)
        {
            connectionString = GetConnectionString();
            SqlConnection connection = new SqlConnection(connectionString);
            returnDataSet = new DataSet();
            //returnDataSet = null;
            try
            {
                connection.Open();
                // Call the ExecuteDataset() method to execute the stored procedure
                SqlCommand sqlCommand = new SqlCommand();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter();

                sqlCommand.Connection = connection;

                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandTimeout = 3600;

                sqlAdapter.SelectCommand = sqlCommand;
                sqlAdapter.Fill(returnDataSet, "Details");

            }
            catch (SqlException sqlException)
            {
                ExceptionLogger.Log(sqlException);
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
            }
            finally
            {
                if (connection != null)
                    connection.Dispose();
            }
            return returnDataSet;
        }

        /// <summary>
        /// AddDetailsforMasterData
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public static bool AddDetailsforMasterData(string query)
        {
            connectionString = GetConnectionString();
            SqlConnection connection = new SqlConnection(connectionString);
            bool success = false;
            int rowCount = 0;
            try
            {
                connection.Open();
                // Call the ExecuteDataset() method to execute the stored procedure
                SqlCommand sqlCommand = new SqlCommand();

                sqlCommand.Connection = connection;

                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandTimeout = 3600;

                rowCount = sqlCommand.ExecuteNonQuery();
            }
            catch (SqlException sqlException)
            {
                ExceptionLogger.Log(sqlException);
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
            }
            finally
            {
                if (connection != null)
                    connection.Dispose();

                if (rowCount > 0)
                {
                    success = true;
                }

            }
            return success;
        }

        #endregion

        #region Other Common Functions

        /// <summary>
        /// GetColumnNames
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static DataSet GetColumnNames(string query)
        {
            connectionString = GetConnectionString();
            SqlConnection connection = new SqlConnection(connectionString);
            returnDataSet = new DataSet();
            try
            {
                connection.Open();
                // Call the ExecuteDataset() method to execute the stored procedure
                SqlCommand sqlCommand = new SqlCommand();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter();

                sqlCommand.Connection = connection;

                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandTimeout = 3600;

                sqlAdapter.SelectCommand = sqlCommand;
                sqlAdapter.Fill(returnDataSet, "ColumnNames");

            }
            catch (SqlException sqlException)
            {
                ExceptionLogger.Log(sqlException);
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
            }
            finally
            {
                if (connection != null)
                    connection.Dispose();
            }
            return returnDataSet;
        }

        /// <summary>
        /// Takes a dataset and creates a OPENXML script dynamically around it for 
        /// bulk inserts 
        /// </summary> 
        /// <remarks>The DataSet must have at least one primary key, otherwise it'll wipe 
        /// out the entire table, then insert the dataset. Multiple Primary Keys are okay. 
        /// The dataset's columns must match the target table's columns EXACTLY. A 
        /// dataset column "democd" does not work for the sql column
        /// "DemoCD". Any missing or incorrect data is assumed NULL (default).
        /// </remarks>
        /// <param name="objDS">Dataset containing target DataTable.
        /// <param name="objCon">Open Connection to the database.
        /// <param name="tablename">Name of table to save.
        public static void BulkTableInsert(DataTable objDS, string user, ArrayList columns)
        {
            //Change the column mapping first.
            //System.Text.StringBuilder sb = new System.Text.StringBuilder(1000);
            //System.IO.StringWriter sw = new System.IO.StringWriter(sb);

            //foreach (DataColumn col in objDS.Columns)
            //{
            //    col.ColumnMapping = System.Data.MappingType.Attribute;
            //}
            //objDS.WriteXml(sw, System.Data.XmlWriteMode.WriteSchema);
            //string sqlText = buildBulkUpdateSql(sb.ToString(), objDS);
            //execSql(sqlText);

            StringBuilder columnList = new StringBuilder();

            for (int i = 1; i < columns.Count; i++)
            {
                columnList.Append(columns[i] + ",");
            }

            SqlConnection objCon = new SqlConnection(GetConnectionString());

            try
            {
                objCon.Open();

                foreach (DataRow dr in objDS.Rows)
                {
                    StringBuilder query = new StringBuilder("Insert into ");
                    query.Append(objDS.TableName);
                    query.Append("(" + columnList.ToString().Trim(new char[] { ',' }) + ")");
                    query.Append(" values (");
                    for (int i = 0; i < dr.ItemArray.Length; i++)
                    {
                        query.Append("'" + dr[i].ToString().Replace("'", "''") + "',");
                    }
                    query.Append("'" + user + "',");
                    query.Append("'" + System.DateTime.Now.ToString() + "'");
                    query.Append(")");

                    execSql(query.ToString(), objCon);
                }
            }
            catch (Exception ex)
            {
            }
            finally
            {
                objCon.Close();
            }
        }

        /// <summary>
        /// buildBulkUpdateSql
        /// </summary>
        /// <param name="dataXml"></param>
        /// <param name="table"></param>
        /// <returns></returns>
        static string buildBulkUpdateSql(string dataXml, DataTable table)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            dataXml = dataXml.Replace(Environment.NewLine, "");
            dataXml = dataXml.Replace("\"", "''");
            //init the xml doc
            sb.Append(" SET NOCOUNT ON");
            sb.Append(" DECLARE @hDoc INT");
            sb.AppendFormat(" EXEC sp_xml_preparedocument @hDoc OUTPUT, '{0}'", dataXml);
            //This code deletes old data based on PK.
            sb.AppendFormat(" DELETE {0} FROM {0} INNER JOIN ", table.TableName);
            sb.AppendFormat(" (SELECT * FROM OPENXML (@hdoc, '/NewDataSet/{0}', 1)",
            table.TableName);
            sb.AppendFormat(" WITH {0}) xmltable ON 1 = 1", table.TableName);
            foreach (DataColumn col in table.PrimaryKey)
            {
                sb.AppendFormat(" AND {0}.{1} = xmltable.{1}", table.TableName,
                col.ColumnName);
            }
            //This code inserts new data.
            sb.AppendFormat(" INSERT INTO {0} SELECT *", table.TableName);
            sb.AppendFormat(" FROM OPENXML (@hdoc, '/NewDataSet/{0}', 1) WITH {0}",
            table.TableName);
            //clear the xml doc
            sb.Append(" EXEC sp_xml_removedocument @hDoc");
            return sb.ToString();
        }

        /// <summary>
        /// execSql
        /// </summary>
        /// <param name="objCon"></param>
        /// <param name="sqlText"></param>
        static void execSql(string sqlText, SqlConnection objCon)
        {
            try
            {
                SqlCommand objCom = new SqlCommand();
                objCom.Connection = objCon;
                objCom.CommandType = CommandType.Text;
                objCom.CommandText = sqlText;
                objCom.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
            }
        }
        #endregion

        #region User Details

        /// <summary>
        /// ExecuteQuery
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public static DataSet ExecuteQuery(string query)
        {
            connectionString = GetConnectionString();
            SqlConnection connection = new SqlConnection(connectionString);
            returnDataSet = new DataSet();
            try
            {
                connection.Open();
                // Call the ExecuteDataset() method to execute the stored procedure
                SqlCommand sqlCommand = new SqlCommand();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter();

                sqlCommand.Connection = connection;

                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandTimeout = 3600;

                sqlAdapter.SelectCommand = sqlCommand;
                sqlAdapter.Fill(returnDataSet, "Details");

            }
            catch (SqlException sqlException)
            {
                ExceptionLogger.Log(sqlException);
            }
            catch (Exception ex)
            {
                ExceptionLogger.Log(ex);
            }
            finally
            {
                if (connection != null)
                    connection.Dispose();
            }
            return returnDataSet;
        }

        #endregion
    }
}
