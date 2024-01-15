<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServicePage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.ServicePage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link href="../StyleSheets/ServicePage.css" rel="stylesheet" />
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
 <div class="service-page section" id="service">
    <div class="container">

        <div class="box">
            <div class="image-box">
                <img src="../Images/CartoonCar.png" alt="Car Image" /> 
            </div>
        </div>

        <div class="box">
            <div class="head-title" data-small-title="service">
                Best service
            </div>
            <div class="sub-title">
                Get the best with us – easy, affordable, and always reliable. Choose PrimeCars for a hassle-free, enjoyable ride every time!<br />
            </div>
            <br />
            <br />
            <div class="service-content">
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-map"></i>
                        <i class="fa-solid fa-map"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            location
                        </div>
                        <div class="sub-title">
                             Convenient, accessible rental points always.
                        </div>
                    </div>
                </div>
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-tag"></i>
                        <i class="fa-solid fa-tag"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            price
                        </div>
                        <div class="sub-title">
                            Affordable rates for every budget.
                        </div>
                    </div>
                </div>
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-bookmark"></i>
                        <i class="fa-solid fa-bookmark"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            variety
                        </div>
                        <div class="sub-title">
                            Diverse fleet for all preferences.
                        </div>
                    </div>
                </div>
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-phone"></i>
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            24/7 support
                        </div>
                        <div class="sub-title">
                            Assistance available around the clock.
                        </div>
                    </div>
                </div>
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-bullhorn"></i>
                        <i class="fa-solid fa-bullhorn"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            promos every day
                        </div>
                        <div class="sub-title">
                            Daily promotions for extra savings.
                        </div>
                    </div>
                </div>
                <div class="service-item">
                    <div class="logo">
                        <i class="fa-solid fa-gauge"></i>
                        <i class="fa-solid fa-gauge"></i>
                    </div>
                    <div class="service-info">
                        <div class="head-title">
                            mileage unlimited
                        </div>
                        <div class="sub-title">
                            Explore freely with unlimited mileage.
                        </div>
                    </div>
                </div>
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
