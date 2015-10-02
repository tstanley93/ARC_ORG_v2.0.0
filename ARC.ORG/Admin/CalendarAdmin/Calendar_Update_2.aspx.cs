using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using ARC.Code;
using System.Data.SqlClient;
using System.Configuration;

namespace ARC.Admin
{
    public partial class Calendar_Update_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button3.Attributes["onclick"] = "recurrdatepop()";
            tbDateList.Visible = false;
            if (!Page.IsPostBack)
            {
                AppCode appcode = new AppCode();
                DataTable dt = appcode.DataTableSelectQuery("Calendar_Update_Icon_Select");
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox_EventDate.Text = "mm/dd/yyyy";
            TextBox_EventName.Text = "";
            TextBoxEventInfo.Text = "";
            tbDateList.Text = "";
            tbDateList.Visible = false;
            Image1.Visible = false;
            Image2.Visible = false;
            DropDownList1.SelectedValue = "Select_Icon";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tbDateList.Text != "")
            {
                string theDateString = tbDateList.Text;
                string[] splitString = theDateString.Split(new char[] { '|' });               
                for (int i = 0; i < splitString.Count(); i++)
                {
                    TextBox_EventDate.Text = splitString[i];
                    //AccessDataSource1.Insert();
                    DataInsert();
                }
            TextBox_EventDate.Text = "mm/dd/yyyy";
            TextBox_EventName.Text = "";
            TextBoxEventInfo.Text = "";
                DropDownList1.SelectedValue = "Select_Icon";
                Image1.Visible = false;
                Image2.Visible = false;
                tbDateList.Visible = false;
        }
            else
            {
                //AccessDataSource1.Insert();
                DataInsert();
                TextBox_EventDate.Text = "mm/dd/yyyy";
                TextBox_EventName.Text = "";
                TextBoxEventInfo.Text = "";
                DropDownList1.SelectedValue = "Select_Icon";
            }
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Image1.ImageUrl = DropDownList1.SelectedValue;
            Image1.Visible = true;
            TextBoxEventInfo.Focus();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            tbDateList.Visible = true;
            Image2.Visible = true;
        }

        /// <summary>Insert Values from form into SQL Database.</summary>
        protected void DataInsert()
        {
            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("Calendar_Update_Insert", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("Edate", TextBox_EventDate.Text));
            cmd.Parameters.Add(new SqlParameter("Ename", TextBox_EventName.Text));
            cmd.Parameters.Add(new SqlParameter("Einfo", TextBoxEventInfo.Text));
            cmd.Parameters.Add(new SqlParameter("Eicon", DropDownList1.SelectedValue));
            cmd.Parameters.Add(new SqlParameter("ERDate", Convert.ToDateTime(TextBox_EventDate.Text)));
            rdr = cmd.ExecuteReader();
            rdr.Close();
        }

    }
}
