using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC
{
    public partial class enewsletter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string SessionFileName = Request.QueryString["FileName"];
            if (SessionFileName != null)
            {
                string FilePath = "~/images/EnewsLetters/" + SessionFileName;
                if (System.IO.File.Exists(HttpContext.Current.Server.MapPath(FilePath)))
                {
                    ShowPdf1.FilePath = FilePath;
                }
                else
                {
                    ShowPdf1.Visible = false;
                    if (!ClientScript.IsStartupScriptRegistered("alert"))
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('The eNewsletter you are looking for seems to be missing.  Please contact the website administrator, and tell them what you were trying to do when you go this error.');", true);
                    }
                }
            }
        }
    }
}
