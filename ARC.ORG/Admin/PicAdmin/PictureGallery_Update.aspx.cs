using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Design;
using System.Data;
using System.Data.OleDb;
using ARC.Code;

namespace ARC.Admin
{
    public partial class PictureGallery_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AppCode appcode = new AppCode();
            DataTable dt = appcode.DataTableSelectQuery("pic_update_category_select");
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get file, and put it in the Original_Icon Directory ...
            string IconPath = Server.MapPath("~/images/PictureGallery/Original_Icon/" + FileUpload1.FileName);
            //IconPath += FileUpload1.FileName;
            FileUpload1.SaveAs(IconPath);
            FileUpload1.Dispose();
            string ImageName = TextBox1.Text + ".jpg";
            //ImageName += ".jpg";
            // Modify the image size, save the new image to the Icon directory, and store its info in the database.
            IconReSizeImage(IconPath, ImageName);
            // Notify the user that the file is uploaded ... 
            ClientScriptManager cs = Page.ClientScript;
            Type cstype = this.GetType();
            if (!cs.IsStartupScriptRegistered(cstype, "UploadSuccess"))
            {
                string s = "<script language=\"JScript\">window.alert('The Icon file was uploaded successfully.  You may now use it in the calendar.');</script>";
                ClientScript.RegisterStartupScript(cstype, "UploadSuccess", s);
            }
        }

        void IconReSizeImage(string ImagePath, string ImageName)
        {
            System.Drawing.Image Image1 = System.Drawing.Image.FromFile(ImagePath);
            System.Drawing.Image Image2 = new Bitmap(Image1,14,16);
            Graphics oGraphic = Graphics.FromImage(Image2);
            oGraphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            oGraphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            oGraphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            Rectangle oRectangle = new Rectangle(0, 0, 14, 16);
            oGraphic.DrawImage(Image2, oRectangle);           
            Image1.Dispose();
            string NewIconPath = Server.MapPath("~/images/PictureGallery/Icon/");
            NewIconPath += ImageName;
            Image2.Save(NewIconPath, System.Drawing.Imaging.ImageFormat.Jpeg);
            Image2.Dispose();
            Label2.Text = "~/images/PictureGallery/Icon/" + ImageName;
            //AccessDataSource1.Insert();
            try
            {
                AppCode appcode = new AppCode();
                appcode.Query("pic_update_insert", "Icon_Name", ImageName, "Path", ImagePath);
            }
            catch (Exception)
            {
            }
            //Rename the Original Image File to the same name as the new Image ...
            try
            {
                System.IO.File.Copy(ImagePath, Server.MapPath("~/images/PictureGallery/Original_Icon/" + ImageName), true);
            }
            catch
            {                
            }
            try
            {
                System.IO.File.Delete(ImagePath);
                System.IO.File.Delete(Server.MapPath("~/images/PictureGallery/Original_Icon/" + ImageName));
            }
            catch (Exception)
            {
            }
        }

        void HomePictureResizeImage(string ImagePath, string ImageName)
        {
            System.Drawing.Image Image1 = System.Drawing.Image.FromFile(ImagePath);
            System.Drawing.Image Image2 = new Bitmap(Image1, 160, 120);
            Graphics oGraphic = Graphics.FromImage(Image2);
            oGraphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            oGraphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            oGraphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            Rectangle oRectangle = new Rectangle(0, 0, 160, 120);
            oGraphic.DrawImage(Image2, oRectangle);
            Image1.Dispose();
            string NewHomePicturePath = Server.MapPath("~/images/PictureGallery/HomePic/" + ImageName);
            Image2.Save(NewHomePicturePath, System.Drawing.Imaging.ImageFormat.Jpeg);
            Image2.Dispose();
            Label3.Text = "~/images/PictureGallery/HomePic/" + ImageName;
            Label5.Text = ImageName;
            try
            {
                //AccessDataSource2.Insert();
                AppCode appcode = new AppCode();
                appcode.Query("home_pic_upate_insert", "FileName", ImageName, "FilePath", ImagePath);
            }
            catch (Exception)
            {                               
            }
        }

        void RecentPicturesResizeImage(string ImagePath, string ImageName)
        {
            System.Drawing.Image Image1 = System.Drawing.Image.FromFile(ImagePath);
            System.Drawing.Image Image2 = new Bitmap(Image1, 230, 261);
            Graphics oGraphic = Graphics.FromImage(Image2);
            oGraphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
            oGraphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            oGraphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            Rectangle oRectangle = new Rectangle(0, 0, 230, 261);
            oGraphic.DrawImage(Image2, oRectangle);
            Image1.Dispose();
            string NewHomePicturePath = Server.MapPath("~/images/PictureGallery/RecentPic/" + ImageName);
            Image2.Save(NewHomePicturePath, System.Drawing.Imaging.ImageFormat.Jpeg);
            Image2.Dispose();
            Label4.Text = "~/images/PictureGallery/RecentPic/" + ImageName;
            Label6.Text = ImageName;
            try
            {
                //AccessDataSource3.Insert();
                AppCode appcode = new AppCode();
                appcode.Query("recent_pic_update_insert", "ImageName", ImageName, "ImagePath", ImagePath, "Category", DropDownList1.SelectedValue.ToString());
            }
            catch (Exception)
            {
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Get file, and put it in the Original_HomePic Directory ...
            string HomePicturePath = Server.MapPath("~/images/PictureGallery/Original_HomePic/" + FileUpload2.FileName);
            string HomePictureFilename = FileUpload2.FileName;
            string NewFileName = FileUpload2.FileName;
            if (!System.IO.File.Exists(HomePicturePath))
            {
                FileUpload2.SaveAs(HomePicturePath);
            }
            else
            {
                int count = 2;
                while (System.IO.File.Exists(HomePicturePath))
                {
                    int FileLength = HomePictureFilename.Length;
                    NewFileName = HomePictureFilename.Remove(FileLength - 4, 4);
                    NewFileName += "_" + count + ".jpg";
                    HomePicturePath = Server.MapPath("~/images/PictureGallery/Original_HomePic/" + NewFileName);
                    count++;
                }
                FileUpload2.SaveAs(HomePicturePath);
            }
            
            // Modify the image size, move the new image to the Icon directory, and store its info in the database.
            HomePictureResizeImage(HomePicturePath, NewFileName);
            // Notify the user that the file is uploaded ... 
            ClientScriptManager cs1 = Page.ClientScript;
            Type cstype1 = this.GetType();
            if (!cs1.IsStartupScriptRegistered(cstype1, "HomeUploadSuccess"))
            {
                string s = "<script language=\"JScript\">window.alert('The Home Picture file was uploaded successfully.  It will now show up on the home page.');</script>";
                ClientScript.RegisterStartupScript(cstype1, "HomeUploadSuccess", s);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Get file, and put it in the Temp Directory ...
            string RecentPicturePath = Server.MapPath("~/images/PictureGallery/Original_RecentPic/" + FileUpload3.FileName);
            string RecentPictureFilename = FileUpload3.FileName;
            string NewFileName = FileUpload3.FileName;
            // check that the file does not already exist.
            // If it does, then increment and rname the file, and check again.
            // Continue until the filename does not already exist.
            if (!System.IO.File.Exists(RecentPicturePath))
            {
                FileUpload3.SaveAs(RecentPicturePath);
            }
            else
            {
                int count = 2;
                while (System.IO.File.Exists(RecentPicturePath))
                {
                    int FileLength = RecentPictureFilename.Length;
                    NewFileName = RecentPictureFilename.Remove(FileLength - 4, 4);
                    NewFileName += "_" + count + ".jpg";
                    RecentPicturePath = Server.MapPath("~/images/PictureGallery/Original_RecentPic/" + NewFileName);
                    count++;
                }
                FileUpload3.SaveAs(RecentPicturePath);
            }

            // Modify the image size, move the new image to the Icon directory, and store its info in the database.
            RecentPicturesResizeImage(RecentPicturePath, NewFileName);
            // Notify the user that the file is uploaded ... 
            ClientScriptManager cs2 = Page.ClientScript;
            Type cstype2 = this.GetType();
            if (!cs2.IsStartupScriptRegistered(cstype2, "RecentUploadSuccess"))
            {
                string s = "<script language=\"JScript\">window.alert('The Recent Pictures Picture file was uploaded successfully.  It will now show up in the Picture Rotators.');</script>";
                ClientScript.RegisterStartupScript(cstype2, "RecentUploadSuccess", s);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                //AccessDataSource4.Insert();
                AppCode appcode = new AppCode();
                appcode.Query("pic_update_category_insert", "Category", TextBox2.Text);
            }
            catch (Exception)
            {
            }            
            // Notify the user that the category is uploaded ... 
            ClientScriptManager cs3 = Page.ClientScript;
            Type cstype3 = this.GetType();
            if (!cs3.IsStartupScriptRegistered(cstype3, "CategorySuccess"))
            {
                string s = "<script language=\"JScript\">window.alert('The new Picture Category was added successfully.');</script>";
                ClientScript.RegisterStartupScript(cstype3, "CategorySuccess", s);
            }
            TextBox2.Text = "";
            AppCode appcode1 = new AppCode();
            DataTable dt = appcode1.DataTableSelectQuery("pic_update_category_select");
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }
    }
}
