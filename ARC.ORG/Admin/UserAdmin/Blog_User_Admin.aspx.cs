﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC.Admin.UserAdmin
{
    public partial class Blog_User_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SetFocus(TextBox1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Configuration.Configuration BlogConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~/Arc_Blog/Web.Config");            
            try
            {
                AccessDataSource1.Insert();
                ClientScriptManager cs = Page.ClientScript;
                if (!ClientScript.IsStartupScriptRegistered("donor_email_success_pop"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_success_pop", "window.alert('The new Blog Author has successfully been added!');", true);
                }
            }
            catch (Exception m)
            {
                ClientScriptManager cs = Page.ClientScript;
                if (!ClientScript.IsStartupScriptRegistered("donor_email_fail_pop"))
                {
                    string message = "window.alert('" + m.Message + ", please contact the Website Administrator for help.');";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_fail_pop", message, true);
                }
            }
            Panel1.Visible = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            GridView1.DataBind();
        }
    }
}