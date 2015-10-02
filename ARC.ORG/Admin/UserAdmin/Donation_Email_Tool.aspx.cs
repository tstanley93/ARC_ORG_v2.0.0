using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC.Admin.UserAdmin
{
    public partial class Donation_Email_Tool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                if (!ClientScript.IsStartupScriptRegistered("donor_email_success_pop"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_success_pop", "window.alert('The new recipient email address has successfully been added!');", true);
                }
            }
            catch (Exception m)
            {
                if (!ClientScript.IsStartupScriptRegistered("donor_email_fail_pop"))
                {
                    string message = "window.alert('" + m.Message + ", please contact the Website Administrator for help.');";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_fail_pop", message, true);
                }
            }
            Panel1.Visible = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SetFocus(TextBox1);
        }
    }
}