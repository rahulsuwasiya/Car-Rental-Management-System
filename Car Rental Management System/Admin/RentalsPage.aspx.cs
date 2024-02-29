using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class RentalsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                
                lblAdmin.Text = "Welcome, " + Session["UserName"].ToString();
               

            }
            else
            {

            }
            int totalEntries=0;
            string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            MySqlConnection connection = new MySqlConnection(connectionString);
            if (!IsPostBack)
            {
                
                DataTable dt = new DataTable();
                string query = "SELECT * FROM tblBooking";
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, connection);
                // Fill DataTable with data from the database
                adapter.Fill(dt);
                totalEntries = dt.Rows.Count;
                // Bind DataTable to GridView
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            lblCompRent.Text=totalEntries.ToString();
            connection.Open();
            string q = "SELECT COUNT(*) FROM tblUser";
            MySqlCommand cmd = new MySqlCommand(q, connection);
            object result = cmd.ExecuteScalar();

            // Attempt to parse the result to an integer
            int totalCount;
            if (result != null && int.TryParse(result.ToString(), out totalCount))
            {
                // Output the total count of entries
                lblCustomers.Text = totalCount.ToString();
            }
            string q1 = "SELECT SUM(TotalAmt) FROM tblBooking";
            cmd = new MySqlCommand(q1, connection);
            object result1 = cmd.ExecuteScalar();

            // Attempt to parse the result to an integer
            int totalTransaction;
            if (result1 != null && int.TryParse(result1.ToString(), out totalTransaction))
            {
                // Output the total count of entries
                lblTransaction.Text = totalTransaction.ToString();
            }


            int availableCarCount = 0;
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (MySqlCommand cmd1 = new MySqlCommand())
                    {
                        cmd1.Connection = con;
                        cmd1.CommandText = "SELECT COUNT(*) FROM tblCar WHERE CarStatus = 'Available'";
                        availableCarCount = Convert.ToInt32(cmd1.ExecuteScalar());
                        lblCarCount.Text = availableCarCount.ToString();
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception, e.g., log it or display an error message
                    Console.WriteLine("Error: " + ex.Message);
                }
            }


        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            // Destroy the session
            Session.Abandon();

            // Redirect to the logout page or any other page after session destruction
            Response.Redirect("../Admin/AdminLogin.aspx");
        }
    }
}