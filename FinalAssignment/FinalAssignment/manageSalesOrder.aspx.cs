﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class manageSalesOrder : System.Web.UI.Page
    {
        DatabaseConnection dbcon = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }
            var user_email = Session["usernameSession"];
            DataTable dt1 = dbcon.getDataSQL("select * from users where email='" + user_email + "';");
            var id = dt1.Rows[0]["id"].ToString();
            string query = "SELECT c.*, p.name as product_name, p.price as product_price, p.image as product_image, quantity * p.price as total from carts as c LEFT JOIN users as u on c.user_id = u.id LEFT JOIN products as p on c.product_id = p.id where c.user_id = '" + id + "'and c.status = 'Paid'";

            DataTable dt = dbcon.getDataSQL(query);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            
        }
    }
}