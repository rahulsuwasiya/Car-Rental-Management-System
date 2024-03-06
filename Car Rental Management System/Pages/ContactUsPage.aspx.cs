using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Pages
{
    public partial class ContactUsPage : System.Web.UI.Page
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

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con = new MySqlConnection(connectionString);
            cmd = new MySqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO tblContactUs (Name,Email,Message) VALUES (@Name,@Email,@Message)";
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Message", txtMessage.Text);
            cmd.ExecuteNonQuery();
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
            Response.Write("<script>alert('Message Sent Successfully..');window.location = 'ContactUsPage.aspx';</script>");
        }
    }
}