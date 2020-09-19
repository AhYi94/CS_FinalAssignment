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
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {

            if (Session["usernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }

            else if (Session["usernameSession"] != null)
            {
                var user_email = Session["usernameSession"]; 
                DataTable dt1 = dbcon.getDataSQL("select * from users where email='" + user_email + "';"); 
                var id = dt1.Rows[0]["id"].ToString();
                LinkButton btn = (LinkButton)(sender);
                int product_id = Int32.Parse(btn.CommandArgument);
                int quantity = 1;
                string query = "insert into carts(product_id,quantity,user_id,created_at) values('" + product_id + "','" + quantity + "','" + id + "','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                dbcon.executeSQL(query);
            }
        }
    }
}