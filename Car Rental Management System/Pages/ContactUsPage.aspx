<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUsPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.ContactUsPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link href="../StyleSheets/ContactUsPage.css" rel="stylesheet" />
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
        <br />
        <section class="contact">
            <div class="content">
                <h2>Contact Us</h2>
                <p>
                   Thank you for considering PrimeCars for your transportation needs. Whether you have questions,
                    feedback, or need assistance, we're here to help. Feel free to reach out to us via phone, email, 
                    or by filling out the contact form below.Our dedicated team is available 24x7 to assist you with reservations, 
                    inquiries, or any concerns you may have. 
                    Your satisfaction is our priority, and we look forward to serving you.
                    
                </p>
            </div>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa-solid fa-location-dot"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>351 C.S.T Road,<br /> mumbai, Maharashtra <br />400071</p>
                        </div>
                    </div>
                     <div class="box">
                        <div class="icon"><i class="fa-solid fa-phone"></i></div>
                         <div class="text">
                         <h3>Phone</h3>
                         <p>+91 8591342520</p>
                        </div>
                       </div>
                     <div class="box">
                      <div class="icon"><i class="fa-solid fa-envelope"></i></div>
                           <div class="text">
                           <h3>Email</h3>
                           <p>primecars@gmail.com</p>
     </div>
 </div>
                </div>
                <div class="contactForm">
                    <h2>Send Message</h2>
                    <div class="inputBox">
                                                                            
                        <asp:TextBox CssClass="input" ID="txtName" runat="server" />
                        
                        <span>Full Name<asp:RequiredFieldValidator Font-Size="Large" ID="rfvName"  runat="server" ForeColor="Red" ControlToValidate="txtName"
ErrorMessage="*"></asp:RequiredFieldValidator></span>
                               
                    </div>
                                                   
                    <div class="inputBox">
    <asp:TextBox  CssClass="input" ID="txtEmail" TextMode="Email" runat="server" />
                         
            
    <span>Email         <asp:RequiredFieldValidator ID="rfvEmail" Font-Size="Large" runat="server" ForeColor="Red" ControlToValidate="txtEmail"
ErrorMessage="*"></asp:RequiredFieldValidator></span>
</div>
                    <div class="inputBox">
    <asp:TextBox runat="server" ID="txtMessage"  CssClass="input" TextMode="MultiLine" />
                         
    <span>Type your Message...          <asp:RequiredFieldValidator ID="rfvMessage" runat="server" Font-Size="Large"  ForeColor="Red" ControlToValidate="txtMessage"
ErrorMessage="*"></asp:RequiredFieldValidator></span>
</div>
                                        <div class="inputBox">
                                            <asp:Button Text="Send" ID="BtnSend" CssClass="input submit" OnClick="BtnSend_Click" runat="server" />
</div>
                </div>
            </div>

        </section>


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
