<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HowItWorksPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.HowItWorksPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/HowItWorksPage.css" rel="stylesheet" />
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
        <div class="box login-bar" onclick="window.location.href='../Pages/LoginPage.aspx';">
            <p>Login</p>
            <i class="fa-solid fa-right-to-bracket"></i>
        </div>
        <div class="box signup-bar" onclick="window.location.href='../Pages/RegisterPage.aspx';">
            <p>Sign Up</p>
            <i class="fa-solid fa-user-plus"></i>
        </div>
    </div>
   <div class="menu-toggle" onclick="toggleMenu()"></div>
</div>
     <div class="how-it-works-page section" id="how">
    <div class="head-title" data-small-title="how it works">
        Easy steps to rent
    </div>
    <div class="container">
        <div class="box-item">
            <div class="item">
                <i class="fa-solid fa-location-crosshairs"></i>
                <div class="head-title">set point</div>
                <div class="sub-title">Lorem ipsum dolor sit amet.</div>
            </div>
            <div class="item">
                <i class="fa-solid fa-calendar"></i>
                <div class="head-title">select a date</div>
                <div class="sub-title">Lorem ipsum dolor sit amet.</div>
            </div>
            <div class="item">
                <i class="fa-solid fa-car"></i>
                <div class="head-title">book a car</div>
                <div class="sub-title">Lorem ipsum dolor sit amet.</div>
            </div>
            <div class="item">
                <i class="fa-solid fa-square-check"></i>
                <div class="head-title">adjust needs</div>
                <div class="sub-title">Lorem ipsum dolor sit amet.</div>
            </div>
            <div class="item">
                <i class="fa-solid fa-dollar-sign"></i>
                <div class="head-title">make a deal</div>
                <div class="sub-title">Lorem ipsum dolor sit amet.</div>
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
