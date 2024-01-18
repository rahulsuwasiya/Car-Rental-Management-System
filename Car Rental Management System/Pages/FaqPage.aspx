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
        <asp:Label Text="" visible="false" ID="lblUser" runat="server" />
    </div>
   <div class="menu-toggle" onclick="toggleMenu()"></div>
</div>
 <div class="faq-page section" id="faq">

     <div class="container">

         <div class="head-title" data-small-title="frequently asked question">
             Question that are always asked
         </div>
         <div class="sub-title">
             Discover answers to common queries on our FAQ page, covering topics like booking, rates, and policies.<br /> For personalized assistance, our 24/7 customer support is always here to help.
         </div>
         <div class="faq-container">

             <div class="faq-item" id="quest1">
                 <div class="title-quest">
                     <h2>Can i rent a car at 18 yo?</h2>
                     <a href="#quest1"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">At PrimeCars, our standard policy requires renters to be at least 21 years old. However, we understand that younger drivers may need our services. We offer flexibility for drivers aged 18-20 with an additional surcharge and may have specific conditions. For details, please contact our customer support to discuss options and ensure a smooth rental process.</div>
             </div>
             <div class="faq-item" id="quest2">
                 <div class="title-quest">
                     <h2>How do i change and cancel my reservation?</h2>
                     <a href="#quest2"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">To modify or cancel your reservation with PrimeCars, log in to your account or reach out to our 24/7 customer support. Navigate to 'Manage Reservations' for modifications, and for cancellations, select the cancellation option on our platform. Please review our cancellation policy for any applicable fees. We're here to assist you for a hassle-free experience with PrimeCars.</div>
             </div>
             <div class="faq-item" id="quest3">
                 <div class="title-quest">
                     <h2>Will enterprise pick me up?</h2>
                     <a href="#quest3"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">At PrimeCars, we strive to provide convenience. While we don't currently offer a pick-up service, we have easily accessible rental locations for a seamless experience. Feel free to visit one of our branches, and our team will ensure a smooth and efficient process to get you on the road swiftly.</div>
             </div>
             <div class="faq-item" id="quest4">
                 <div class="title-quest">
                     <h2>Does enterprise sell vehicle?</h2>
                     <a href="#quest4"><i class="fa-solid fa-caret-down"></i></a>
                 </div>
                 <div class="answer">At PrimeCars, we currently focus exclusively on providing rental services and do not engage in vehicle sales. Our priority is to offer a premium and hassle-free car rental experience for our customers. If you're looking for a reliable rental vehicle, explore our diverse fleet and enjoy the journey with PrimeCars.</div>
             </div>

         </div>
     </div>
 </div>
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
