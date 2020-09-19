using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalAssignment.admin
{
    public partial class login : System.Web.UI.Page
    {

        DatabaseConnection dbcon = new DatabaseConnection();

        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from admins where email='" + email.Text + "' and password='" + password.Text + "';"; ;
                dbcon.executeSQL(query);
                dt = dbcon.getDataSQL(query);

                if (dt.Rows.Count > 0)
                {
                    Session["adminusernameSession"] = email.Text;
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