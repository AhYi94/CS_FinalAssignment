﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment.admin
{
    public partial class manageDeleteItem : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            var id = Request.QueryString["id"];
            if (id != null)
            {
                /*string url = HttpContext.Current.Request.Url.AbsoluteUri;
                Response.Write("< script > alert('New Product has been added successfully.') </ script >);*/

                string query = "delete from product where id=" + id;
                dbcon.executeSQL(query);
                Response.Redirect("manageaddItem.aspx");
            }
            else
            {
                Response.Redirect("manageaddItem.aspx");
            }
        }
    }
}