<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.CarsPage" %>

<%@ Register Src="~/Component/Navbar.ascx" TagPrefix="cc" TagName="Navbar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />      
    <link href="../StyleSheets/CarsPage.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
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
    <form runat="server">
        <div class="car-page section" id="car">

    <div class="find-car-bar">

        <div class="left-container">
            <div class="text-title">
                <div class="head-title">
                    Book car in easy steps
                </div>
                <div class="sub-title">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus reiciendis velit quae iure.
                    Magnam, itaque.
                </div>
            </div>
            <div class="bottom-box">

                <div class="left-box">
                    <div class="circle-profile">
                        <img src="" alt="" />
                    </div>
                    <div class="circle-profile">
                        <img src="" alt="">
                    </div>
                    <div class="circle-profile">
                        <img src="" alt="">
                    </div>
                    <div class="circle-profile">
                        <img src="" alt="" />
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

                <div class="car-category">
                    <div class="top-box">
                        <div class="head-title">car type</div>
                        <div class="show-button"></div>
                    </div>
                    <div class="category-content">
                        <div class="category-car">
                            <asp:CheckBox Text="coup" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="sedan" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="SUV" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="pickup" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="hatchback" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="MPV" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>
                    </div>
                </div>

                <div class="car-category">
                    <div class="top-box">
                        <div class="head-title">capacity</div>
                        <div class="show-button"></div>
                    </div>
                    <div class="category-content">
                        <div class="category-car">
                            <asp:CheckBox Text="2 - 5" runat="server" />
                            <div class="category-count">(544)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="6 or more" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>

                    </div>
                </div>

                <div class="car-category">
                    <div class="top-box">
                        <div class="head-title">engine</div>
                        <div class="show-button"></div>
                    </div>
                    <div class="category-content">
                        <div class="category-car">
                            <asp:CheckBox Text="auto" runat="server" />
                            <div class="category-count">(544)</div>
                        </div>
                        <div class="category-car">
                            <asp:CheckBox Text="matic" runat="server" />
                            <div class="category-count">(10)</div>
                        </div>

                    </div>
                </div>


            </div>
        </div>

        <div class="car-item-box">

            <div class="car-item">
                <div class="car-name">
                    infinity g37
                </div>
                <div class="car-body-category">
                    sedan
                </div>
                <div class="price">
                    $<p>23</p><span>/day</span>
                </div>
                <div class="car-image">
                    <img src="" alt="">
                </div>
                <div class="bottom-content">
                    <div class="car-feature">
                        <div class="feature-item">
                            <i class="fa-solid fa-gear"></i>
                            <span>auto</span>
                        </div>
                        <div class="feature-item">
                            <i class="fa-solid fa-couch"></i>
                            <span>2 seats</span>
                        </div>
                        <div class="feature-item">
                            <i class="fa-solid fa-gas-pump"></i>
                            <span>30 MPG</span>
                        </div>
                    </div>
                    <div class="rent-button">
                        rent now!<i class="fa-solid fa-right-long"></i>
                    </div>
                </div>
            </div>

           <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

            <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

           <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

           <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

            <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

           <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

           <div class="car-item">
    <div class="car-name">
        infinity g37
    </div>
    <div class="car-body-category">
        sedan
    </div>
    <div class="price">
        $<p>23</p><span>/day</span>
    </div>
    <div class="car-image">
        <img src="" alt="">
    </div>
    <div class="bottom-content">
        <div class="car-feature">
            <div class="feature-item">
                <i class="fa-solid fa-gear"></i>
                <span>auto</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-couch"></i>
                <span>2 seats</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-gas-pump"></i>
                <span>30 MPG</span>
            </div>
        </div>
        <div class="rent-button">
            rent now!<i class="fa-solid fa-right-long"></i>
        </div>
    </div>
</div>

        </div>
    </div>
</div>
    
</form>
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
