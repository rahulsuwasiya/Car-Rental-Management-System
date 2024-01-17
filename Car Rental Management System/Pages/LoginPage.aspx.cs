using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Pages
{
    public partial class LoginPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
                   
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                BtnLogin.Visible = false;
                BtnLogout.Visible = true;
                BtnSignUp.Visible = false;
                lblUser.Visible = true;

            }
            else
            {

            }

            try {
                 string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                 con = new MySqlConnection(connectionString);
                 cmd = new MySqlCommand();
                 con.Open();
                 cmd.Connection = con;
                 cmd.CommandText = "SELECT * FROM tblUser where username='" + Unametxt.Text + "' AND password='" + Passtxt.Text + "'";
                 dr = cmd.ExecuteReader();
                 if (dr.Read())
                 {
                   
                    Session["UserName"] = Unametxt.Text;  
                    Session["Password"] = Passtxt.Text;
                    Response.Redirect("../index.aspx");
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

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/LoginPage.aspx");
        }

        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();

            // Clear any existing authentication cookies if applicable
            FormsAuthentication.SignOut();

            // Expire the session cookie on the client side
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", "") { Expires = DateTime.Now.AddYears(-1) });

            // Redirect to the login page or another destination
            Response.Redirect("../Pages/LoginPage.aspx"); Session.Abandon();
        }

        protected void BtnSignUp_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/RegisterPage.aspx");
        }
    }
}