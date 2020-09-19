using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
namespace FinalAssignment
{
    public partial class manageProfile : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            var login_id = Session["usernameSession"];
            DataTable dt = dbcon.getDataSQL("select * from users where email='" + login_id + "';");

            if (login_id != null)
            {
                if (!IsPostBack)
                {
                    nameInput.Text = dt.Rows[0]["name"].ToString();
                    emailInput.Text = dt.Rows[0]["email"].ToString();
                    passwordInput.Text = dt.Rows[0]["password"].ToString();
                    confirmPassword.Text = dt.Rows[0]["password"].ToString();


                }
            }
            else
            {
                Response.Redirect("manageProfile.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var user_email = Session["usernameSession"];
            DataTable dt1 = dbcon.getDataSQL("select * from users where email='" + user_email + "';");
            var id = dt1.Rows[0]["id"].ToString();

            if (nameInput.Text.Equals("") || emailInput.Text.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill all your information!')</script>");
            }
            else if (passwordInput.Text != confirmPassword.Text)
            {
                Response.Write("<script>alert('Sorry... the password not match!')</script>");
            }
            else
            {
                try
                {
                    string query = "update users set name = '" + nameInput.Text + "' , email = '" + emailInput.Text + "', password = '" + passwordInput.Text + "', created_at = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' where id=" + id + ";";
                    dbcon.executeSQL(query);
                    Response.Write("<script>alert('Update Profile Successfully.');window.location = 'manageProfile.aspx';</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                }

            }
        }
        }
}