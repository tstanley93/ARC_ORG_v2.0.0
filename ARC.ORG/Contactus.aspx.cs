using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace ARC
{
    public partial class Contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage(TextBox1.Text, "tstanley@allmobilecs.com");
            message.Body = TextBox3.Text;
            message.Subject = TextBox2.Text;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            SmtpClient mailserver = new SmtpClient("amcsmail02.amcs.com", 25);
            try
            {
                mailserver.Send(message);
            }
            catch
            {
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}
