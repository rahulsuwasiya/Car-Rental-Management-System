using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class RemoveCarPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RemoveCarButton_Click(object sender, EventArgs e)
        {
            try
            { 
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                con = new MySqlConnection(connectionString);
                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "DELETE FROM tblCar WHERE C_Id = @C_Id";
                cmd.Parameters.AddWithValue("@C_Id", txtCarId.Text);
                int rowsAffected = cmd.ExecuteNonQuery();
                
                if (rowsAffected > 0)
                {
                    Response.Write("<script>alert('Car Removed Successfuly');window.location = 'CarSectionPage.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Id does not exists..');window.location = 'CarSectionPage.aspx';</script>");
                }
                
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                // Check if the exception is due to a primary key violation
                if (ex.Number == 1062)  // SQL Server error number for primary key violation
                {
                    Response.Write("<script>alert('Car ID does not exists. Please choose a different ID.');window.location = 'AddCarPage.aspx';</script>");
                }

            }
        }
    }
}