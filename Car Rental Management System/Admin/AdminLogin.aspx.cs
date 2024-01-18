using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Component
{
    public partial class AdminLogin : System.Web.UI.Page
    {


        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                
                
                lblUser.Text = "Welcome, " + Session["UserName"].ToString();
                lblUser.Visible = true;

            }
            else
            {

            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM tblAdmin where username='" + Unametxt.Text + "' AND password='" + Passtxt.Text + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Session["UserName"] = Unametxt.Text;
                    Session["Password"] = Passtxt.Text;
                    Response.Redirect("RentalsPage.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "Invalid username or password.";
                    lblErrorMessage.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            con.Close();
        }

    
      

       
    }
}