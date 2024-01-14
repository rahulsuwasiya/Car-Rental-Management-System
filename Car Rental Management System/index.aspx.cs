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
                lblSignUp.Text = Session["UserName"].ToString();
                lblLogIn.Text = "Logout";
                SignUpIcon.Visible = false;
                LoginIcon.Visible = false;
                LogoutIcon.Visible = true;
            }
            else
            {
                
            }
        }
    }
}