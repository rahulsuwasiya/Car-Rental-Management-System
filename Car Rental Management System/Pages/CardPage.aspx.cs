using Google.Protobuf;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class CardPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
                // Use the selected label text as needed
            CarName.Text = Session["CarName"].ToString();
            CarCategory.Text = Session["CarCategory"].ToString();
            CarPrice.Text = Session["CarPrice"].ToString();
            CarImage.ImageUrl = Session["CarImage"].ToString();
            lblCarInfo.Text= Session["CarInfo"].ToString();

           
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

        protected void BtnSignUp_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/RegisterPage.aspx");
        }

        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {
            // Clear any existing authentication cookies if applicable
            FormsAuthentication.SignOut();

            // Expire the session cookie on the client side
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", "") { Expires = DateTime.Now.AddYears(-1) });

            // Redirect to the login page or another destination
            Response.Redirect("../Pages/LoginPage.aspx"); Session.Abandon();
        }

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/LoginPage.aspx");
        }

        protected void RentBtn_ServerClick(object sender, EventArgs e)
        {
            DateTime Fdate = DateTime.Parse(txtFdate.Text);
            DateTime Tdate = DateTime.Parse(txtTdate.Text);
           
            TimeSpan difference = Tdate - Fdate;

            int Days = difference.Days;

            string carPriceString = Session["CarPrice"].ToString();
            int PricePerDay = Convert.ToInt32(carPriceString);

            int TotalAmt = Days * PricePerDay;
            Session["TotalAmt"] = TotalAmt;
            Session["Fdate"] = Fdate.ToString("dd-MM-yyyy");
            Session["Tdate"] = Tdate.ToString("dd-MM-yyyy");

            Response.Redirect("../Payment/PaymentPage.aspx");
        }
    }
}