<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Car_Rental_Management_System.Component.AdminLogin" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AdminLogin.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
            <form id="form1" runat="server">
    <div class="navigation-bar">
    <div class="head-title">Prime<span>Cars</span></div>
    <ul class="nav-item">
        <li><a href="../index.aspx">Home</a></li>
        <li><a href="../Pages/HowItWorksPage.aspx">How it works</a></li>
        <li><a href="../Pages/ServicePage.aspx">Services</a></li>
        <li><a href="../Pages/SuggestPage.aspx">Suggest</a></li>
        <li><a href="../Pages/CarsPage.aspx">Cars</a></li>
        <li><a href="../Pages/TestimonialsPage.aspx">Testimonials</a></li>
        <li><a href="../Pages/UpdatePage.aspx">Update</a></li>
        <li><a href="../Pages/FaqPage.aspx">Faq</a></li>
    </ul>
    <div class="account-box">
   
        

        <asp:Label Text="" visible="false" ID="lblUser" runat="server" />
    </div>
   <div class="menu-toggle" onclick="toggleMenu()"></div>
</div>
                <br />
                <br />
                <br />
                 <br />
 <br />

   <div class="login-container">
        
<div class="wrapper">
     <h1>Login</h1>
        <asp:TextBox runat="server" ID="Unametxt" Text="" placeholder="Username" TextMode="SingleLine" CssClass="text-name" />
        <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="Unametxt" runat="server" />
        <asp:TextBox runat="server" ID="Passtxt" Text="" placeholder="Password" TextMode="Password" CssClass="text-name" />
       <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="Passtxt" runat="server" />
        <div class="recover">
            <a href="AdminPassRecovery.aspx">Forgot Password?</a>
        </div>
        <asp:Button Text="Login" runat="server" OnClick="Unnamed_Click" CssClass="button" />
        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
     
</div>

   </div>
                
                <br />
                <br />
                  <br />
  <br />
                  <br />  <br />
    <uc1:Footer runat="server" ID="Footer" />
        </form>
     <script>

 const menuButton = document.querySelector(".menu-toggle");
 navItem = document.querySelector(".nav-item");

 function toggleMenu() {
     menuButton.classList.toggle('show');
     navItem.classList.toggle("show");
 }



 window.onscroll = () => {
     menuButton.classList.remove('show');
     navItem.classList.remove("show");
 }

     </script>
</body>
</html>
