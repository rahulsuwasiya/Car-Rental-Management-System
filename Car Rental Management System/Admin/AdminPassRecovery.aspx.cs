using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class AdminPassRecovery : System.Web.UI.Page
    {

        MySqlConnection con;
        MySqlCommand cmd;
        
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

        protected void PassReset_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT COUNT(*) FROM tblAdmin WHERE Username = @Username";
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);

                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    // Username found, proceed with password update
                    cmd.Parameters.Clear();
                    cmd.CommandText = "UPDATE tblAdmin SET Password = @Password WHERE Username = @Username";
                    cmd.Parameters.AddWithValue("@Password", txtNewPass.Text);
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Password updated successfully
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Updated Successfully..'); window.location ='AdminLogin.aspx';", true);
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
                Console.WriteLine(ex.Message);
            }
            con.Close();
        }
    }
}