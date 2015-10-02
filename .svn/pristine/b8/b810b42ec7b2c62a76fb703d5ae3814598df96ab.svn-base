using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ARC.ORG
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            Label MainLabel;
            MainLabel = (Label)Master.FindControl("HitCounter");
            MainLabel.Text = counter();
            }
        }

        public string counter()
        {
            StreamReader re = File.OpenText(Server.MapPath("counter.txt"));
            string input = null;
            string mycounter = "";
            while ((input = re.ReadLine()) != null)
            {
                mycounter = mycounter + input;
            }
            re.Close();
            int myInt = int.Parse(mycounter);
            myInt = myInt + 1;
            TextWriter tw = new StreamWriter(Server.MapPath("counter.txt"));
            tw.WriteLine(Convert.ToString(myInt));
            tw.Close();
            re = File.OpenText(Server.MapPath("counter.txt"));
            input = null;
            mycounter = "";
            while ((input = re.ReadLine()) != null)
            {
                mycounter = mycounter + input;
            }
            re.Close();
            return mycounter;
        }

    }
}
