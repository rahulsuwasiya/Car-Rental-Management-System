<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FaqPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.FaqPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link href="../StyleSheets/FaqPage.css" rel="stylesheet" />
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
 <div class="faq-page section" id="faq">

     <div class="container">

         <div class="head-title" data-small-title="frequently asked question">
             Question that are always asked
         </div>
         <div class="sub-title">
             Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe molestiae explicabo pariatur facere.<br/>Lorem ipsum dolor sit amet consectetur.<br/>Lorem ipsum dolor sit.
         </div>
         <div class="faq-container">

             <div class="faq-item" id="quest1">
                 <div class="title-quest">
                     <h2>can i rent a car at 18 yo?</h2>
                     <a href="#quest1"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid veritatis quisquam, provident debitis laudantium quia amet omnis totam fuga error blanditiis. Tempora error dolores perferendis fugit tempore necessitatibus, deleniti ea!</div>
             </div>
             <div class="faq-item" id="quest2">
                 <div class="title-quest">
                     <h2>how do i change and cancel my reservation?</h2>
                     <a href="#quest2"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid veritatis quisquam, provident debitis laudantium quia amet omnis totam fuga error blanditiis. Tempora error dolores perferendis fugit tempore necessitatibus, deleniti ea!</div>
             </div>
             <div class="faq-item" id="quest3">
                 <div class="title-quest">
                     <h2>will enterprise pick me up?</h2>
                     <a href="#quest3"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid veritatis quisquam, provident debitis laudantium quia amet omnis totam fuga error blanditiis. Tempora error dolores perferendis fugit tempore necessitatibus, deleniti ea!</div>
             </div>
             <div class="faq-item" id="quest4">
                 <div class="title-quest">
                     <h2>does enterprise sell vehicle?</h2>
                     <a href="#quest4"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid veritatis quisquam, provident debitis laudantium quia amet omnis totam fuga error blanditiis. Tempora error dolores perferendis fugit tempore necessitatibus, deleniti ea!</div>
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
