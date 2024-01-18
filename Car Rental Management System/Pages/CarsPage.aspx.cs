using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Pages
{
    public partial class CarsPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                BtnLogin.Visible = false;
                BtnLogout.Visible = true;
                BtnSignUp.Visible = false;
                lblUser.Text= "Hii, "+Session["UserName"].ToString();
                lblUser.Visible = true;

            }
            else
            {

            }
            if (!IsPostBack)
            {
                try
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                    con = new MySqlConnection(connectionString);
                    cmd = new MySqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "SELECT CarName,CarCategory,PricePerKm,CarImage FROM tblCar";
                    dr = cmd.ExecuteReader();
                    reptProduct.DataSource = dr;
                    reptProduct.DataBind();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                con.Close();
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
    }
}