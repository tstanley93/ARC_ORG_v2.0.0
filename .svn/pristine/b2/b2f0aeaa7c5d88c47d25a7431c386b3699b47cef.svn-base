using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC.Admin
{
    public partial class eNewletter_Update : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string path = HttpContext.Current.Server.MapPath("~/images/EnewsLetters/");
            path += FileUpload1.FileName;
            // Take apart selected date, to make it the 1st of the month...
            int TodayMonth = Calendar1.SelectedDate.Month;
            int TodayYear = Calendar1.SelectedDate.Year;
            int TodayDay = 01;
            string eNewsDateString = Convert.ToString(TodayMonth) + "/" + Convert.ToString(TodayDay) + "/" + Convert.ToString(TodayYear);
            Calendar1.SelectedDate = Convert.ToDateTime(eNewsDateString);
            // Check the filename, and make sure there are no spaces in it ...
            string SelectedFileName = FileUpload1.FileName;
            // Check to make sure a date was selected ... 
            if (eNewsDateString == "1/1/1")
            {
                ClientScriptManager cs1 = Page.ClientScript;
                Type cstype1 = this.GetType();
                if (!cs1.IsStartupScriptRegistered(cstype1, "CalendarError"))
                {
                    string s = "<script language=\"JScript\">window.alert('Please select a valid date from the calendar for this eNewsLetter, and try again.');</script>";
                    ClientScript.RegisterStartupScript(cstype1, "CalendarError", s);
                }
            }
            // Check to make sure there are no spaces in the filename ....
            else if (SelectedFileName.Contains(" "))
            {
               ClientScriptManager cs2 = Page.ClientScript;
               Type cstype2 = this.GetType();
               if (!cs2.IsStartupScriptRegistered(cstype2, "FilenameError"))
               {
                    string s = "<script language=\"JScript\">window.alert('Please remove all \"Spaces\" from the filename of the eNewsLetter, and try again.');</script>";
                    ClientScript.RegisterStartupScript(cstype2, "FilenameError", s);
               }
            }
            else
            {
                try
                {
                    AccessDataSource1.Insert();
                }
                catch (System.Data.OleDb.OleDbException)
                {
                    ClientScriptManager cs = Page.ClientScript;
                    Type cstype = this.GetType();
                    if (!cs.IsStartupScriptRegistered(cstype, "DataError"))
                    {
                        string s = "<script language=\"JScript\">window.alert('There was a problem accessing the database file.  Please try again.  If you continue to get this error, please contact the system administrator.');</script>";
                        ClientScript.RegisterStartupScript(cstype, "DataError", s);
                    }
                }
                try
                {
                    FileUpload1.SaveAs(path);
                    ClientScriptManager cs1 = Page.ClientScript;
                    Type cstype1 = this.GetType();
                    if (!cs1.IsStartupScriptRegistered(cstype1, "UploadSuccess"))
                    {
                        string s = "<script language=\"JScript\">window.alert('The eNewsLetter was updated successfully!');</script>";
                        ClientScript.RegisterStartupScript(cstype1, "UploadSuccess", s);
                    }
                }
                catch (System.IO.DirectoryNotFoundException)
                {
                    ClientScriptManager cs = Page.ClientScript;
                    Type cstype = this.GetType();
                    if (!cs.IsStartupScriptRegistered(cstype, "IOError"))
                    {
                        string s = "<script language=\"JScript\">window.alert('There was a problem uploading the file. Please check the filename, and file location, and try again.  If you continue to get this error, please contact the system administrator.');</script>";
                        ClientScript.RegisterStartupScript(cstype, "IOError", s);
                    }
                }
                TextBox2.Text = "";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

    }
}
