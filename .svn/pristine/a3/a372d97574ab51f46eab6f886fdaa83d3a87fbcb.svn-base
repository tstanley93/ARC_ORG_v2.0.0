using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Collections;
using System.Data;

namespace ARC.Admin
{
    public partial class Useradmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            DataTable UserTable = new DataTable("MembershipTable");
            UserTable.Columns.Add("UserName", typeof(string));
            UserTable.Columns.Add("Email", typeof(string));
            UserTable.Columns.Add("Comment", typeof(string));
            UserTable.Columns.Add("IsApproved", typeof(bool));
            UserTable.Columns.Add("IsLockedOut", typeof(bool));
            UserTable.Columns.Add("CreationDate", typeof(DateTime));
            UserTable.Columns.Add("LastLoginDate", typeof(DateTime));
            UserTable.Columns.Add("IsOnline", typeof(bool));
            UserTable.Columns.Add("Admin", typeof(bool));
            UserTable.Columns.Add("PicUpdater", typeof(bool));
            UserTable.Columns.Add("CalUpdater",typeof(bool));
            UserTable.Columns.Add("NewsUpdater", typeof(bool));
            MembershipUserCollection muc = Membership.GetAllUsers();
            foreach (MembershipUser mu in muc)
            {
                DataRow tableRow = UserTable.NewRow();
                tableRow["UserName"] = mu.ToString();
                tableRow["Email"] = mu.Email.ToString();
                try
                {
                    tableRow["Comment"] = mu.Comment.ToString();
                }
                catch
                {
                }
                tableRow["IsApproved"] = mu.IsApproved;
                tableRow["IsLockedOut"] = mu.IsLockedOut;
                tableRow["CreationDate"] = mu.CreationDate;
                try
                {
                    tableRow["LastLoginDate"] = mu.LastLoginDate;
                }
                catch
                {
                }
                tableRow["IsOnline"] = mu.IsOnline;
                tableRow["Admin"] = Roles.IsUserInRole(mu.ToString(), "Administrators");
                tableRow["PicUpdater"] = Roles.IsUserInRole(mu.ToString(), "PicUpdater");
                tableRow["CalUpdater"] = Roles.IsUserInRole(mu.ToString(), "CalUpdater");
                tableRow["NewsUpdater"] = Roles.IsUserInRole(mu.ToString(), "NewsUpdater");
                UserTable.Rows.Add(tableRow);
            }
            Session["UserTable"] = UserTable;
            GridView1.DataSource = Session["UserTable"];
            GridView1.DataBind();            
            GridView1.Visible = true;
        }

        protected void GridView1_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string UserName = this.GridView1.Rows[e.RowIndex].Cells[1].Text;
            Membership.DeleteUser(UserName);
            DataTable UserTable = new DataTable("MembershipTable");
            UserTable.Columns.Add("UserName", typeof(string));
            UserTable.Columns.Add("Email", typeof(string));
            UserTable.Columns.Add("Comment", typeof(string));
            UserTable.Columns.Add("IsApproved", typeof(bool));
            UserTable.Columns.Add("IsLockedOut", typeof(bool));
            UserTable.Columns.Add("CreationDate", typeof(DateTime));
            UserTable.Columns.Add("LastLoginDate", typeof(DateTime));
            UserTable.Columns.Add("IsOnline", typeof(bool));
            UserTable.Columns.Add("Admin", typeof(bool));
            UserTable.Columns.Add("PicUpdater", typeof(bool));
            UserTable.Columns.Add("CalUpdater", typeof(bool));
            UserTable.Columns.Add("NewsUpdater", typeof(bool));
            MembershipUserCollection muc = Membership.GetAllUsers();
            foreach (MembershipUser mu in muc)
            {
                DataRow tableRow = UserTable.NewRow();
                tableRow["UserName"] = mu.ToString();
                tableRow["Email"] = mu.Email.ToString();
                try
                {
                    tableRow["Comment"] = mu.Comment.ToString();
                }
                catch
                {
                }
                tableRow["IsApproved"] = mu.IsApproved;
                tableRow["IsLockedOut"] = mu.IsLockedOut;
                tableRow["CreationDate"] = mu.CreationDate;
                try
                {
                    tableRow["LastLoginDate"] = mu.LastLoginDate;
                }
                catch
                {
                }
                tableRow["IsOnline"] = mu.IsOnline;
                tableRow["Admin"] = Roles.IsUserInRole(mu.ToString(), "Administrators");
                tableRow["PicUpdater"] = Roles.IsUserInRole(mu.ToString(), "PicUpdater");
                tableRow["CalUpdater"] = Roles.IsUserInRole(mu.ToString(), "CalUpdater");
                tableRow["NewsUpdater"] = Roles.IsUserInRole(mu.ToString(), "NewsUpdater");
                UserTable.Rows.Add(tableRow);
                GridView1.DataSource = UserTable;
                GridView1.DataBind();
            }
        }

        protected void GridView1_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DataTable UserTable = new DataTable("MembershipTable");
            UserTable.Columns.Add("UserName", typeof(string));
            UserTable.Columns.Add("Email", typeof(string));
            UserTable.Columns.Add("Comment", typeof(string));
            UserTable.Columns.Add("IsApproved", typeof(bool));
            UserTable.Columns.Add("IsLockedOut", typeof(bool));
            UserTable.Columns.Add("CreationDate", typeof(DateTime));
            UserTable.Columns.Add("LastLoginDate", typeof(DateTime));
            UserTable.Columns.Add("IsOnline", typeof(bool));
            UserTable.Columns.Add("Admin", typeof(bool));
            UserTable.Columns.Add("PicUpdater", typeof(bool));
            UserTable.Columns.Add("CalUpdater", typeof(bool));
            UserTable.Columns.Add("NewsUpdater", typeof(bool));
            MembershipUserCollection muc = Membership.GetAllUsers();
            foreach (MembershipUser mu1 in muc)
            {
                DataRow tableRow = UserTable.NewRow();
                tableRow["UserName"] = mu1.ToString();
                tableRow["Email"] = mu1.Email.ToString();
                try
                {
                    tableRow["Comment"] = mu1.Comment.ToString();
                }
                catch
                {
                }
                tableRow["IsApproved"] = mu1.IsApproved;
                tableRow["IsLockedOut"] = mu1.IsLockedOut;
                tableRow["CreationDate"] = mu1.CreationDate;
                try
                {
                    tableRow["LastLoginDate"] = mu1.LastLoginDate;
                }
                catch
                {
                }
                tableRow["IsOnline"] = mu1.IsOnline;
                tableRow["Admin"] = Roles.IsUserInRole(mu1.ToString(), "Administrators");
                tableRow["PicUpdater"] = Roles.IsUserInRole(mu1.ToString(), "PicUpdater");
                tableRow["CalUpdater"] = Roles.IsUserInRole(mu1.ToString(), "CalUpdater");
                tableRow["NewsUpdater"] = Roles.IsUserInRole(mu1.ToString(), "NewsUpdater");
                UserTable.Rows.Add(tableRow);
            }
            GridView1.DataSource = UserTable;
            GridView1.DataBind();
           
        }

        protected void GridView1_OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string UserName = this.GridView1.Rows[e.RowIndex].Cells[1].Text;
            MembershipUser mu = Membership.GetUser(UserName);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            mu.Email = ((TextBox)(row.Cells[2].Controls[0])).Text;
            mu.Comment = ((TextBox)(row.Cells[3].Controls[0])).Text;
            mu.IsApproved = ((CheckBox)(row.Cells[4].Controls[0])).Checked;
            Membership.UpdateUser(mu);
            bool IsAdmin = ((CheckBox) (row.Cells[9].Controls[0])).Checked;
            bool IsPicUpdater = ((CheckBox) (row.Cells[10].Controls[0])).Checked;
            bool IsCalUpdater = ((CheckBox) (row.Cells[11].Controls[0])).Checked;
            bool IsNewsUpdater = ((CheckBox) (row.Cells[12].Controls[0])).Checked;
            if (IsAdmin == true)
            {
                try
                {
                    Roles.AddUserToRole(UserName, "Administrators");
                }
                catch
                {                    
                }
            }
            else if (IsAdmin == false)
            {
                try
                {
                    Roles.RemoveUserFromRole(UserName, "Administrators");
                }
                catch
                {
                }
            }
            if (IsPicUpdater == true)
            {
                try
                {
                    Roles.AddUserToRole(UserName, "PicUpdater");
                }
                catch
                {
                }
            }
            else if (IsPicUpdater == false)
            {
                try
                {
                    Roles.RemoveUserFromRole(UserName, "PicUpdater");
                }
                catch
                {
                }
            }
            if (IsCalUpdater == true)
            {
                try
                {
                    Roles.AddUserToRole(UserName, "CalUpdater");
                }
                catch
                {
                }
            }
            else if (IsCalUpdater == false)
            {
                try
                {
                    Roles.RemoveUserFromRole(UserName, "CalUpdater");
                }
                catch
                {
                }
            }
            if (IsNewsUpdater == true)
            {
                try
                {
                    Roles.AddUserToRole(UserName, "NewsUpdater");
                }
                catch
                {
                }
            }
            else if (IsNewsUpdater == false)
            {
                try
                {
                    Roles.RemoveUserFromRole(UserName, "NewsUpdater");
                }
                catch
                {
                }
            }
            GridView1.EditIndex = -1;
            DataTable UserTable = new DataTable("MembershipTable");
            UserTable.Columns.Add("UserName", typeof(string));
            UserTable.Columns.Add("Email", typeof(string));
            UserTable.Columns.Add("Comment", typeof(string));
            UserTable.Columns.Add("IsApproved", typeof(bool));
            UserTable.Columns.Add("IsLockedOut", typeof(bool));
            UserTable.Columns.Add("CreationDate", typeof(DateTime));
            UserTable.Columns.Add("LastLoginDate", typeof(DateTime));
            UserTable.Columns.Add("IsOnline", typeof(bool));
            UserTable.Columns.Add("Admin", typeof(bool));
            UserTable.Columns.Add("PicUpdater", typeof(bool));
            UserTable.Columns.Add("CalUpdater", typeof(bool));
            UserTable.Columns.Add("NewsUpdater", typeof(bool));
            MembershipUserCollection muc = Membership.GetAllUsers();
            foreach (MembershipUser mu1 in muc)
            {
                DataRow tableRow = UserTable.NewRow();
                tableRow["UserName"] = mu1.ToString();
                tableRow["Email"] = mu1.Email.ToString();
                try
                {
                    tableRow["Comment"] = mu1.Comment.ToString();
                }
                catch
                {
                }
                tableRow["IsApproved"] = mu1.IsApproved;
                tableRow["IsLockedOut"] = mu1.IsLockedOut;
                tableRow["CreationDate"] = mu1.CreationDate;
                try
                {
                    tableRow["LastLoginDate"] = mu1.LastLoginDate;
                }
                catch 
                {
                }
                tableRow["IsOnline"] = mu1.IsOnline;
                tableRow["Admin"] = Roles.IsUserInRole(mu1.ToString(), "Administrators");
                tableRow["PicUpdater"] = Roles.IsUserInRole(mu1.ToString(), "PicUpdater");
                tableRow["CalUpdater"] = Roles.IsUserInRole(mu1.ToString(), "CalUpdater");
                tableRow["NewsUpdater"] = Roles.IsUserInRole(mu1.ToString(), "NewsUpdater");
                UserTable.Rows.Add(tableRow);
            }
            GridView1.DataSource = UserTable;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = Session["UserTable"];
            GridView1.DataBind();
        }

        protected void ContinueButton_OnClick(object sender, EventArgs e)
        {
            CreateUserWizard1.UserName = "";
            CreateUserWizard1.Email = "";
            CreateUserWizard1.Question = "";            
            CreateUserWizard1.ActiveStepIndex = 0;            
        }

        protected void CreateUserWizard1_OnCancelButtonClick(object sender, EventArgs e)
        {            
            CreateUserWizard1.UserName = string.Empty;
            CreateUserWizard1.Email = string.Empty;
            CreateUserWizard1.Question = string.Empty;
            CreateUserWizard1.Answer = string.Empty;
            //CreateUserWizard1.ActiveStepIndex = 0;
        }

    }
}
