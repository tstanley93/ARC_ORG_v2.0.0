using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using ARC.Code;
using System.Configuration;

namespace ARC
{
    public partial class Donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Setup Validators on the form fields.
            TextBox1.Attributes["onblur"] = "donation_form_Name_Validator(this.form, 'TextBox1')";
            TextBox2.Attributes["onblur"] = "donation_form_Phone_Validator(this.form, 'TextBox2')";
            Email_Addr.Attributes["onblur"] = "donation_form_Email_Validator(this.form, 'Email_Addr')";
            TextBox3.Attributes["onblur"] = "donation_form_Address_Validator(this.form, 'TextBox3')";
            TextBox7.Attributes["onblur"] = "donation_form_Comments_Validator(this.form, 'TextBox7')";
            TextBox4.Attributes["onclick"] = "calendarPicker(this.form, 'TextBox4');";
            TextBox4.Attributes["onkeydown"] = "donation_form_Date_NoType(this.form, 'TextBox4')";
            TextBox5.Attributes["onclick"] = "calendarPicker(this.form, 'TextBox5');";
            TextBox5.Attributes["onkeydown"] = "donation_form_Date_NoType(this.form, 'TextBox5')";
            TextBox6.Attributes["onclick"] = "calendarPicker(this.form, 'TextBox6');";
            TextBox6.Attributes["onkeydown"] = "donation_form_Date_NoType(this.form, 'TextBox6')";
            SetFocus(TextBox1);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
                //Find todays date, and place it in the hidden text box...
            Submit_Time.Text = DateTime.Today.Date.ToShortDateString();
            
                //Set which times were selected in the form, and place those times in the hiddend text boxes.
            if (RadioButton1.Checked)
            {
                Pref_Time.Text = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                Pref_Time.Text = RadioButton2.Text;
            }
            if (RadioButton3.Checked)
            {
                Second_Time.Text = RadioButton3.Text;
            }
            else if (RadioButton4.Checked)
            {
                Second_Time.Text = RadioButton4.Text;
            }
            if (RadioButton5.Checked)
            {
                Third_Time.Text = RadioButton5.Text;
            }
            else if (RadioButton6.Checked)
            {
                Third_Time.Text = RadioButton6.Text;
            }

