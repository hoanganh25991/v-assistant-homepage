document.addEventListener("DOMContentLoaded", function () {
  new Swiper(".swiper-container", {
    slidesPerView: 1, // Default to 1 slide per view
    spaceBetween: 20,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      640: {
        slidesPerView: 1, // 1 slide per view for screens <= 640px
        spaceBetween: 10,
      },
      768: {
        slidesPerView: 2, // 2 slides per view for screens <= 768px
        spaceBetween: 20,
      },
      1024: {
        slidesPerView: 3, // 3 slides per view for screens > 1024px
        spaceBetween: 30,
      },
    },
  });
});
