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
    public partial class UpdatePage : System.Web.UI.Page
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
            
        }

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/LoginPage.aspx");
        }
        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../Pages/LoginPage.aspx"); 
        }

        protected void BtnSignUp_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/RegisterPage.aspx");
        }
  
        protected void BtnSubscribe_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO tblSubscriber (SubscriberEmail,PostingDate) VALUES (@SubscriberEmail,@PostingDate)";  
                cmd.Parameters.AddWithValue("@SubscriberEmail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@PostingDate", DateTime.Now);       
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Email Registered successfully')</script>");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            con.Close();
        }
    }
}
