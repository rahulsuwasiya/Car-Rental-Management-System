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
           
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                MySqlConnection connection = new MySqlConnection(connectionString);
                DataTable dt = new DataTable();
                string query = "SELECT * FROM tblBooking";
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, connection);
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {      
            Session.Abandon();
            Response.Redirect("../Admin/AdminLogin.aspx");
        }
    }
}