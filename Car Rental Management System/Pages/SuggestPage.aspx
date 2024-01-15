<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuggestPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.SuggestPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/SuggestPage.css" rel="stylesheet" />
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

  <div class="suggest-page section" id="suggest">
     <div class="container">
         <div class="box">
             <div class="head-title" data-small-title="suggestion car">
                 The most popular car
             </div>
             <div class="sub-title">
                 Power, style, and versatility meet in this popular choice. 
                 Ideal for city or off-road adventures, it combines advanced tech with safety features. 
                 Families and enthusiasts love its spacious interior, 
                 making it a reliable and stylish pick for any journey.
             </div>
             <div class="car-name">
                 toyota fortuner 2.8 VRZ 4X2 A/T EURO 4
             </div>
             <div class="superiority-box">
                 <div class="items">
                    <i class="fa-solid fa-square-check"></i>
                    Powerful Engine.
                 </div>
                 <div class="items">
                     <i class="fa-solid fa-square-check"></i>
                     Cutting-Edge Technology.
                 </div>
                 <div class="items">
                     <i class="fa-solid fa-square-check"></i>
                     Euro 4 Compliance.
                 </div>
                 <div class="items">
                     <i class="fa-solid fa-square-check"></i>
                     Versatile 4X2 Capability.
                 </div>
                 <div class="items">
                     <i class="fa-solid fa-square-check"></i>
                     Automatic Transmission.
                 </div>
                 <div class="items">
                     <i class="fa-solid fa-square-check"></i>
                     Sophisticated Design.
                 </div>

             </div>
         </div>

         <div class="box">
             <div class="background"></div>
             <div class="image-box">
                 <img src="../Images/SuggestCar.png" />
             </div>
         </div>
     </div>

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
