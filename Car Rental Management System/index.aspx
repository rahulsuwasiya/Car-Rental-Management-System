<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Car_Rental_Management_System.index" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <link rel="stylesheet" type="text/css" href="StyleSheet/HomePage.css" />
    <title></title>
    <link href="StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="Component/Footer.css" rel="stylesheet" />
    <link href="StyleSheets/Style.css" rel="stylesheet" />
    <link href="StyleSheets/HomePage.css" rel="stylesheet" />
    <link href="StyleSheets/MilestonePage.css" rel="stylesheet" />
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
                     <button runat="server"  visible="true" id="BtnLogin" class="box login-bar" onserverclick="BtnLogin_ServerClick1" >
     Login <i class="fa-solid fa-right-to-bracket"></i>
 </button>
                <button runat="server"  visible="false" id="BtnLogout" class="box login-bar" onserverclick="BtnLogout_ServerClick" >
    Logout <i class="fa-solid fa-right-to-bracket"></i>
</button>
 <button runat="server"  visible="true" id="BtnSignUp" class="box signup-bar" onserverclick="BtnSignUp_ServerClick" >
     Sign Up <i class="fa-solid fa-user-plus"></i>
 </button>
        <asp:Label Text="Rahul" visible="false" ID="btnUser" runat="server" />
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
                Live the life of Luxury.<br />
                Just rent a car of your wish from our vast collection.<br />
                Enjoy every moment with your family<br />
                Join us to make this family vast.
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

    <div class="form-container">
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
        
            <button type="button" id="Search"  runat="server" class="form-button" onserverclick="Search_ServerClick" >
            Search
        </button>
         

    
</div>
         </div>
    </form>
   
<uc1:Footer runat="server" id="Footer" />
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
