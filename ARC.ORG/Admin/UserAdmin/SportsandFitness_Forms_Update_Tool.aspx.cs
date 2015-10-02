﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC.Admin.UserAdmin
{
    public partial class SportsandFitness_Forms_Update_Tool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow gr = this.GridView1.Rows[e.NewEditIndex] as GridViewRow;
            HyperLink MyHyperLink = gr.Cells[2].FindControl("HyperLink2") as HyperLink;
            Literal1.Text = MyHyperLink.Text;
        }

        protected void GridView1_OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow gr = this.GridView1.Rows[e.RowIndex] as GridViewRow;
            FileUpload MyFileUpload = gr.Cells[2].FindControl("FileUpload1") as FileUpload;
            TextBox MyTextBox1 = gr.Cells[1].FindControl("TextBox1") as TextBox;
            TextBox MyTextBox2 = gr.Cells[3].FindControl("TextBox2") as TextBox;
            if (MyFileUpload.HasFile)
            {
                MyFileUpload.SaveAs(HttpContext.Current.Server.MapPath("~/images/SFForms/" + MyFileUpload.FileName));
                SqlDataSource1.UpdateParameters.Add("FormName", MyTextBox1.Text);
                SqlDataSource1.UpdateParameters.Add("FormPath", "~/images/SFForms/" + MyFileUpload.FileName);
                SqlDataSource1.UpdateParameters.Add("FormDescription", MyTextBox2.Text);
                SqlDataSource1.UpdateParameters.Add("ID", e.Keys[0].ToString());
                SqlDataSource1.Update();
            }
            else
            {
                SqlDataSource1.UpdateParameters.Add("FormName", MyTextBox1.Text);
                SqlDataSource1.UpdateParameters.Add("FormPath", Literal1.Text);
                SqlDataSource1.UpdateParameters.Add("FormDescription", MyTextBox2.Text);
                SqlDataSource1.UpdateParameters.Add("ID", e.Keys[0].ToString());
                SqlDataSource1.Update();
            }
            GridView1.EditIndex = -1;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(HttpContext.Current.Server.MapPath("~/images/SFForms/" + FileUpload1.FileName));
            string FormPath = "~/images/SFForms/" + FileUpload1.FileName;
            SqlDataSource1.InsertParameters.Add("FormPath", FormPath);
            SqlDataSource1.Insert();
            TextBox1.Text = "";
            TextBox3.Text = "";
            GridView1.DataBind();
            Panel1.Visible = false;
        }
    }
}