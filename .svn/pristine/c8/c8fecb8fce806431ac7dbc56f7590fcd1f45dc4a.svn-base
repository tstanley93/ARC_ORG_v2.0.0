using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ARC.Admin
{
    public partial class Database_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet DS = new DataSet();
            string QueryText = AccessDataSource1.SelectCommand;
            DS = SelectQuery(QueryText, "");
            foreach (DataRow row in DS.Tables[0].Rows)
            {
                object RealDate = row["Real_Date"];
                if (RealDate is DBNull)
                {
                    TextBox1.Text = row["Event_Date"].ToString();
                    TextBox2.Text = row["ID"].ToString();
                    AccessDataSource1.Update();
                }   
            }
            
        }

        public DataSet SelectQuery(string QueryText, string ParamValue)
        {
            string path = HttpContext.Current.Server.MapPath("~/App_Data/ARC_ORG_DB.mdb");
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path);
            OleDbCommand sqlcmd = new OleDbCommand(QueryText, connection);
            if (ParamValue != "")
            {
                OleDbParameter sqlparameter = new OleDbParameter("Param1", ParamValue);
                sqlcmd.Parameters.Add(sqlparameter);
            }
            OleDbDataAdapter adapter = new OleDbDataAdapter();
            adapter.SelectCommand = sqlcmd;
            DataSet ds1 = new DataSet();
            adapter.Fill(ds1);
            return ds1;
        }
        
    }
}