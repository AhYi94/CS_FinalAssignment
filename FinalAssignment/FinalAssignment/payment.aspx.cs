using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class paymentaspx : System.Web.UI.Page
    {
        DatabaseConnection dbcon = new DatabaseConnection();
        string subtotal = "";
        object user_email = "";
        string query = "";
        string id = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            user_email = Session["usernameSession"];
            query = "select * from users where email='" + user_email + "';";
            DataTable dt1 = dbcon.getDataSQL(query);
            id = dt1.Rows[0]["id"].ToString();
            string subtotalQuery = "SELECT SUM(quantity* p.price) as total from carts as c LEFT JOIN users as u on c.user_id = u.id LEFT JOIN products as p on c.product_id = p.id where c.user_id ='" +  id + "'and c.status is NULL";
            DataTable dtSubTotal = dbcon.getDataSQL(subtotalQuery);
            subtotal = dtSubTotal.Rows[0]["total"].ToString();
            subtotalText.Text = "RM " + subtotal.ToString();
        }

        protected void PaymentBtn_Click(object sender, EventArgs e)
        {
            
            string query = "update carts set status = 'Paid' where user_id ='" + id + "'and status is NULL";
            dbcon.executeSQL(query);
            Response.Redirect("cart.aspx");
        }
    }
}