﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.RegisterPage" %>
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
         <br />
         <br />
 <div class="login-container">

 <div class="wrapper">
     <h1>Sign Up</h1>
         <asp:TextBox runat="server" ID="txtUname" Text="" placeholder="Username" TextMode="SingleLine" CssClass="text-name" />
         <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtUname" runat="server" />
         <asp:RegularExpressionValidator ID="UsernameValidator" runat="server"
    ControlToValidate="txtUname" Display="Dynamic" ForeColor="Red" Font-Size="Small"
    ErrorMessage="Username must be at least 8 characters long and should not contain any numbers"
    ValidationExpression="^(?!.*\d).{8,}$"></asp:RegularExpressionValidator>
         <asp:TextBox runat="server" ID="txtEmail" Text="" placeholder="Email" TextMode="SingleLine" CssClass="text-name" />
         <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtEmail" runat="server" />
         <asp:RegularExpressionValidator ID="EmailFormatValidator" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" ErrorMessage="Invalid email format" ForeColor="Red" Font-Size="Small"
                    ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"></asp:RegularExpressionValidator>
         <asp:TextBox runat="server" ID="txtPass" Text="" placeholder="Password" TextMode="Password" CssClass="text-name"  />
         <asp:RequiredFieldValidator ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtPass" runat="server" />
         <asp:RegularExpressionValidator ID="PasswordLengthValidator" runat="server" ControlToValidate="txtPass"
                Display="Dynamic" ErrorMessage="Password must be at least 8 characters long"
                ValidationExpression="^.{8,}$" ForeColor="Red" Font-Size="Small"></asp:RegularExpressionValidator>
         <asp:TextBox runat="server" ID="txtCnfPass" Text="" placeholder="Re-Enter Password" TextMode="Password" CssClass="text-name" />
         <asp:CompareValidator  runat="server" ControlToCompare="txtCnfPass"   
                ControlToValidate="txtPass" Display="Static" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"   
                Operator="Equal" Type="String"></asp:CompareValidator> 
     <div class="terms">
         <asp:CheckBox CssClass="terms-input" ID="chbTandC" Text="I agree to these <a href='#'> Terms & Conditions</a>" runat="server" />
         <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ClientValidationFunction = "ValidateCheckBox"></asp:CustomValidator><br />
         
     </div>
     <asp:Button Text="Sign Up" ID="BtnSign" runat="server" CssClass="button" OnClick="BtnSign_Click" />
     <asp:Label Text="" visible="false" ID="lblErrorMessage" runat="server" ForeColor="Red" />
     <div class="member">
         Already a member?  <a href="LoginPage.aspx">Login Here</a>     
     </div>
  </div>

     </div>
          <br />
 <br />
    <uc1:Footer runat="server" ID="Footer" />
           </form>
    <script type = "text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=chbTandC.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
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
