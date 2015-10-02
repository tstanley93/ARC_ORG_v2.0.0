using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC.Admin
{
    public partial class PictureGallery_Modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel_Icon.Visible = true;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Panel_Icon.Visible = false;
            Panel1.Visible = true;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/PicAdmin/PictureGallery_Update.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel_HomePic.Visible = true;
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Panel_HomePic.Visible = false;
            Panel1.Visible = true;
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/PicAdmin/PictureGallery_Update.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Panel_RecentPic.Visible = false;
            Panel1.Visible = true;
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/PicAdmin/PictureGallery_Update.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel_RecentPic.Visible = true;
        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ControlIndex = this.DataList3.SelectedIndex;
            //Find the Image Control in the selected Datalist Colum
            DataListItem dli = this.DataList3.Controls[ControlIndex] as DataListItem;
            Image MyImage = dli.FindControl("Image3") as Image;
            //Grab the ImageUrl for this picture.
            string MyImagePath = MyImage.ImageUrl;
            //Delete the actual image file.
            string ActualImagePath = Server.MapPath(MyImagePath);
            System.IO.File.Delete(ActualImagePath);
            //Delete the original image file.
            string OrignialImageName = "";
            string[] split = MyImagePath.Split(new Char[] { '/' });
            foreach (string s in split)
            {
                if (s.Trim().Contains(".jpg"))
                {
                    OrignialImageName = s;
                }
            }
            string OriginalImagePath = Server.MapPath("~/images/PictureGallery/Original_RecentPic/" + OrignialImageName);
            //Delete the image information from the database.
            AccessDataSource3.DeleteParameters.Add("Image_Path", MyImagePath);
            AccessDataSource3.Delete();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int ControlIndex = this.DataList1.SelectedIndex;
            DataListItem dli = this.DataList1.Controls[ControlIndex] as DataListItem;
            Image MyImage = dli.FindControl("Image1") as Image;
            //Grab the ImageUrl for this picture.
            string MyImagePath = MyImage.ImageUrl;
            //Delete the actual image file.
            string ActualImagePath = Server.MapPath(MyImagePath);
            System.IO.File.Delete(ActualImagePath);
            //Delete the original image file.
            string OrignialImageName = "";
            string[] split = MyImagePath.Split(new Char[] { '/' });
            foreach (string s in split)
            {
                if (s.Trim().Contains(".jpg"))
                {
                    OrignialImageName = s;
                }
            }
            string OriginalImagePath = Server.MapPath("~/images/PictureGallery/Original_Icon/" + OrignialImageName);
            System.IO.File.Delete(OriginalImagePath);
            //Delete the image information from the database.
            AccessDataSource1.DeleteParameters.Add("Path", MyImagePath);
            AccessDataSource1.Delete();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ControlIndex = this.DataList2.SelectedIndex;
            //Find the Image Control in the selected Datalist Colum
            DataListItem dli = this.DataList2.Controls[ControlIndex] as DataListItem;
            Image MyImage = dli.FindControl("Image2") as Image;
            //Grab the ImageUrl for this picture.
            string MyImagePath = MyImage.ImageUrl;
            //Delete the actual image file.
            string ActualImagePath = Server.MapPath(MyImagePath);
            System.IO.File.Delete(ActualImagePath);
            //Delete the original image file.
            string OrignialImageName = "";
            string[] split = MyImagePath.Split(new Char[] { '/' });
            foreach (string s in split)
            {
                if (s.Trim().Contains(".jpg"))
                {
                    OrignialImageName = s;
                }
            }
            string OriginalImagePath = Server.MapPath("~/images/PictureGallery/Original_HomePic/" + OrignialImageName);
            //Delete the image information from the database.
            AccessDataSource2.DeleteParameters.Add("FilePath", MyImagePath);
            AccessDataSource2.Delete();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            AccessDataSource4.Delete();
            DropDownList1.DataBind();
        }

        protected void LinkButton10_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel_Pic_Category.Visible = true;
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Panel_Pic_Category.Visible = false;
            Panel1.Visible = true;
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Admin/PicAdmin/PictureGallery_Update.aspx");
        }
    }
}
