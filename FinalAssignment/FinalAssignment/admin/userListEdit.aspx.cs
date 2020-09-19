using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalAssignment.admin
{
    public partial class userListEdit : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }
            dbcon = new DatabaseConnection();
            var id = Request.QueryString["id"];
            DataTable dt = dbcon.getDataSQL("select * from users where id='" + id + "';");

            if (id != null)
            {
                if (!IsPostBack)
                {
                    name.Text = dt.Rows[0]["name"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    password.Text = dt.Rows[0]["password"].ToString();
                }
            }
            else
            {
                Response.Redirect("userList.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];

            if (name.Text.Equals("") || email.Text.Equals("")  || password.Text.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill out your information!')</script>");
            }
            else
            {
                try
                {
                    string query = "update users set name = '" + name.Text + "' , email = '" + email.Text + "', password = '" + password.Text + "', created_at = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' where id=" + id + ";";
                    dbcon.executeSQL(query);
                    Response.Write("<script>alert('Update Successfully.');window.location = 'userList.aspx';</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                }
            }
        }
    }
}