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
            string SessionFileName = (string)Session["FileName"];
            if (SessionFileName != null)
            {
                string FilePath = "~/images/EnewsLetters/" + SessionFileName;
                ShowPdf1.FilePath = FilePath;
            }
            else
            {
            }
        }
    }
}
