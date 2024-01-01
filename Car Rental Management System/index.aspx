<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Car_Rental_Management_System.index" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet/HomePage.css" />
    <title></title>
    <link href="StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="StyleSheets/Style.css" rel="stylesheet" />
    <link href="StyleSheets/HomePage.css" rel="stylesheet" />
    <link href="StyleSheets/MilestonePage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
         <div class="navigation-bar">
    <div class="head-title">had <span>rent</span></div>
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
     <div class="home-page section" id="home">
    <div class="container">
        <div class="content">
            <div class="head-title">
                Easy way<br /> to rent a <span>dream car</span><br />at an affordable <span>price!</span>
            </div>
            <div class="sub-title">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
            </div>
            <div class="download-box">
                <div class="content-box">
                    <div class="box">
                        <img src="Images/App_Store.png" />
                    </div>
                    <div class="box">
                        <img src="Images/Play_Store.png" />
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="image-box">
                <img src="Images/MainCar.png" />
            </div>
        </div>
    </div>

    <form id="form1" runat="server" class="form-container">
        <div class="input-group">
             <asp:TextBox placeholder="pick up location" TextMode="SingleLine" ID="plocation_txt" runat="server" />
            <div class="input-sub-group">
                <asp:TextBox placeholder="pick up date" TextMode="Date" ID="pdate_txt" runat="server" />
                <asp:TextBox placeholder="pick up time" TextMode="Time" ID="ptime_txt" runat="server" />
            </div>
        </div>
        <div class="input-group">
            <asp:TextBox placeholder="drop off location" TextMode="SingleLine" ID="dlocation_txt" runat="server" />
            <div class="input-sub-group">
                <asp:TextBox placeholder="return date" TextMode="Date" ID="rdate_txt" runat="server" />
                <asp:TextBox placeholder="return time" TextMode="Time" ID="rtime_txt" runat="server" />
            </div>
        </div>
        <button type="button" class="form-button">
            Search
        </button>

    </form>
</div> 
   

    
<p class="copyright">&copy;2023 | Had Code - All Right Reserved</p>
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
