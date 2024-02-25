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
using System.Xml.Linq;

namespace Car_Rental_Management_System.Pages
{
    public partial class PasswordRecoveryPage : System.Web.UI.Page
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

        protected void PassReset_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
               
                cmd.Connection = con;
                cmd.CommandText = "SELECT COUNT(*) FROM tblUser WHERE Username = @Username";
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);

               
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    // Username found, proceed with password update
                    cmd.Parameters.Clear();
                    cmd.CommandText = "UPDATE tblUser SET Password = @Password WHERE Username = @Username";
                    cmd.Parameters.AddWithValue("@Password", txtNewPass.Text);
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Password updated successfully
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Updated Successfully..'); window.location ='LoginPage.aspx';", true);
                    }
                    else
                    {
                        // Password not updated
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to update password.');", true);
                    }
                }
                else
                {
                    // Username not found
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Username not found. Password not updated.');", true);
                }

            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
            }
            con.Close();
        }
    }
}