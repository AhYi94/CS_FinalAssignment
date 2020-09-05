using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            logoutBtn.Visible = false;
            cart.Visible = false;
            if (Session["usernameSession"] != null)
            {
                usernameSession.Text = "Hello  " + Session["usernameSession"];
                logoutBtn.Visible = true;
                cart.Visible = true;
            }
            else
            {
                usernameSession.Text = "";
            }


        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Logout Successfully')", true);
            Response.Redirect("login.aspx");
        }
    }
}