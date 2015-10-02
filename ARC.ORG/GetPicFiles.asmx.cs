using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;


namespace ARC
{
    /// <summary>
    /// Summary description for GetPicFiles
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class GetPicFiles : System.Web.Services.WebService
    {
        [WebMethod]
        public AjaxControlToolkit.Slide[] GetRecentSlides()
        {

            string imageFolder = HttpContext.Current.Server.MapPath(@"~/images/PictureGallery/RecentPic");
            System.IO.DirectoryInfo directory = new System.IO.DirectoryInfo(imageFolder);
            AjaxControlToolkit.Slide[] slides = null;

            if (directory.Exists)
            {
                System.IO.FileInfo[] images = directory.GetFiles("*.jpg");
                slides = new AjaxControlToolkit.Slide[images.Length];

                int i = 0;

                foreach (System.IO.FileInfo image in images)
                {
                    string title = image.Name;
                    string imagePath = "/images/PictureGallery/RecentPic/" + title;

                    slides[i] = new AjaxControlToolkit.Slide(imagePath, title, title);
                    i++;
                }
                ShuffleList(slides);
            }
            return (slides);
        }

        [WebMethod]
        public AjaxControlToolkit.Slide[] GetHomeSlides()
        {

            string imageFolder = HttpContext.Current.Server.MapPath(@"~/images/PictureGallery/HomePic");
            System.IO.DirectoryInfo directory = new System.IO.DirectoryInfo(imageFolder);
            AjaxControlToolkit.Slide[] slides = null;

            if (directory.Exists)
            {
                System.IO.FileInfo[] images = directory.GetFiles("*.jpg");
                slides = new AjaxControlToolkit.Slide[images.Length];

                int i = 0;

                foreach (System.IO.FileInfo image in images)
                {
                    string title = image.Name;
                    string imagePath = "/images/PictureGallery/HomePic/" + title;

                    slides[i] = new AjaxControlToolkit.Slide(imagePath, title, title);
                    i++;
                }
                ShuffleList(slides);
            }
            return (slides);
        }

        public AjaxControlToolkit.Slide[] ShuffleList(AjaxControlToolkit.Slide[] MyList)
        {
            Random random = new Random();
            AjaxControlToolkit.Slide[] TheNewArray = null;
            if (MyList.Count() > 1)
            {
                for (int i = MyList.Count() - 1; i >= 0; i--)
                {
                    AjaxControlToolkit.Slide tmp = MyList[i];
                    int randomIndex = random.Next(i + 1);

                    //Swap elements
                    //MyList[i] = TheNewArray[randomIndex];
                    MyList[i] = MyList[randomIndex];
                    MyList[randomIndex] = tmp;
                }
                MyList = TheNewArray;
            }
            return TheNewArray;
        }
    }
}
