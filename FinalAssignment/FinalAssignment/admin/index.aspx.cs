using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }
            adminusernameSession.Text = "Hello  " + Session["adminusernameSession"];
        }
    }
}