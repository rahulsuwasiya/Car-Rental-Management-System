using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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

            if(!IsPostBack)
            {
                LoadData();
            }
            
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void LoadData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                string query = "SELECT CarName, CarCategory, CarCapacity, CarKmpL, PricePerDay, CarImage FROM tblCar WHERE CarStatus!='Rented' and 1=1 ";

                // Check each checkbox and append corresponding WHERE conditions to the query
                List<string> conditions = new List<string>();

                if (chkCategory1.Checked)
                {
                    conditions.Add("CarCategory = 'Sedan'");
                }
                if (chkCategory2.Checked)
                {
                    conditions.Add("CarCategory = 'SUV'");
                }
                if(chkCategory3.Checked)
                {
                    conditions.Add("CarCapacity<6");
                }
                if (chkCategory4.Checked)
                {
                    conditions.Add("CarCapacity>=6");
                }
                // Add more if needed for other categories

                // Combine the conditions with OR
                if (conditions.Any())
                {
                    query += " AND (" + string.Join(" OR ", conditions) + ")";
                }

                using (MySqlCommand cmd = new MySqlCommand(query, con))
                {
                    con.Open();
                    using (MySqlDataReader dr = cmd.ExecuteReader())
                    {
                        reptProduct.DataSource = dr;
                        reptProduct.DataBind();
                    }
                }
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





        protected void BtnRent_Click(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                Button btn = (Button)sender;
                RepeaterItem item = (RepeaterItem)btn.NamingContainer;
                string CarName = ((Label)item.FindControl("lblName")).Text;
                string CarCategory = ((Label)item.FindControl("lblCategory")).Text;
                string CarCapacity = ((Label)item.FindControl("lblCarCapacity")).Text;
                string CarKmpL = ((Label)item.FindControl("lblCarKmpL")).Text;
                string CarPrice = ((Literal)item.FindControl("lblPrice")).Text;
                string CarImage = ((Image)item.FindControl("CarImage")).ImageUrl;

                Session["CarName"] = CarName;
                Session["CarCategory"] = CarCategory;
                Session["CarPrice"] = CarPrice;
                Session["CarCapacity"] = CarCapacity;
                Session["CarKmpL"] = CarKmpL;
                Session["CarImage"] = CarImage;
                try
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                    con = new MySqlConnection(connectionString);
                    cmd = new MySqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "SELECT CarInfo FROM tblCar where CarName='" + CarName + "'";
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string carInfo = dr["CarInfo"].ToString();
                        Session["CarInfo"] = carInfo;
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                con.Close();

                Response.Redirect("../Pages/CardPage.aspx");



            }
            else
            {
                Response.Redirect("../Pages/LoginPage.aspx");
            }
        }

    }
}