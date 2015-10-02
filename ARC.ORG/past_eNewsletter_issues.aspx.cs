using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARC
{
    public partial class past_eNewsletter_issues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow GRow = GridView1.SelectedRow;
            string UnCleanFileName = GRow.Cells[2].Text;
            string [] split = UnCleanFileName.Split(new Char [] {'<', '>'});
            string CleanFileName = "";
            foreach (string s in split)
            {
                if (s.Trim().Contains(".pdf"))
                {
                   CleanFileName = s;
                }
            }
            Server.Transfer("/enewsletter.aspx?FileName=" + CleanFileName );
        }

        protected void GridView1_RowDataBound(Object sender, GridViewRowEventArgs e)
        {
            // This routine is depcricated ...
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int ri = e.Row.RowIndex;
                int ModVal = 2;
                if (ri % ModVal == 0)
                {
                    e.Row.Cells[1].Text = "<h3 style=\"color: #184D76\">" + e.Row.Cells[1].Text + "</h3>";
                    e.Row.Cells[2].Text = "<h3 style=\"color: #184D76\">" + e.Row.Cells[2].Text + "</h3>";
                    e.Row.Cells[3].Text = "<h3 style=\"color: #184D76\">" + e.Row.Cells[3].Text + "</h3>";
                }
                else
                {
                    e.Row.Cells[1].Text = "<h3>" + e.Row.Cells[1].Text + "</h3>";
                    e.Row.Cells[2].Text = "<h3>" + e.Row.Cells[2].Text + "</h3>";
                    e.Row.Cells[3].Text = "<h3>" + e.Row.Cells[3].Text + "</h3>";
                }
            }
        }
    }
}
