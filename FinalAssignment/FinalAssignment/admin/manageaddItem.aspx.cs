using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FinalAssignment.admin
{
    public partial class manageItem : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload.FileName);



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
                     
                        string query = "insert into products(name, price, description, image, created_at) values ('" + name.Text + "','" + price.Text + "','" + description.InnerText + "','" + filename + "','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";

                        dbcon.executeSQL(query);

                        Response.Write("<script>alert('New Product has been added successfully.')</script>");

                        name.Text = "";
                        price.Text = "";
                        description.InnerText = "";
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
