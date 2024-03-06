using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
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
                BtnLogin.Visible = false;
                BtnLogout.Visible = true;
                BtnSignUp.Visible = false;
                lblUser.Text = "Hii, " + Session["UserName"].ToString();
                lblUser.Visible = true;    
            }
            
        }

        protected void BtnLogin_ServerClick1(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/LoginPage.aspx");
        }

        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Pages/LoginPage.aspx"); Session.Abandon();    
        }

        protected void BtnSignUp_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/RegisterPage.aspx");
        }

        protected void Search_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/CarsPage.aspx");
        }
    }
}