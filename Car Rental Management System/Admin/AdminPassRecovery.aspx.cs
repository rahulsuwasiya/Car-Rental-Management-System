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
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "UPDATE tblAdmin SET Password = @Password WHERE Username=@Username";
                cmd.Parameters.AddWithValue("@Password", txtNewPass.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Password Updated Successfully..');window.location = 'AdminLogin.aspx';</script>");


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            con.Close();
        }
    }
}