﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.CarsPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />      
    <link href="../StyleSheets/CarsPage.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
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
    <form runat="server">
        <div class="car-page section" id="car">

    <div class="find-car-bar">

        <div class="left-container">
            <div class="text-title">
                <div class="head-title">
                    Book car in easy steps
                </div>
                <div class="sub-title">
                    Book your ideal ride in minutes—choose, confirm, customize with optional extras,
                    and hit the road hassle-free!
                </div>
            </div>
            <div class="bottom-box">

                <div class="left-box">
                    <div class="circle-profile">
                        <img src="../Images/User1.jpg" />
                    </div>
                    <div class="circle-profile">
                        <img src="../Images/User2.jpg" />
                    </div>
                    <div class="circle-profile">
                        <img src="../Images/User3.jpg" />
                    </div>
                    <div class="circle-profile">
                        <img src="../Images/User4.jpg" />
                    </div>
                    <div class="circle-profile">
                        9k+
                    </div>
                </div>

                <div class="separator"></div>

                <div class="right-box">
                    <div class="star-box">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <p>
                        trust by 5 million customers
                    </p>
                </div>

            </div>
        </div>

        <div class="right-container">

            <div class="form-container">

                <div class="top-box">
                    <label for="pick-up-address">
                        <i class="fa-solid fa-map-pin"></i>
                        pick-up address
                    </label>
                    <asp:TextBox name="pick-up-address" TextMode="SingleLine" runat="server" />
                </div>

                <div class="bottom-box">
                    <div class="box">
                        <label for="pick-up-date">
                            <i class="fa-solid fa-calendar"></i>
                            pick-up date
                        </label>
                        <asp:TextBox name="pick-up-date" TextMode="Date" runat="server" />
                    </div>
                    <div class="box">
                        <label for="pick-up-time">
                            <i class="fa-solid fa-clock"></i>
                            pick-up time
                        </label>
                        <asp:TextBox name="pick-up-time" TextMode="Time" runat="server" />
                    </div>
                </div>
            </div>

            <div class="form-container">

                <div class="top-box">
                    <label for="drop-off-address">
                        <i class="fa-solid fa-map-pin"></i>
                        drop-off address
                    </label>
                     <asp:TextBox name="drop-off-address" TextMode="SingleLine" runat="server" />
                </div>

                <div class="bottom-box">
                    <div class="box">
                        <label for="drop-off-date">
                            <i class="fa-solid fa-calendar"></i>
                            drop-off date
                        </label>
                        <asp:TextBox name="drop-off-date" TextMode="Date" runat="server" />
                    </div>
                    <div class="box">
                        <label for="drop-off-time">
                            <i class="fa-solid fa-clock"></i>
                            drop-off time
                        </label>
                         <asp:TextBox name="drop-off-time" TextMode="Time" runat="server" />
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="car-container">

        <div class="filter-car-bar">
            <div class="head-title">
                find car<i class="fa-solid fa-bullseye"></i>
            </div>

            <div  class="car-category-container">

                <div class="car-category show">
                    <div class="top-box">
                        <div class="head-title">car type</div>
                        <div class="show-button"></div>
                    </div>
                    <div class="category-content">
                        
                        <div class="category-car">
                            <asp:CheckBox ID="chkCategory1" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" Text="Sedan" runat="server" />
                           
                        </div>
                        <div class="category-car">
                            <asp:CheckBox ID="chkCategory2" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" Text="SUV" runat="server" />
                           
                        </div>
                        
                    </div>
                </div>

                <div class="car-category show">
                    <div class="top-box">
                        <div class="head-title">capacity</div>
                        <div class="show-button"></div>
                    </div>
                    <div class="category-content">
                        <div class="category-car">
                            <asp:CheckBox Text="2 - 5" ID="chkCategory3" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" runat="server" />
                            
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="6 or more" ID="chkCategory4" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" runat="server" />
                            
                        </div>

                    </div>
                </div>

                


            </div>
        </div>

        <div class="car-item-box">

            <asp:Repeater ID="reptProduct" runat="server">
                <ItemTemplate> 
                     
                    <div class="car-item">
      <div class="car-name">
          <asp:Label ID="lblName" Text='<%# Eval("CarName") %>' runat="server" />
      </div>
      <div class="car-body-category">
          <asp:Label ID="lblCategory" Text='<%# Eval("CarCategory") %>' runat="server" />
      </div>
      <div class="price">
          &#8377<p><asp:Literal runat="server" ID="lblPrice" Text='<%# Eval("PricePerDay") %>'></asp:Literal></p><div>/day</div>

      </div>
      <div class="car-image">
          
          <asp:Image ID="CarImage" runat="server" ImageUrl='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("CarImage")) %>' AlternateText="Car Image" />
      </div>
      <div class="bottom-content">
          <div class="car-feature">
              <div class="feature-item">
                  <i class="fa-solid fa-gear"></i>
                  <span>Auto</span>
              </div>
              <div class="feature-item">
                  <i class="fa-solid fa-couch"></i>
                  <span><asp:Label ID="lblCarCapacity" Text='<%# Eval("CarCapacity") %>' runat="server" /> seats</span>
              </div>
              <div class="feature-item">
                  <i class="fa-solid fa-gas-pump"></i>
                  <span><asp:Label ID="lblCarKmpL" Text='<%# Eval("CarKmpL") %>' runat="server" /> Kmpl</span>
              </div>
          </div>
          
          <asp:Button Text="Rent Now!" ID="BtnRent" runat="server" OnClick="BtnRent_Click" CssClass="rent-button"/>
      </div>
  </div>
                   
                </ItemTemplate>
            </asp:Repeater>
           

        </div>
    </div>
</div>
    
</form>
    <uc1:Footer runat="server" ID="Footer" />
 <script>

     document.addEventListener("DOMContentLoaded", function () {
         const showButton = document.querySelectorAll(".show-button");

         showButton.forEach((btn) => {
             btn.addEventListener("click", function () {
                 this.parentElement.parentElement.classList.toggle('show');
             })
         });

     });

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
