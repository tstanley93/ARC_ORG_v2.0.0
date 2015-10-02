using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC
{
    public partial class PictureGallery_Image_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string OriginalImage = Request.QueryString["ImagePath"].ToString();
            if (OriginalImage != null)
            {
                Image1.ImageUrl = OriginalImage;
            }
        }
    }
}
