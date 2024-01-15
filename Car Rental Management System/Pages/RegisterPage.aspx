<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.RegisterPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/LoginPage.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
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
                <button runat="server"  visible="true" id="b2" class="box login-bar"  >
    Login <i class="fa-solid fa-right-to-bracket"></i>
</button>
<button runat="server"  visible="true" id="b1" class="box signup-bar"  >
    Sign Up <i class="fa-solid fa-user-plus"></i>
</button>
    </div>
   <div class="menu-toggle" onclick="toggleMenu()"></div>
</div>
 <div class="login-container">
 <form id="form1" runat="server">
 <div class="wrapper">
     <h1>Sign Up</h1>
         <asp:TextBox runat="server" Text="" placeholder="Username" TextMode="SingleLine" CssClass="text-name" />
         <asp:TextBox runat="server" Text="" placeholder="Name" TextMode="SingleLine" CssClass="text-name" />
         <asp:TextBox runat="server" Text="" placeholder="Password" TextMode="Password" CssClass="text-name" />
         <asp:TextBox runat="server" Text="" placeholder="Re-Enter Password" TextMode="Password" CssClass="text-name" />
     <div class="terms">
         <asp:CheckBox CssClass="terms-input" Text="I agree to these <a href='#'> Terms & Conditions</a>" runat="server" />
     </div>
     <asp:Button Text="Sign Up" runat="server" CssClass="button" />
     <div class="member">
         Already a member?  <a href="LoginPage.aspx">Login Here</a>     
     </div>
  </div>
  </form>
     </div>
    <uc1:Footer runat="server" ID="Footer" />
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
