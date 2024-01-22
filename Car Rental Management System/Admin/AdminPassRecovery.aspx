<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPassRecovery.aspx.cs" Inherits="Car_Rental_Management_System.Admin.AdminPassRecovery" %>

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
   <div class="login-container"> 

<div class="wrapper">
    <h1>Forgot Password?</h1>
         <asp:TextBox runat="server" Text="" ID="txtUsername" placeholder="Username" TextMode="SingleLine" CssClass="text-name" />
         <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtUsername" runat="server" />
         <asp:TextBox runat="server" Text="" ID="txtNewPass" placeholder="New Password" TextMode="Password" CssClass="text-name" /> 
         <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtNewPass" runat="server" />
         <asp:TextBox runat="server" ID="txtCnfPass" Text="" placeholder="Re-Enter Password" TextMode="Password" CssClass="text-name" />
         <asp:CompareValidator  runat="server" ControlToCompare="txtCnfPass"   
                ControlToValidate="txtNewPass" Display="Static" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"   
                Operator="Equal" Type="String"></asp:CompareValidator> 
         <asp:Button Text="Submit" runat="server" ID="PassReset" OnClick="PassReset_Click" CssClass="button" />
    <div class="member">
         Back to  <a href="AdminLogin.aspx">Login</a> 
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
