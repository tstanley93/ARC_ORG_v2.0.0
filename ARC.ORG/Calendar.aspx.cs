﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.ComponentModel;
using ARC.Code;

namespace ARC
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = Convert.ToDateTime(Request.QueryString["Date"]);
            Calendar2.SelectedDate = dt;            
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            //Get Event Data for Calendar
            AppCode appcode = new AppCode();
            string sc = "Calendar_DayRender_Select";
            DataSet ds = new DataSet();
            ds = appcode.SelectQuery(sc);
            foreach (DataRow row in ds.Tables[0].Rows) // loop through each rows in order to compare with day cell's date  
            {
                try
                {
                    if (Convert.ToDateTime(row["Event_Date"]) == e.Day.Date)
                    {
                        if (e.Cell.Controls.Count > 1)
                        {
                            Image img = new Image();
                            img.ImageUrl = Convert.ToString(row["Icon_Path"]);
                            img.ToolTip = Convert.ToString(row["Additional_Info"]);
                            e.Cell.Controls.Add(img);
                            string linkbutn = Convert.ToString(row["Event_Name"]);
                            linkbutn = linkbutn + "<br />";
                            Label linkb = new Label();
                            linkb.Text = linkbutn;
                            linkb.ToolTip = Convert.ToString(row["Additional_Info"]);
                            linkb.Font.Size = 10;
                            e.Cell.Controls.Add(linkb);

                        }
                        else
                        {
                            e.Cell.Controls.Clear();
                            Label label = new Label();
                            string labelstring = e.Day.Date.Day.ToString();
                            labelstring = labelstring + "<br />";
                            label.Text = labelstring;
                            e.Cell.Controls.Add(label);
                            Image img = new Image();
                            img.ImageUrl = Convert.ToString(row["Icon_Path"]);
                            img.ToolTip = Convert.ToString(row["Additional_Info"]);
                            e.Cell.Controls.Add(img);
                            string linkbutn = Convert.ToString(row["Event_Name"]);
                            linkbutn = linkbutn + "<br />";
                            Label linkb = new Label();
                            linkb.Text = linkbutn;
                            linkb.ToolTip = Convert.ToString(row["Additional_Info"]);
                            linkb.Font.Size = 10;
                            e.Cell.Controls.Add(linkb);
                        }

                    }
                }
                catch
                {
                    return;
                }

            }
        }

    }
}