﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Configuration;

namespace ARC.Code
{
    /// <summary> Container for helper functions.</summary>
    public class AppCode
    {
        #region SQL Functions

        /// <summary>Executes a SQL Stored Procedure with 1 parameter, and returns a DataSet.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure on the SQL Server</param>
        /// <param name="ParamValue">The Valure being passed to the Stored Procedure.</param>
        /// <param name="ParamName">The actual name of the Paramter in the Stored Procedure.</param>
        /// <returns>DataSet</returns>
        public DataSet SelectQuery(string StoredProcName, object ParamValue, string ParamName)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            DataSet ds1 = new DataSet();

            // create and open a connection object
            //conn = new SqlConnection(@"Data Source=NEWDUCK\SQLEXPRESSR2;Initial Catalog=ARC_ORG;Integrated Security=True");             
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter(ParamName, ParamValue));
            // execute the command            
            //SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //adapter.Fill(ds1);

            // iterate through results, printing each to console
            rdr = cmd.ExecuteReader();
            ds1.Load(rdr, LoadOption.OverwriteChanges, "eNewLetter");
            //while (rdr.Read())
            //{

            //}  
            conn.Close();
            return ds1;
        }

        /// <summary> Executes a SQL Stored Procedure with no parameters, and returns a DataSet.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Prcedure.</param>
        /// <returns>DataSet</returns>
        public DataSet SelectQuery(string StoredProcName)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            DataSet ds1 = new DataSet();

            // create and open a connection object             
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            // execute the command            
            rdr = cmd.ExecuteReader();
            ds1.Load(rdr, LoadOption.OverwriteChanges, "eNewLetter");
            conn.Close();
            return ds1;
        }

        /// <summary> Executes a SQL Stored Procedure with 1 parameter, and returns nothing.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure on the SQL Server</param>
        /// <param name="ParamName">The Exact name of the parameter in the stored procedure.</param>
        /// <param name="ParamValue">The Valure being passed to the Stored Procedure.</param>
        public void Query(string StoredProcName, string ParamName, object ParamValue)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter(ParamName, ParamValue));
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

        /// <summary>
        /// Executes a SQL Stored Procedure with 2 parameters, and returns nothing.
        /// </summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure.  Must be exact.</param>
        /// <param name="ParamName1">The exact name of the first parameter, as a string.</param>
        /// <param name="ParamValue1">The Value of the parameter, as an object.</param>
        /// <param name="ParamName2">The exact name of the second parameter, as a string.</param>
        /// <param name="ParamValue2">The Value of the second parameter, as an Object.</param>
        public void Query(string StoredProcName, string ParamName1, object ParamValue1, string ParamName2, object ParamValue2)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter(ParamName1, ParamValue1));
            cmd.Parameters.Add(new SqlParameter(ParamName2, ParamValue2));
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

        /// <summary> Executes a SQL Stored Procedure with no parameters, returns nothing.</summary>
        /// <param name="StoredProcName">The name of the Stored Procedure</param>
        public void Query(string StoredProcName)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

        /// <summary> Execute a SQL Stored Procedure with 3 parameters, and returns nothing.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure on the SQL Server</param>
        /// <param name="ParamName1">The actual name of the first Paramter in the Stored Procedure.</param>
        /// <param name="ParamValue1">The first value being passed to the Stored Procedure.</param>
        /// <param name="ParamName2">The actual name of the second Paramter in the Stored Procedure.</param>
        /// <param name="ParamValue2">The second value being passed to the Stored Procedure.</param>
        /// <param name="ParamName3">The actual name of the third Paramter in the Stored Procedure.</param>
        /// <param name="ParamValue3">The third value being passed to the Stored Procedure.</param>
        public void Query(string StoredProcName, string ParamName1, object ParamValue1, string ParamName2, object ParamValue2, string ParamName3, object ParamValue3)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter(ParamName1, ParamValue1));
            cmd.Parameters.Add(new SqlParameter(ParamName2, ParamValue2));
            cmd.Parameters.Add(new SqlParameter(ParamName3, ParamValue3));
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

        /// <summary>Executes a SQL Stored Procedure with 1 parameter, returns a DataTable.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure on the SQL Server</param>
        /// <param name="ParamValue">The Valure being passed to the Stored Procedure.</param>
        /// <param name="ParamName">The actual name of the Paramter in the Stored Procedure.</param>
        /// <returns>DataTable</returns>
        public DataTable DataTableSelectQuery(string StoredProcName, string ParamValue, string ParamName)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            DataTable dt = new DataTable();

            // create and open a connection object             
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // 3. add the parameter
            cmd.Parameters.Add(new SqlParameter(ParamName, ParamValue));

            // execute the command            
            rdr = cmd.ExecuteReader();
            dt.Load(rdr);
            conn.Close();
            return dt;
        }

        /// <summary>Executes a SQL Stored Procedure with 2 parameters, and returns a DataTable</summary>
        /// <param name="StoredProcName">Name of Stored Procedure</param>
        /// <param name="ParamValue1">First Param Value</param>
        /// <param name="ParamName1">First Param Name</param>
        /// <param name="ParamValue2">Second Param Value</param>
        /// <param name="ParamName2">Second Param Name</param>
        /// <returns>DataTable</returns>
        public DataTable DataTableSelectQuery(string StoredProcName, int ParamValue1, string ParamName1, int ParamValue2, string ParamName2)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            DataTable dt = new DataTable();

            // create and open a connection object             
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // 3. add the parameter
            cmd.Parameters.Add(new SqlParameter(ParamName1, ParamValue1));
            cmd.Parameters.Add(new SqlParameter(ParamName2, ParamValue2));

            // execute the command            
            rdr = cmd.ExecuteReader();
            dt.Load(rdr);
            conn.Close();
            return dt;
        }

        /// <summary>Executes a SQL Stored Procedure with no parameters, returns a DataTable.</summary>
        /// <param name="StoredProcName">The actual name of the Stored Procedure.</param>
        /// <returns>DataTable</returns>
        public DataTable DataTableSelectQuery(string StoredProcName)
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            DataTable dt = new DataTable();

            // create and open a connection object             
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand(StoredProcName, conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // execute the command            
            rdr = cmd.ExecuteReader();
            dt.Load(rdr);
            conn.Close();
            return dt;
        }

        /// <summary>Executes an Access Database File Query with a single parameter, for determining if there is a BlogPost within the last "X" days. Returns a DataTable.</summary>
        /// <param name="ParamValue">This takes a SHORT DateTime Value.</param>
        /// <returns>DataTable</returns>
        public DataTable AcessDataTable(DateTime ParamValue)
        {
            string path = HttpContext.Current.Server.MapPath(@"~\Arc_Blog\App_Data\TihBlogData.mdb");
            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path);
            OleDbCommand sqlcmd = new OleDbCommand(@"SELECT [published] FROM Articles WHERE ([published] > [?]);", connection);
            OleDbParameter sqlparameter = new OleDbParameter("Param1", ParamValue);
            sqlcmd.Parameters.Add(sqlparameter);
            OleDbDataAdapter adapter = new OleDbDataAdapter();
            adapter.SelectCommand = sqlcmd;
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }

        #endregion

        #region Date Functions

        /// <summary> Takes apart a DateTime value, and changes it to the string version, in the right format.</summary>
        /// <param name="TodayDate">DateTime Value to turn into a properly formated string.</param>
        /// <returns>String</returns>
        public string DateFormater(DateTime TodayDate)
        {
            int TodayMonth = TodayDate.Month;
            int TodayDay = TodayDate.Day;
            int TodayYear = TodayDate.Year;
            string TodayMonthString, TodayDayString, TodayYearString;
            if (TodayMonth > 9)
            {
                TodayMonthString = Convert.ToString(TodayMonth);
            }
            else
            {
                TodayMonthString = Convert.ToString(TodayMonth);
                TodayMonthString = "0" + TodayMonthString;
            }
            if (TodayDay > 9)
            {
                TodayDayString = Convert.ToString(TodayDay);
            }
            else
            {
                TodayDayString = Convert.ToString(TodayDay);
                TodayDayString = "0" + TodayDayString;
            }
            TodayYearString = Convert.ToString(TodayYear);
            string TodayDF = TodayMonthString + "/" + TodayDayString + "/" + TodayYearString;
            return TodayDF;
        }

        /// <summary> Converts a string into a properly formatted DateTime String, returns a string</summary>
        /// <param name="Edate">The improperly formatted date string.</param>
        /// <returns>String</returns>
        public string DateFormater(string Edate)
        {
            DateTime dt = Convert.ToDateTime(Edate);
            string dts = dt.ToLongDateString();
            return dts;
        }

        #endregion
    }
}