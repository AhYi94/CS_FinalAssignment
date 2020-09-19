using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class index : System.Web.UI.Page
    {
        DatabaseConnection dbcon = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select * from products;");
                //Repeater1.DataSource = dt;
                //Repeater1.DataBind();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {

            if (Session["usernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}