                //Submit to the database.
            try
            {
                //AccessDataSource1.Insert();                
                SqlConnection conn = null;
                SqlDataReader rdr = null;
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Home_ARC_ORGConnectionString"].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("Donation_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("Donor_Name", TextBox1.Text));
                cmd.Parameters.Add(new SqlParameter("Phone_Number", TextBox2.Text));
                cmd.Parameters.Add(new SqlParameter("Address", TextBox3.Text));
                cmd.Parameters.Add(new SqlParameter("Address2", TextBox8.Text));
                cmd.Parameters.Add(new SqlParameter("City", TextBox9.Text));
                cmd.Parameters.Add(new SqlParameter("State", DropDownList2.SelectedValue));
                cmd.Parameters.Add(new SqlParameter("Zipcode", TextBox11.Text));
                cmd.Parameters.Add(new SqlParameter("Item_Number", DropDownList1.SelectedValue));
                if (TextBox4.Text != "Click to Select")
                {
                    cmd.Parameters.Add(new SqlParameter("Preferred_Date", TextBox4.Text));
                }
                cmd.Parameters.Add(new SqlParameter("Preferred_Time", Pref_Time.Text));
                if (TextBox5.Text != "Click to Select")
                {
                    cmd.Parameters.Add(new SqlParameter("Second_Date", TextBox5.Text));
                }
                cmd.Parameters.Add(new SqlParameter("Second_Time", Second_Time.Text));
                if (TextBox6.Text != "Click to Select")
                {
                    cmd.Parameters.Add(new SqlParameter("Third_Date", TextBox6.Text));
                }
                cmd.Parameters.Add(new SqlParameter("Third_Time", Third_Time.Text));
                cmd.Parameters.Add(new SqlParameter("Comments", TextBox7.Text));
                cmd.Parameters.Add(new SqlParameter("Submit_Date", Submit_Time.Text));
                cmd.Parameters.Add(new SqlParameter("Email_Address", Email_Addr.Text));
                rdr = cmd.ExecuteReader();
                rdr.Close();
            }
            catch ( Exception m)
            {
                if (!ClientScript.IsStartupScriptRegistered("alert"))
                {
                    string message = "donor_email_fail_pop('" + m.Message + ", please contact the Website Administrator for help.');";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_fail_pop", message, true);
                }
            }

                //Create an email.            
            MailMessage NewMailMessage = new MailMessage();
            MailAddress FromAddress = new MailAddress("Donations@arcgh.org");
                //Build To: Address list                                 
            //DataView dv = (DataView)AccessDataSource2.Select(DataSourceSelectArguments.Empty); 
            AppCode ac = new AppCode();
            DataSet dv = ac.SelectQuery("Donation_Email_Select");
            
            foreach (DataRow row in dv.Tables[0].Rows)
            {
                NewMailMessage.To.Add(Convert.ToString(row["Email_Address"]));
            }            
            NewMailMessage.From = FromAddress;            
            NewMailMessage.Subject = "A Donation Pickup has been requested!";            
            NewMailMessage.IsBodyHtml = true;
                //Email Body.
            string NewBody = "<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01//EN' 'http://www.w3.org/TR/html4/strict.dtd'><html><head><title></title><style type='text/css'>div {background: #0099CC; padding: 15px;}#header {background: white; padding: 10px; color: #2f4c7c;}.bottom_border {border-bottom-style: solid; border-bottom-color: black; border-bottom-width: 1px; }#Main_table {padding: 10px; color: white; background: #2f4c7c;}#top {background: #6A6A6A; height: 25px;}</style></head><body><div><div id='top'></div><div id='header'><h2>A Donation Pickup has been requested!</h2><br/><h3>Please review the requested times and dates below, and contact the donor to schedule a time for pickup.</h3><br/></div><div id='Main_table'><table style='margin-left: 35px'>";
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Name:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox1.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Telephone Number:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox2.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Email Address:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", Email_Addr.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Address:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox3.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Address2:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox8.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors City:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox9.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors State:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", DropDownList2.SelectedValue);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Zip:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox11.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Number of Items to Pickup:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", DropDownList1.SelectedValue);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Preferred Pickup Date and Time:</h3></td><td class='bottom_border'><table><tr><td><h3 style='margin-right: 10px;'>{0}</h3></td><td><h3>{1}</h3></td></tr></table></td></tr>", TextBox4.Text, Pref_Time.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Secondary Pickup Date and Time:</h3></td><td class='bottom_border'><table><tr><td><h3 style='margin-right: 10px;'>{0}</h3></td><td><h3>{1}</h3></td></tr></table></td></tr>", TextBox5.Text, Second_Time.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Third Pickup Date and Time:</h3></td><td class='bottom_border'><table><tr><td><h3 style='margin-right: 10px;'>{0}</h3></td><td><h3>{1}</h3></td></tr></table></td></tr>", TextBox6.Text, Third_Time.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Donors Comments:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", TextBox7.Text);
            NewBody += string.Format("<tr><td class='bottom_border'><h3 style='margin-right: 15px'>Submitted Date:</h3></td><td class='bottom_border'><h3>{0}</h3></td></tr>", Submit_Time.Text);
            NewBody += "</table></div></div><br/></body></html>";
            NewMailMessage.Body = NewBody;
                        
                //Send the email.
            SmtpClient MyMailServer = new SmtpClient();
            try
            {
                MyMailServer.Send(NewMailMessage);
                if (!ClientScript.IsStartupScriptRegistered("alert"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_success_pop", "donor_email_success_pop('Your Donation Pickup Request has been sent!  Thank you so much!');", true);
                }
            }
            catch (Exception m)
            {

                if (!ClientScript.IsStartupScriptRegistered("alert"))
                {
                    string message = "donor_email_fail_pop('" + m.Message + ", please contact the Website Administrator for help.');";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "donor_email_fail_pop", message, true);
                }
            }
            Clear();
        }

        private void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "Click to Select";
            TextBox5.Text = "Click to Select";
            TextBox6.Text = "Click to Select";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            DropDownList2.SelectedValue = "none";
            TextBox11.Text = "";
            Pref_Time.Text = "";
            Second_Time.Text = "";
            Third_Time.Text = "";
            Submit_Time.Text = "";
            Email_Addr.Text = "";
            DropDownList1.SelectedValue = "1";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;
        }

    }
}
