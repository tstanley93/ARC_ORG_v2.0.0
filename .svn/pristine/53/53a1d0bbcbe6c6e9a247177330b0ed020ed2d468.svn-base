using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARC.Controls;

namespace ARC
{
    public partial class Recurring_Date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Recurring_Dates1.strdatelist += new OurDateList(Recurring_Dates1_strdatelist);
        }

        void Recurring_Dates1_strdatelist(string thedatelist)
        {
            TextBox1.Text = thedatelist;
            if (!ClientScript.IsStartupScriptRegistered("alert"))
            {
                string script = "recur_textbox('ctl00_ContentPlaceHolder3_tbDateList', '" + thedatelist + "')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "recur_textbox", script, true);
            }
        }
    }
}