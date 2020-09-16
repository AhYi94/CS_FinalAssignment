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
    public partial class userList : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("select * from users;");
            int i = 1;

            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Name</th><th>Email</th><th>Password</th><th>created_at</th><th>Edit</th></tr>");

            foreach (DataRow dr in dt.Rows)
            {
                table.Append("<tr>");
                table.Append("<td>" + i + "</td><td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td><td>" + dr[3].ToString() + "</td><td>" + dr[4].ToString() + "</td>");
                table.Append("<td>" + "<a href = 'userListEdit.aspx?id=" + dr[0] + "'><button type='button' class='btn btn - primary'>Edit</button></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel.Controls.Add(new Label { Text = table.ToString() });
        }
    }
}