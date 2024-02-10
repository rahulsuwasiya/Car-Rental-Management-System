using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System.Admin
{
    public partial class CustomerSection : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                MySqlConnection connection = new MySqlConnection(connectionString);
                DataTable dt = new DataTable();
                string query = "SELECT * FROM tblBooking";
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, connection);
                // Fill DataTable with data from the database
                adapter.Fill(dt);

                // Bind DataTable to GridView
                GridView1.DataSource = dt;
                GridView1.DataBind();
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