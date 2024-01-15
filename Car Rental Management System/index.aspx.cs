using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental_Management_System
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserName"] != null)
            {
                
               
            }
            else
            {
                
            }
        }

        protected void b2_ServerClick(object sender, EventArgs e)
        {

        }

        protected void b1_ServerClick(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Pages/CarsPage.aspx");
        }
    }
}