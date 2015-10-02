﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Design;

namespace ARC.Admin.UserAdmin
{
    public partial class Staff_Update_Tool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string PicPath = HttpContext.Current.Server.MapPath("~/images/PictureGallery/Staff/Temp/" + FileUpload1.FileName);
            FileUpload1.SaveAs(PicPath);
            IconReSizeImage(PicPath, FileUpload1.FileName);
            string PhotoPath = "~/images/PictureGallery/Staff/" + FileUpload1.FileName;
            SqlDataSource1.InsertParameters.Add("MemberPhotoPath", PhotoPath);
            SqlDataSource1.Insert();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            GridView1.DataBind();
        }

        protected void GridView1_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow gr = this.GridView1.Rows[e.NewEditIndex] as GridViewRow;
            System.Web.UI.WebControls.Image MyImage = gr.Cells[1].FindControl("Image1") as System.Web.UI.WebControls.Image;
            Literal1.Text = MyImage.ImageUrl;
        }

        protected void GridView1_OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow gr = this.GridView1.Rows[e.RowIndex] as GridViewRow;
            FileUpload MyFileUpload = gr.Cells[1].FindControl("FileUpload2") as FileUpload;
            TextBox MyTextBox1 = gr.Cells[1].FindControl("Textbox6") as TextBox;
            TextBox MyTextBox2 = gr.Cells[2].FindControl("Textbox5") as TextBox;
            TextBox MyTextBox3 = gr.Cells[1].FindControl("Textbox8") as TextBox;
            TextBox MyTextBox4 = gr.Cells[1].FindControl("Textbox7") as TextBox;
            if (MyFileUpload.HasFile)
            {
                string PicPath = HttpContext.Current.Server.MapPath("~/images/PictureGallery/Staff/Temp/" + MyFileUpload.FileName);
                MyFileUpload.SaveAs(PicPath);
                IconReSizeImage(PicPath, MyFileUpload.FileName);
                try
                {
                    System.IO.File.Delete(HttpContext.Current.Server.MapPath(Literal1.Text));
                }
                catch
                {
                }
                string PhotoPath = "~/images/PictureGallery/Staff/" + MyFileUpload.FileName;
                SqlDataSource1.UpdateParameters.Add("MemberName", MyTextBox1.Text);
                SqlDataSource1.UpdateParameters.Add("MemberDescription", MyTextBox2.Text);
                SqlDataSource1.UpdateParameters.Add("Order", MyTextBox3.Text);
                SqlDataSource1.UpdateParameters.Add("MemberTitle", MyTextBox4.Text);
                SqlDataSource1.UpdateParameters.Add("MemberPhotoPath", PhotoPath);
                Parameter DataRowKey = new Parameter("ID");
                DataRowKey.DefaultValue = e.Keys[0].ToString();
                SqlDataSource1.UpdateParameters.Add(DataRowKey);
                SqlDataSource1.Update();
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
            else
            {
                SqlDataSource1.UpdateParameters.Add("MemberName", MyTextBox1.Text);
                SqlDataSource1.UpdateParameters.Add("MemberDescription", MyTextBox2.Text);
                SqlDataSource1.UpdateParameters.Add("Order", MyTextBox3.Text);
                SqlDataSource1.UpdateParameters.Add("MemberTitle", MyTextBox4.Text);
                Parameter MemberPhotoPath = new Parameter("MemberPhotoPath");
                MemberPhotoPath.DefaultValue = Literal1.Text;
                SqlDataSource1.UpdateParameters.Add(MemberPhotoPath);
                Parameter DataRowKey = new Parameter("ID");
                DataRowKey.DefaultValue = e.Keys[0].ToString();
                SqlDataSource1.UpdateParameters.Add(DataRowKey);
                SqlDataSource1.Update();
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }

        void IconReSizeImage(string ImagePath, string ImageName)
        {
            System.Drawing.Image Image1 = System.Drawing.Image.FromFile(ImagePath);
            System.Drawing.Image Image2 = new Bitmap(Image1, 147, 173);
            Graphics oGraphic = Graphics.FromImage(Image2);
            oGraphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            oGraphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            oGraphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            Rectangle oRectangle = new Rectangle(0, 0, 147, 173);
            oGraphic.DrawImage(Image2, oRectangle);
            Image1.Dispose();
            string NewIconPath = Server.MapPath("~/images/PictureGallery/Staff/");
            NewIconPath += ImageName;
            Image2.Save(NewIconPath, System.Drawing.Imaging.ImageFormat.Jpeg);
            Image2.Dispose();
            System.IO.File.Delete(ImagePath);          
        }
    }
}
