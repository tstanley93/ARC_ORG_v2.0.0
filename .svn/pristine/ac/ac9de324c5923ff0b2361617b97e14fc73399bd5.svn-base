using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;
using ARC.Code;

namespace ARC.Admin
{
    public partial class Calendar_Modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime DT = DateTime.Now;
            int MonthDT = DT.Month;
            int YearDT = DT.Year;
            if (!IsPostBack)
            {
                DropDownList1.SelectedValue = MonthDT.ToString();
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(Convert.ToString(YearDT - 2));
                DropDownList2.Items.Add(Convert.ToString(YearDT - 1));
                DropDownList2.Items.Add(Convert.ToString(YearDT));
                DropDownList2.Items.Add(Convert.ToString(YearDT + 1));
                DropDownList2.Items.Add(Convert.ToString(YearDT + 2));
                DropDownList2.SelectedValue = YearDT.ToString(); 
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AppCode appcode = new AppCode();
            int param1 = Convert.ToInt16(DropDownList1.SelectedValue);
            int parma2 = Convert.ToInt16(DropDownList2.SelectedValue);
            DataTable dt = appcode.DataTableSelectQuery("Calendar_Modify_Select", param1, "month", parma2, "year");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string IconPath = "Text";
            DataSet ds = new DataSet("Event_Calendar");
            AppCode appcode = new AppCode();
            ds = appcode.SelectQuery("Calendar_Modify_Select_Record", DataList1.SelectedValue, "p1");
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                TextBox_EventDate.Text = Convert.ToString(row["Event_Date"]);
                TextBox_EventName.Text = Convert.ToString(row["Event_Name"]);
                TextBoxEventInfo.Text = Convert.ToString(row["Additional_Info"]);
                IconPath = Convert.ToString(row["Icon_Path"]);
            }
            DropDownList3.DataBind();
            DropDownList3.ClearSelection();            
            ListItem li = DropDownList3.Items.FindByValue(IconPath);
            DropDownList3.SelectedIndex = DropDownList3.Items.IndexOf(li);
            Image1.ImageUrl = IconPath;
            DataList1.Visible = false;
            Panel1.Visible = true;
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Update_Query();
            TextBox_EventDate.Text = "";
            TextBox_EventName.Text = "";
            TextBoxEventInfo.Text = "";
            Panel1.Visible = false;
            DataList1.DataBind();
            DataList1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox_EventDate.Text = "";
            TextBox_EventName.Text = "";
            TextBoxEventInfo.Text = "";
            Panel1.Visible = false;
            DataList1.DataBind();
            DataList1.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            AppCode appcode = new AppCode();
            appcode.Query("Calendar_Modify_Delete", "p1", DataList1.SelectedValue);
            TextBox_EventDate.Text = "";
            TextBox_EventName.Text = "";
            TextBoxEventInfo.Text = "";
            Panel1.Visible = false;
            DataList1.DataBind();
            DataList1.Visible = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = DropDownList3.SelectedValue;
        }

        protected void DropDownList3_OnTextChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = DropDownList3.SelectedValue;
        }

        /// <summary> Execute the update stored procedure.</summary>
        protected void Update_Query()
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("Calendar_Modify_Update", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("Edate", TextBox_EventDate.Text));
            cmd.Parameters.Add(new SqlParameter("Ename", TextBox_EventName.Text));
            cmd.Parameters.Add(new SqlParameter("Einfo", TextBoxEventInfo.Text));
            cmd.Parameters.Add(new SqlParameter("IconPath", DropDownList3.SelectedValue));
            cmd.Parameters.Add(new SqlParameter("Rdate", Convert.ToDateTime(TextBox_EventDate.Text)));
            cmd.Parameters.Add(new SqlParameter("ID", Convert.ToInt16(DataList1.SelectedValue)));
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

    }
}
