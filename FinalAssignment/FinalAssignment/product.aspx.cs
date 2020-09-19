using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class product : System.Web.UI.Page
    {
        DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("select * from products");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}