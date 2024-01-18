using System;
using System.Collections.Generic;
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