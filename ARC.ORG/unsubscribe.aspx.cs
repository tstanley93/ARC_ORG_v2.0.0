using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARC.Code;

namespace ARC
{
    public partial class unsubscribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AppCode appcode = new AppCode();
            appcode.Query("eNewsLetter_Unsubscribe_Delete", "@origemailaddress", TextBox1.Text);            
            TextBox1.Text = "";
        }
    }
}
