<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestimonialsPage.aspx.cs" Inherits="Car_Rental_Management_System.Pages.TestimonialPage" %>
<%@ Register Src="~/Component/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Navbar.css" rel="stylesheet" />
    <link href="../Component/Footer.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link href="../StyleSheets/TestimonialPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
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
    
    <div class="testimonial-page section" id="texti">

        <div class="head-title" data-small-title="Testimonials">
            What are the clients<br/> saying about us
        </div>

        <div class="testimonials-container swiper mySwiper ">
            <div class="testimonials-box swiper-wrapper">

                <div class="profile-box swiper-slide">
                    <div class="top-box">
                        <div class="profile-image">
                            <img src="?" alt="" />
                        </div>
                        <div class="profile-info">
                            <div class="profile-name">
                                lina
                            </div>
                            <div class="profile-job">
                                creator
                            </div>
                        </div>
                    </div>
                    <div class="middle-box">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Distinctio sint aut consequatur nostrum,
                        repellat architecto id iusto itaque quo officiis
                        ullam, accusamus eum nulla, minima voluptate dolores
                        magni aspernatur molestias.
                    </div>

                    <div class="bottom-box">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>

                </div>
                <div class="profile-box swiper-slide">
    <div class="top-box">
        <div class="profile-image">
            <img src="?" alt="" />
        </div>
        <div class="profile-info">
            <div class="profile-name">
                lina
            </div>
            <div class="profile-job">
                creator
            </div>
        </div>
    </div>
    <div class="middle-box">
        Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Distinctio sint aut consequatur nostrum,
        repellat architecto id iusto itaque quo officiis
        ullam, accusamus eum nulla, minima voluptate dolores
        magni aspernatur molestias.
    </div>

    <div class="bottom-box">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
    </div>

</div>
                <div class="profile-box swiper-slide">
                    <div class="top-box">
                        <div class="profile-image">
                            <img src="?" alt="" />
                        </div>
                        <div class="profile-info">
                            <div class="profile-name">
                                lina
                            </div>
                            <div class="profile-job">
                                creator
                            </div>
                        </div>
                    </div>
                    <div class="middle-box">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Distinctio sint aut consequatur nostrum,
                        repellat architecto id iusto itaque quo officiis
                        ullam, accusamus eum nulla, minima voluptate dolores
                        magni aspernatur molestias.
                    </div>

                    <div class="bottom-box">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>

                </div>
                <div class="profile-box swiper-slide">
    <div class="top-box">
        <div class="profile-image">
            <img src="?" alt="" />
        </div>
        <div class="profile-info">
            <div class="profile-name">
                lina
            </div>
            <div class="profile-job">
                creator
            </div>
        </div>
    </div>
    <div class="middle-box">
        Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Distinctio sint aut consequatur nostrum,
        repellat architecto id iusto itaque quo officiis
        ullam, accusamus eum nulla, minima voluptate dolores
        magni aspernatur molestias.
    </div>

    <div class="bottom-box">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
    </div>

</div>
                                <div class="profile-box swiper-slide">
                    <div class="top-box">
                        <div class="profile-image">
                            <img src="?" alt="" />
                        </div>
                        <div class="profile-info">
                            <div class="profile-name">
                                lina
                            </div>
                            <div class="profile-job">
                                creator
                            </div>
                        </div>
                    </div>
                    <div class="middle-box">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Distinctio sint aut consequatur nostrum,
                        repellat architecto id iusto itaque quo officiis
                        ullam, accusamus eum nulla, minima voluptate dolores
                        magni aspernatur molestias.
                    </div>

                    <div class="bottom-box">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </div>

                </div>
                <div class="profile-box swiper-slide">
    <div class="top-box">
        <div class="profile-image">
            <img src="?" alt="" />
        </div>
        <div class="profile-info">
            <div class="profile-name">
                lina
            </div>
            <div class="profile-job">
                creator
            </div>
        </div>
    </div>
    <div class="middle-box">
        Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Distinctio sint aut consequatur nostrum,
        repellat architecto id iusto itaque quo officiis
        ullam, accusamus eum nulla, minima voluptate dolores
        magni aspernatur molestias.
    </div>

    <div class="bottom-box">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
    </div>

</div>

                                                               
           </div>
            <div class="swiper-pagination"> </div>
        </div>
    </div>
    <uc1:Footer runat="server" ID="Footer" />
     <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            spaceBetween: 30,
            autoplay: {
                delay: 2500,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });</script>
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
