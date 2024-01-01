
//Car Filter

document.addEventListener("DOMContentLoaded", function () {
    const showButton = document.querySelectorAll(".show-button");

    showButton.forEach((btn) => {
        btn.addEventListener("click", function () {
            this.parentElement.parentElement.classList.toggle('show');
        })
    });

});

//Testimonial Page
var swiper = new Swiper(".mySwiper", {
    slidesPerView: 3,
    spaceBetween: 30,
    autoplay: {
        delay: 2500,
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
});




//Navbar Menu
