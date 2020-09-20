using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FinalAssignment.admin
{
    public partial class manageDeleteSalesOrder : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }


            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("SELECT c.*, p.name as product_name, p.price as product_price, p.image as product_image, quantity * p.price as total from carts as c LEFT JOIN users as u on c.user_id = u.id LEFT JOIN products as p on c.product_id = p.id where c.status = 'Paid'; ");
            int i = 1;

            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Image</th><th>Product Name</th><th>Product Price</th><th>Quantity</th><th>Status</th><th>Created_at</th><th>Action</th></tr>");

            foreach (DataRow dr in dt.Rows)
            {
                table.Append("<tr>");
                table.Append("<td>" + i + "</td><td>" + "<img src = 'upload/" + dr["product_image"] + "' width = 100px height = 100px >" + " </td><td>" + dr["product_name"].ToString() + "</td><td>" + dr["product_price"].ToString() + "</td><td>" + dr["quantity"].ToString() + "</td><td>" + dr["status"].ToString() + "</td><td>" + dr["created_at"].ToString() + "</td>");
                table.Append("<td>" + "<a href = 'manageEditSalesOrder.aspx?id=" + dr["id"] + "'><button type='button' class='btn btn - primary'>Edit</button></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel1.Controls.Add(new Label { Text = table.ToString() });
        }
    }
}
