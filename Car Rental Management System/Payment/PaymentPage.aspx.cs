using Google.Protobuf;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Payment
{
    public partial class PaymentPage : System.Web.UI.Page
    {

        MySqlConnection con;
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTotalAmt.Text=Session["TotalAmt"].ToString();
        }

        protected void BtnPay_Click(object sender, EventArgs e)
        {
            string CarName = Session["CarName"].ToString();
            string FromDate = Session["Fdate"].ToString();
            string ToDate = Session["Tdate"].ToString();
            
            
            string BookingDate = DateTime.Today.ToString("dd-MM-yyyy");
            int PricePerDay =Convert.ToInt32(Session["CarPrice"].ToString());
            int TotalAmt = Convert.ToInt32(Session["TotalAmt"].ToString());
            string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con = new MySqlConnection(connectionString);
            cmd = new MySqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO tblBooking (Name,Email,Address,Mobile,State,TotalAmt,BookingDate,CarName,PricePerDay,FromDate,ToDate) VALUES (@Name,@Email,@Address,@Mobile,@State,@TotalAmt,@BookingDate,@CarName,@PricePerDay,@FromDate,@ToDate)";
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@State", txtState.Text);
            cmd.Parameters.AddWithValue("@TotalAmt",TotalAmt);
            cmd.Parameters.AddWithValue("@BookingDate", BookingDate);
            cmd.Parameters.AddWithValue("@CarName", CarName);
            cmd.Parameters.AddWithValue("@PricePerDay", PricePerDay);
            cmd.Parameters.AddWithValue("@FromDate", FromDate);
            cmd.Parameters.AddWithValue("@ToDate", ToDate);
            cmd.ExecuteNonQuery();

            con = new MySqlConnection(connectionString);
            con.Open();
            cmd = new MySqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE tblCar SET CarStatus = 'Rented' WHERE CarName = @CarName";
            cmd.Parameters.AddWithValue("@CarName", CarName);
            cmd.ExecuteNonQuery();
                
            Response.Redirect("../Payment/SuccessPage.aspx");
        }
    }
}