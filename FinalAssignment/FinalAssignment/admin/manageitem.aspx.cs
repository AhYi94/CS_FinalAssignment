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
    public partial class manageitem : System.Web.UI.Page
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
            DataTable dt = dbcon.getDataSQL("select * from products;");
            int i = 1;

            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Name</th><th>Price</th><th>Description</th><th>Image</th><th>Created_at</th><th>Update</th><th>Delete</th></tr>");

            foreach (DataRow dr in dt.Rows)
            {
                table.Append("<tr>");
                table.Append("<td width=30>" + i + "</td><td width=120>" + dr[1].ToString() + "</td><td width=100>" + "RM" + dr[2].ToString() + "</td><td width=350>" + dr[3].ToString() + "</td><td width=100>" + "<img src = 'upload/" + dr[4] + "' width = 100px height = 100px >" + "</td><td width=100>" + dr[5].ToString() + "</td>");
                table.Append("<td width=50>" + "<a href = 'manageEditItem.aspx?id=" + dr[0] + "'><button type='button' class='btn btn - primary'>Edit</button></a>" + "</td>");
                table.Append("<td width=50>" + "<a href = 'manageDeleteItem.aspx?id=" + dr[0] + "'><button type='button' class='btn btn - primary'>Delete</button></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel1.Controls.Add(new Label { Text = table.ToString() });

        }
    }
}