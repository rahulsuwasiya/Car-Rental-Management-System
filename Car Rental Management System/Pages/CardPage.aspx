<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardPage.aspx.cs" Inherits="Car_Rental_Management_System.Admin.CardPage" %>

<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/CardPage.css" rel="stylesheet" />
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
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
   <main>                
  <div class="card">
    <div class="card__title">
      <div class="icon">
        <a href="../Pages/CarsPage.aspx"><i class="fa fa-arrow-left"></i></a>
      </div>
      
    </div>
    <div class="card__body">
      <div class="half">
        <div class="featured_text">
          <h2>
          <asp:Label Text="" ID="CarName" runat="server" /></h2>
          <p class="sub">
              <asp:Label Text="" ID="CarCategory" runat="server" /></p>
          <p class="price">Rs.<asp:Label Text="" ID="CarPrice" runat="server" />/Day</p>
        </div>
        <div class="image">
            <asp:Image  ID="CarImage" runat="server" />
        </div>
      </div>
      <div class="half">
        <div class="description">
          <p><asp:Label ID="lblCarInfo" Text='<%# Eval("CarInfo") %>' runat="server" Font-Italic="true" /></p><br />
            <b>Capacity(Seats):</b><asp:Label Text="" ID="lblCarCapacity" runat="server" /><br />
            <b>Kmpl:</b><asp:Label Text="" ID="lblCarKmpL" runat="server" />
        </div>
        <span class="stock">Select No. of Days</span>
        <div class="reviews">
           From Date:<asp:TextBox runat="server" ID="txtFdate" TextMode="Date"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ControlToValidate="txtfdate" ErrorMessage="*" 
     ForeColor="Red"></asp:RequiredFieldValidator><br />
           &nbsp;&nbsp; To Date:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtTdate" runat="server"  TextMode="Date"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtTdate" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator><br />
           &nbsp;Location: &nbsp;&nbsp;<asp:DropDownList ID="drpLocation" runat="server">
                <asp:ListItem Text="Select" />
                <asp:ListItem Text="Dadar" />
                <asp:ListItem Text="Kurla" />
                <asp:ListItem Text="Chembur" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="drpLocation" 
                ErrorMessage="*" ForeColor="Red" 
                InitialValue="Select"></asp:RequiredFieldValidator>
        </div>
          <asp:CompareValidator ID="CompareValidatorDates" runat="server" 
                ControlToValidate="txtTdate" 
                ControlToCompare="txtFdate" 
                Operator="GreaterThan" 
                Type="Date" 
                ErrorMessage="To Date must be greater than From Date" 
                Display="Dynamic" 
                ForeColor="Red"></asp:CompareValidator>
          <asp:CompareValidator ID="CompareValidatorFromDate" runat="server" 
              ControlToValidate="txtFdate" Type="Date" Operator="GreaterThanEqual"
              ErrorMessage="From date must be today's date or later" ForeColor="Red"></asp:CompareValidator>
      </div>
    </div>
    <div class="card__footer">
      <div class="recommend">
        <p>Recommended by</p>
        <h3>Rahul Suwasiya</h3>
      </div>
      <div class="action">
        <button type="button" id="RentBtn" runat="server" onserverclick="RentBtn_ServerClick">Rent Now</button>
      </div>
    </div>
  </div>
</main>
        <uc1:Footer runat="server" ID="Footer" />
    </form>
</body>
</html>
