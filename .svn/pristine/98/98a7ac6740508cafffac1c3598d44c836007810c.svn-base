using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;

namespace ARC.Admin.NewsAdmin
{
    public partial class eNewsLetter_Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            DataView DV1 = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView DRV1 in DV1)
            {
                string ToAddress = DRV1["Email_Address"].ToString();
                MailMessage message = new MailMessage("thearch@arcgh.org", ToAddress);                
                message.Body = TextBox2.Text;
                message.Subject = TextBox1.Text;
                message.BodyEncoding = System.Text.Encoding.UTF8;
                string Path = HttpContext.Current.Server.MapPath("~/images/EnewsLetters/Temp/");
                FileUpload1.SaveAs(Path + FileUpload1.FileName);
                Attachment attach1 = new Attachment(Path + FileUpload1.FileName);
                message.Attachments.Add(attach1);
                SmtpClient mailserver = new SmtpClient("amcsmail02.amcs.com", 25);
                try
                {
                    mailserver.Send(message);
                }
                catch
                {
                }
                attach1.Dispose();
            }
            System.IO.File.Delete(HttpContext.Current.Server.MapPath("~/images/EnewsLetters/Temp/") + FileUpload1.FileName);
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
