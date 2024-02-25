using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class AddCarPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCarButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;

                // Check if a file is uploaded
                if (CarImageUpload.HasFile)
                {
                    // Read the file content
                    byte[] fileData = CarImageUpload.FileBytes;

                    // Add the file data to the database
                    cmd.CommandText = "INSERT INTO tblCar (CarName, CarCategory,CarCapacity,CarKmpL, PricePerDay, CarInfo, CarImage) VALUES (@CarName, @CarCategory,@CarCapacity,@CarKmpL, @PricePerDay, @CarInfo, @CarImage)";
                    cmd.Parameters.AddWithValue("@CarImage", fileData);
                }
                else
                {
                    // Handle if no file is uploaded
                    cmd.CommandText = "INSERT INTO tblCar (CarName,CarCategory,CarCapacity,CarKmpL, PricePerDay, CarInfo) VALUES (@CarName, @CarCategory,@CarCapacity,@CarKmpL, @PricePerDay, @CarInfo)";
                }

                cmd.Parameters.AddWithValue("@CarName", txtCarName.Text);
                cmd.Parameters.AddWithValue("@CarCategory", txtCarCategory.Text);
                cmd.Parameters.AddWithValue("@CarCapacity",txtCarCapacity.Text);
                cmd.Parameters.AddWithValue("@CarKmpL",txtCarKmpL.Text);
                cmd.Parameters.AddWithValue("@PricePerDay", txtPricePerDay.Text);
                cmd.Parameters.AddWithValue("@CarInfo", txtCarInfo.Text);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Insert successful
                    Response.Write("<script>alert('Car Added Successfully..');window.location = 'CarSectionPage.aspx';</script>");

                }
                else
                {
                    // Insert failed
                    Response.Write("<script>alert('Car Not Added..');window.location = 'CarSectionPage.aspx';</script>");
                }
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                // Check if the exception is due to a primary key violation
                if (ex.Number == 1062)  // SQL Server error number for primary key violation
                {
                   
                    Response.Write("<script>alert('Car with this ID already exists. Please choose a different ID.');window.location = 'AddCarPage.aspx';</script>");
                }
                
            }
        }
    }
}