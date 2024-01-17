<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.UpdatePage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/UpdatePage.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <form runat="server">
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
                                     <button runat="server"  visible="true" id="BtnLogin" class="box login-bar" onserverclick="BtnLogin_ServerClick" >
     Login <i class="fa-solid fa-right-to-bracket"></i>
 </button>
                <button runat="server"  visible="false" id="BtnLogout" class="box login-bar" onserverclick="BtnLogout_ServerClick" >
    Logout <i class="fa-solid fa-right-to-bracket"></i>
</button>
 <button runat="server"  visible="true" id="BtnSignUp" class="box signup-bar" onserverclick="BtnSignUp_ServerClick" >
     Sign Up <i class="fa-solid fa-user-plus"></i>
 </button>
        <asp:Label Text="Rahul" visible="false" ID="lblUser" runat="server" />
    </div>
   <div class="menu-toggle" onclick="toggleMenu()"></div>
</div>
 
  <div class="update-page section" id="update">

     <div class="container">

         <div class="box">
             <div class="image-box">
                 <img src="../Images/UpdatePageImg.jpg" />
             </div>
         </div>
         <div class="box">
             <div class="head-title" data-small-title="get all the update">
                 Get all the update in your inbox
             </div>
             <div class="update-info">
                Stay in the loop with PrimeCars! Subscribe now to receive all the latest updates, promotions, and news straight to your inbox. Your journey starts with the latest information at your fingertips!
             </div>
             <div class="email-box">
                 <asp:TextBox TextMode="SingleLine" runat="server" placeholder="enter your email"></asp:TextBox>
                 <div class="outer-button">
                     <div class="inner-button">
                         Subscribe
                     </div>
                 </div>
             </div>
         </div>

     </div>

 </div>

 </form>
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
