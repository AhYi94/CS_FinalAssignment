using System;
using System.IO;
using System.Data;

namespace FinalAssignment.admin
{
    public partial class manageEditSalesOrder : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusernameSession"] == null)
            {
                Response.Redirect("login.aspx");
            }

            dbcon = new DatabaseConnection();
            var id = Request.QueryString["id"];
            DataTable dt = dbcon.getDataSQL("select * from carts where id='" + id + "';");

            if (id != null)
            {
                if (!IsPostBack)
                {
                    DropDownList1.SelectedValue = dt.Rows[0]["status"].ToString();
                }
            }
            else
            {
                Response.Redirect("manageViewSalesOrder.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            try
            { 
                string query = "update carts set status = '"+ DropDownList1.SelectedValue + "' where id=" + id + ";";
                dbcon.executeSQL(query);
                Response.Write("<script>alert('Update Successfully.');window.location = 'manageViewSalesOrder.aspx';</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
            }
        }
    }
}