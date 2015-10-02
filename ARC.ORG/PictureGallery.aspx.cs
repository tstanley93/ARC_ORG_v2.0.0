﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ARC.Code;

namespace ARC
{
    public partial class PictureGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            DataTable dt = new DataTable();
            AppCode appcode = new AppCode();
            dt = appcode.DataTableSelectQuery("PictureGallery_Select", DropDownList1.SelectedValue, "category");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ControlIndex = this.DataList1.SelectedIndex;
            //Find the Image Control in the selected Datalist Colum
            DataListItem dli = this.DataList1.Controls[ControlIndex] as DataListItem;
            Image MyImage = dli.FindControl("Image1") as Image;
            //Grab the ImageUrl for this picture.
            string MyImagePath = MyImage.ImageUrl;
            //Change the path from the current image path, to the Original image path
            string OrignialImageName = "";
            string[] split = MyImagePath.Split(new Char[] { '/' });
            foreach (string s in split)
            {
                if (s.Trim().Contains(".jpg"))
                {
                    OrignialImageName = s;
                }
                else if (s.Trim().Contains(".JPG"))
                {
                    OrignialImageName = s;
                }
            }
            string NewImagePath = "~/images/PictureGallery/Original_RecentPic/" + OrignialImageName;
            string QueryString = "~/PictureGallery_Image_View.aspx" + @"?ImagePath=" + NewImagePath;
            Response.Redirect(QueryString);           
        }

    }
}
