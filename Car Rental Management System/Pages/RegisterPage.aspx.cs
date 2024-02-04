using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Car_Rental_Management_System.Pages
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                BtnLogin.Visible = false;
                BtnLogout.Visible = true;
                BtnSignUp.Visible = false;
                lblUser.Text = "Hii, " + Session["UserName"].ToString();
                lblUser.Visible = true;

            }
            else
            {

            }
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

        protected void BtnSign_Click(object sender, EventArgs e)
        {
            
            string email = txtEmail.Text;
            
            if (!IsEmailRegistered(email))
            {
                // Email is not registered, proceed with insertion
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO tblUser (Username,Email, Password,T_and_C) VALUES (@Username,@Email, @Password,@T_and_C)";
                cmd.Parameters.AddWithValue("@Username", txtUname.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPass.Text);
               

                if (chbTandC.Checked)
                {
                    cmd.Parameters.AddWithValue("@T_and_C", "Yes");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@T_and_C", "No");
                }


                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Insert successful
                    lblErrorMessage.Text = "User registered successfully.";
                    lblErrorMessage.Visible = true;
                    Response.Redirect("../Pages/LoginPage.aspx");
                }
                else
                {
                    // Insert failed
                    lblErrorMessage.Text = "Failed to register the user.";
                    lblErrorMessage.Visible = true;
                }
            }
            else
            {
                // Email is already registered, show error message
                lblErrorMessage.Text = "Email is already registered!";
                lblErrorMessage.Visible = true;
            }
        }

        private bool IsEmailRegistered(string email)
        {
            // Replace with your database connection string
            
            string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con = new MySqlConnection(connectionString);
            cmd = new MySqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT COUNT(*) FROM tblUser WHERE Email = @Email";
            cmd.Parameters.AddWithValue("@Email", email);
            
            object result = cmd.ExecuteScalar();
            int count = (result == DBNull.Value) ? 0 : Convert.ToInt32(result);
            return count > 0;
              
        }
        
        


    }
}