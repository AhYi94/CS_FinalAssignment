using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class register : System.Web.UI.Page
    {

        DatabaseConnection dbcon = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string name = nameInput.Text;
            string email = emailInput.Text;
            string password = passwordInput.Text;
            string cPassword = cPasswordInput.Text;
            string created_at = DateTime.Now.ToString();

            if (password.Equals(cPassword))
            {

                Console.WriteLine("asd");
                try
                {
                    string query = "insert into users(name, email, password, created_at) values('" + name + "','" + email + "','" + password +  "','" + created_at + "');";
                    dbcon.executeSQL(query);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Register Successfully'); window.location ='Login.aspx';", true);
                }

                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}