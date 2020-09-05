using System;
using System.Web.UI;
using System.Data;

namespace FinalAssignment
{
    public partial class login : System.Web.UI.Page
    {
        DatabaseConnection dbcon = new DatabaseConnection();

        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitLogin(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from users where email='" + username.Text + "' and password='" + password.Text + "';"; ;
                dbcon.executeSQL(query);
                dt = dbcon.getDataSQL(query);

                if (dt.Rows.Count > 0)
                {
                    Session["usernameSession"] = username.Text;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Successful')", true);
                    Response.Redirect("index.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Fail')", true);
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}