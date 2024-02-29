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
    public partial class ModifyCarPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FetchCarDetailsButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                using (var con = new MySqlConnection(connectionString))
                {
                    using (var cmd = new MySqlCommand())
                    {
                        cmd.Connection = con;
                        con.Open();

                        // Fetch car details based on CarID
                        cmd.CommandText = "SELECT * FROM tblCar WHERE C_Id = @CarId";
                        cmd.Parameters.AddWithValue("@CarId", Convert.ToInt32(txtCarId.Text));

                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Populate fields with fetched details
                                txtCarName.Text = reader["CarName"].ToString();
                                txtCarCategory.Text = reader["CarCategory"].ToString();
                                txtCarCapacity.Text = reader["CarCapacity"].ToString();
                                txtCarKmpL.Text = reader["CarKmpL"].ToString();
                                txtPricePerDay.Text = reader["PricePerDay"].ToString();
                                txtCarInfo.Text = reader["CarInfo"].ToString();
                                txtCarStatus.Text = reader["CarStatus"].ToString();
                                // Additional fields can be populated here
                            }
                            else
                            {
                                // Handle if car with given ID is not found
                                Response.Write("<script>alert('Car with this ID does not exist.');</script>");
                            }
                        }
                    }
                }
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                // Handle database errors
                string errorMessage = "An error occurred while fetching car details: " + ex.Message;
                // Log or display the error message for debugging purposes
                Response.Write("<script>alert('" + errorMessage + "');</script>");
                // Optionally, you can also log the full exception details including stack trace
                // LogException(ex);
            }
        }

        protected void UpdateCarDetailsButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                using (var con = new MySqlConnection(connectionString))
                {
                    using (var cmd = new MySqlCommand())
                    {
                        cmd.Connection = con;
                        con.Open();

                        // Check if a new image is uploaded
                        if (CarImageUpload.HasFile)
                        {
                            // Read the file content
                            byte[] fileData = CarImageUpload.FileBytes;
                            // Update the image data in the database
                            cmd.CommandText = "UPDATE tblCar SET CarName = @CarName, CarCategory = @CarCategory, CarCapacity = @CarCapacity, CarKmpL = @CarKmpL, PricePerDay = @PricePerDay, CarInfo = @CarInfo, CarImage = @CarImage, CarStatus = @CarStatus WHERE C_ID = @CarID";
                            cmd.Parameters.AddWithValue("@CarImage", fileData);
                        }
                        else
                        {
                            // Handle if no new image is uploaded
                            cmd.CommandText = "UPDATE tblCar SET CarName = @CarName, CarCategory = @CarCategory, CarCapacity = @CarCapacity, CarKmpL = @CarKmpL, PricePerDay = @PricePerDay, CarInfo = @CarInfo, CarStatus = @CarStatus WHERE C_ID = @CarID";
                        }

                        // Add other parameters for car details update
                        cmd.Parameters.AddWithValue("@CarID", txtCarId.Text);
                        cmd.Parameters.AddWithValue("@CarName", txtCarName.Text);
                        cmd.Parameters.AddWithValue("@CarCategory", txtCarCategory.Text);
                        cmd.Parameters.AddWithValue("@CarCapacity", txtCarCapacity.Text);
                        cmd.Parameters.AddWithValue("@CarKmpL", txtCarKmpL.Text);
                        cmd.Parameters.AddWithValue("@PricePerDay", txtPricePerDay.Text);
                        cmd.Parameters.AddWithValue("@CarInfo", txtCarInfo.Text);
                        cmd.Parameters.AddWithValue("@CarStatus", txtCarStatus.Text); // Assuming txtCarStatus is a TextBox control

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Update successful
                            Response.Write("<script>alert('Car Details Updated Successfully..');</script>");
                        }
                        else
                        {
                            // Update failed
                            Response.Write("<script>alert('Failed to update car details.');</script>");
                        }
                    }
                }
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                // Handle database errors
                Response.Write("<script>alert('An error occurred while updating car details: " + ex.Message + "');</script>");
            }
        }


    }
}