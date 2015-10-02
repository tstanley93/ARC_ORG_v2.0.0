using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC
{
    public partial class DatePicker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectedyear = "";
            if (Request.QueryString.Keys.Count > 1)
            {
                selectedyear = Request.QueryString["field2"];
            }
            if (selectedyear != "")
            {
                int todayday = DateTime.Now.Day;
                int todaymonth = DateTime.Now.Month;
                int todayyear = Convert.ToInt16(selectedyear);
                string todaydate = todaymonth + "/" + todayday + "/" + todayyear;
                DateTime todadate2 = Convert.ToDateTime(todaydate);
                Calendar1.TodaysDate = todadate2;
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        /// <summary>

        /// Replaces the standard post-back link for each calendar day 

        /// with the javascript to set the opener window's TextBox text.

        /// Eliminates a needless round-trip to the server.

        /// </summary>

        /// <param name="sender"></param>

        /// <param name="e"></param>
        protected void Calendar1_DayRender(object sender, System.Web.UI.WebControls.DayRenderEventArgs e)
        {
            // Clear the link from this day
            e.Cell.Controls.Clear();
            // Add the custom link
            System.Web.UI.HtmlControls.HtmlGenericControl Link = new System.Web.UI.HtmlControls.HtmlGenericControl();
            Link.TagName = "a";
            Link.InnerText = e.Day.DayNumberText;
            Link.Attributes.Add("href", String.Format("javascript:recur_populatetextbox('{0}', '{1}')", Request.QueryString["field"], e.Day.Date.ToShortDateString()));
            // By default, this will highlight today's date.
            if (e.Day.IsSelected)
            {
                Link.Attributes.Add("style", this.Calendar1.SelectedDayStyle.ToString());
            }
            // Now add our custom link to the page
            e.Cell.Controls.Add(Link);
        }

    }
}