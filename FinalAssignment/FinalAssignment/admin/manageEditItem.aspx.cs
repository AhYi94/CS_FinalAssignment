using System;
using System.IO;
using System.Data;

namespace FinalAssignment.admin
{
    public partial class manageEditItem : System.Web.UI.Page
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
            DataTable dt = dbcon.getDataSQL("select * from products where id='" + id + "';");

            if (id != null)
            {
                if (!IsPostBack)
                {
                    name.Text = dt.Rows[0]["name"].ToString();
                    price.Text = dt.Rows[0]["price"].ToString();
                    description.InnerText = dt.Rows[0]["description"].ToString();
                }
            }
            else
            {
                Response.Redirect("manageitem.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload.FileName);
            var id = Request.QueryString["id"];

            if (name.Text.Equals("") || price.Text.Equals("") || description.InnerText.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill out your information!')</script>");
            }
            else
            {

                if (FileUpload.HasFile)
                {
                    try
                    {
                        FileUpload.SaveAs(Server.MapPath("upload/") + filename);
                        string query = "update products set name = '" + name.Text + "' , price = '" + price.Text + "', description = '" + description.InnerText + "', image = '" + filename + "', created_at = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' where id=" + id + ";";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Update Successfully.');window.location = 'manageitem.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Sorry... you have not uploaded any product image yet!')</script>");
                }
            }

        }
    }
}