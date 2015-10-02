using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecurrenceGenerator;

namespace ARC.Controls
{
    public delegate void OurDateList(string thedatelist);

    public partial class Recurring_Dates : System.Web.UI.UserControl
    {
        #region Public Events
        
        public event OurDateList strdatelist; 

        #endregion

        #region Radio Button Events

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton4.Checked = false;
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton3.Checked = false;
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton6.Checked = false;
        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton5.Checked = false;
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            string ThisDay = dt.DayOfWeek.ToString();
            if (!IsPostBack)
            {
                switch (ThisDay)
                {
                    case "Sunday":
                        Sunday.Checked = true;
                        break;
                    case "Monday":
                        Monday.Checked = true;
                        break;
                    case "Tuesday":
                        Tuesday.Checked = true;
                        break;
                    case "Wednesday":
                        Wednesday.Checked = true;
                        break;
                    case "Thursday":
                        Thursday.Checked = true;
                        break;
                    case "Friday":
                        Friday.Checked = true;
                        break;
                    case "Saturday":
                        Saturday.Checked = true;
                        break;
                }
                RadioButton1.Checked = true;
                RadioButton3.Checked = true;
                RadioButton5.Checked = true;
                RadioButton7.Checked = true;
                TextBox1.Text = dt.ToShortDateString();
                TextBox3.Text = dt.ToShortDateString();
                TextBox10.Text = dt.Day.ToString();
                TextBox6.Text = dt.Day.ToString();  
            }          
        }        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue)
            {
                case "Daily":
                    Daily_Panel.Visible = true;
                    Weekly_Panel.Visible = false;
                    Monthly_Panel.Visible = false;
                    Yearly_Panel.Visible = false;
                    break;
                case "Weekly":
                    Daily_Panel.Visible = false;
                    Weekly_Panel.Visible = true;
                    Monthly_Panel.Visible = false;
                    Yearly_Panel.Visible = false;
                    break;
                case "Monthly":
                    Daily_Panel.Visible = false;
                    Weekly_Panel.Visible = false;
                    Monthly_Panel.Visible = true;
                    Yearly_Panel.Visible = false;
                    break;
                case "Yearly":
                    Daily_Panel.Visible = false;
                    Weekly_Panel.Visible = false;
                    Monthly_Panel.Visible = false;
                    Yearly_Panel.Visible = true;
                    break;
            }
        }                

        protected void Button1_Click(object sender, EventArgs e)
        {
            RecurrenceValues values = null;
            DateTime StartDate = Convert.ToDateTime(TextBox1.Text);
            DateTime EndDate = Convert.ToDateTime(TextBox3.Text);

            switch (DropDownList1.SelectedValue)
            {
                case "Daily": // Daily
                    DailyRecurrenceSettings da;
                    if (RadioButton1.Checked)
                        da = new DailyRecurrenceSettings(StartDate, Convert.ToInt32(TextBox2.Text));
                    else
                        da = new DailyRecurrenceSettings(StartDate, EndDate);

                    if (RadioButton3.Checked)
                        values = da.GetValues(int.Parse(TextBox4.Text));
                    else
                        values = da.GetValues(1, DailyRegenType.OnEveryWeekday);
                    break;

                case "Weekly": // Weekly
                    WeeklyRecurrenceSettings we;
                    SelectedDayOfWeekValues selectedValues = new SelectedDayOfWeekValues();

                    if (RadioButton1.Checked)
                        we = new WeeklyRecurrenceSettings(StartDate, Convert.ToInt32(TextBox2.Text));
                    else
                        we = new WeeklyRecurrenceSettings(StartDate, EndDate);

                    selectedValues.Sunday = Sunday.Checked;
                    selectedValues.Monday = Monday.Checked;
                    selectedValues.Tuesday = Tuesday.Checked;
                    selectedValues.Wednesday = Wednesday.Checked;
                    selectedValues.Thursday = Thursday.Checked;
                    selectedValues.Friday = Friday.Checked;
                    selectedValues.Saturday = Saturday.Checked;

                    values = we.GetValues(int.Parse(TextBox5.Text), selectedValues);
                    break;

                case "Monthly": // Monthly
                    MonthlyRecurrenceSettings mo;
                    if (RadioButton1.Checked)
                        mo = new MonthlyRecurrenceSettings(StartDate, Convert.ToInt32(TextBox2.Text));
                    else
                        mo = new MonthlyRecurrenceSettings(StartDate, EndDate);


                    if (RadioButton5.Checked)
                        values = mo.GetValues(int.Parse(TextBox6.Text), Convert.ToInt32(TextBox7.Text));
                    else
                    {
                        // Get the adjusted values
                        mo.AdjustmentValue = int.Parse(TextBox8.Text);
                        values = mo.GetValues((MonthlySpecificDatePartOne)DropDownList2.SelectedIndex, (MonthlySpecificDatePartTwo)DropDownList3.SelectedIndex, int.Parse(TextBox9.Text));
                    }
                    break;

                case "Yearly": // Yearly
                    YearlyRecurrenceSettings yr;
                    if (RadioButton1.Checked)
                        yr = new YearlyRecurrenceSettings(StartDate, Convert.ToInt32(TextBox2.Text));
                    else
                        yr = new YearlyRecurrenceSettings(StartDate, EndDate);


                    if (RadioButton7.Checked)
                        values = yr.GetValues(int.Parse(TextBox10.Text), DropDownList4.SelectedIndex + 1);
                    else
                    {
                        // Get the adjusted value
                        yr.AdjustmentValue = int.Parse(TextBox11.Text);
                        values = yr.GetValues((YearlySpecificDatePartOne)DropDownList5.SelectedIndex, (YearlySpecificDatePartTwo)DropDownList6.SelectedIndex, (YearlySpecificDatePartThree)(DropDownList7.SelectedIndex + 1));
                    }
                    break;
            }
            
            //build a string of the dates...
            string DateString = null;
            foreach (DateTime item in values.Values)
            {
                string dt = item.ToShortDateString();
                if (DateString == null)
                {
                    DateString = dt;
                }
                else
                {
                    DateString += "|" + dt;
                }                
            }
            strdatelist(DateString);
        }
                
    }
}