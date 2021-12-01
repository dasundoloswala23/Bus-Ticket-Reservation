/*
 * Title:   Zone - Tours and Travel HTML Template
 * Author:  QTC Media
 */

/* --------------------------------------------------------
 [Table of contents]

 1. revolutionSlider
 2. fullNavToggler
 3. mobileNavToggler
 4. stickyHeader
 5. searchFrom
 6. famousSlider
 7. clientsSlider
 8. ourPartnersCarousel
 9. topLocationSlider
 10. reviewSlider
 11. stickyCheckOut
 12. galleryMember
 13. galleryWidget
 14. galleryMasonry
 15. contactFormValidation
 16. googleMap
 17. accrodion
 18. datetimePicker
 19. locationSlider
 20. productGridCarousel
 21. clients2Slider

 [End table of contents]
 ----------------------------------------------------------------------- */

"use strict"; // Start of use strict

function revolutionSlider() {
   if ($('.rev_slider_wrapper #slider1').length) {
      jQuery("#slider1").revolution({
         sliderType: "standard",
         sliderLayout: "auto",
         delay: 5000,
         navigation: {
            arrows: {enable: true}
         },
         gridwidth: 1170,
         gridheight: 680,
         fullWidth: "off",
         fullScreen: "on",
         fullScreenOffsetContainer: ""
      });
   }
   if ($('.rev_slider_wrapper #slider2').length) {
      jQuery("#slider2").revolution({
         sliderType: "standard",
         sliderLayout: "auto",
         delay: 5000,
         navigation: {
            arrows: {enable: true}
         },
         gridwidth: 1170,
         gridheight: 815,
         fullWidth: "off",
         fullScreen: "on",
         fullScreenOffsetContainer: "",
      });
   }
   if ($('.rev_slider_wrapper #slider3').length) {
      jQuery("#slider3").revolution({
         sliderType: "standard",
         sliderLayout: "auto",
         delay: 7000,
         gridwidth: 1200,
         gridheight: 815,
         fullWidth: "off",
         fullScreen: "on",
         fullScreenOffsetContainer: ""
      });
   }
}
function fullNavToggler() {
   if ($('#full-menu ul.nav').length) {
      $('#full-menu ul.nav li.has-submenu').children('a').append(function () {
         return '<button class="dropdown-expander"><i class="fa fa-bars"></i></button>';
      });
      $('#full-menu ul.nav li.has-submenu .dropdown-expander').on('click', function () {
         $(this).parent().parent().children('.submenu').slideToggle();
         console.log($(this).parents('li'));
         return false;
      });

   }
}
function mobileNavToggler() {
   if ($('.nav-holder').length) {
      $('.nav-holder .nav-header button.menu-expander').on('click', function () {
         $('.nav-holder .nav-footer').slideToggle();
         return false;
      });
      $('.nav-holder li.has-submenu').children('a').append(function () {
         return '<button class="dropdown-expander"><i class="fa fa-angle-down"></i></button>';
      });
      $('.nav-holder .nav-footer .dropdown-expander').on('click', function () {
         $(this).parent().parent().children('.submenu').slideToggle();
         $(this).find('i').toggleClass('fa-angle-down fa-angle-up');
         return false;
      });

   }
   if ($('.side-menu-wrapper').length) {
      $('.side-menu-wrapper button.expander').on('click', function () {
         $('.side-menu-wrapper').toggleClass('opened closed');
         $(this).find('i').toggleClass('fa-bars fa-close');
         return false;
      });
      $('button.side-menu-expander').on('click', function () {
         $('.side-menu-wrapper').toggleClass('opened closed');
         $('.side-menu-wrapper').find('button.expander i').toggleClass('fa-close fa-bars');
         return false;
      });
      $('.side-menu li.has-submenu').children('a').append(function () {
         return '<button class="dropdown-expander"><i class="fa fa-angle-down"></i></button>';
      });
      $('.side-menu ul.nav .dropdown-expander').on('click', function () {
         $(this).parent().parent().children('.submenu').slideToggle();
         $(this).find('i').toggleClass('fa-angle-down fa-angle-up');
         return false;
      });

   }
}
function stickyHeader() {
   if ($('.stricky').length) {
      if (!$('.stricky.home-two').length) {
         var strickyScrollPos = 100;
         if ($(window).scrollTop() > strickyScrollPos) {
            $('.stricky').removeClass('fadeIn animated');
            $('.stricky').addClass('stricky-fixed fadeInDown animated');
         } else if ($(this).scrollTop() <= strickyScrollPos) {
            $('.stricky').removeClass('stricky-fixed fadeInDown animated');
            $('.stricky').addClass('slideIn animated');
         }
      }
   }
   ;
}
function searchFrom() {
   if (('.form-search-wrap').length) {
      $('#search').on('click', function () {
         $('.form-search-wrap').slideDown();
      });
      $('.close-search').on('click', function () {
         $('.form-search-wrap').slideUp();
      });
   }
}
function famousSlider() {
   if (('.famous-locations').length) {
      $('.famous-slider').bxSlider({
         mode: 'fade',
         auto: false,
         autoControls: false
      });
   }
}
function clientsSlider() {
   if (('.clients-says').length) {
      $('.clients-slider').bxSlider({
         auto: true,
         autoControls: false,
         pagerCustom: '#clients-pager'
      });
   }
}
function ourPartnersCarousel() {
   if ($('.our-partners-carousel').length) {
      $('.our-partners-carousel .owl-carousel').owlCarousel({
         loop: true,
         margin: 0,
         nav: false,
         dots: false,
         autoplay: true,
         autoplayTimeout: 3000,
         autoplayHoverPause: true,
         responsive: {
            0: {
               items: 2
            },
            480: {
               items: 2
            },
            600: {
               items: 4
            },
            768: {
               items: 5
            },
            1000: {
               items: 6
            }
         }
      });
   }
}
function popularServicesCarousel() {
   if ($('.popular-services').length) {
      $('.popular-services .owl-carousel').owlCarousel({
         loop: true,
         margin: 30,
         nav: true,
         dots: false,
         autoplay: true,
         autoplayTimeout: 3000,
         autoplayHoverPause: true,
         navText: ["<i class='fa fa-angle-double-left'></i>", "<i class='fa fa-angle-double-right'></i>"],
         responsive: {
            0: {
               items: 1
            },
            480: {
               items: 1
            },
            600: {
               items: 2
            },
            768: {
               items: 2
            },
            1000: {
               items: 3
            }
         }
      });
   }
}
function topLocationSlider() {
   if (('.top-location').length) {
      $('.top-location .top-location-slider').owlCarousel({
         margin: 30,
         loop: true,
         autoWidth: true,
         items: 3,
         center: true,
         navText: [
            '<i class="control control-prev"></i>',
            '<i class="control control-next"></i>'
         ],
         dots: false,
         autoplayTimeout: 3000,
         nav: true,
         responsiveClass: true,
         responsive: {
            0: {
               items: 1,
               nav: false
            },
            480: {
               items: 1,
               nav: false
            },
            768: {
               items: 1,
               nav: true
            }
         }
      });
   }
}
function reviewSlider() {
   if (('.destination-rivew-wrap').length) {
      $('.destination-rivew-wrap .owl-carousel').owlCarousel({
         loop: true,
         items: 1,
         center: true,
         dots: true,
         autoplayTimeout: 3000,
         nav: false
      });
   }
}
function stickyCheckOut() {
   if ($('.checkout-sidebar-wrap').length) {
      $('.checkout-sidebar-wrap').stick_in_parent({
         offset_top: 100,
         parent: '.zt-container'
      });
   }
}
function galleryMember() {
   if ($('#gallerymember').length) {
      $('#gallerymember').lightGallery();
   }
}
function galleryWidget() {
   if ($('#gallerywidget').length) {
      $('#gallerywidget').lightGallery();
   }
}
function galleryMasonry() {
   if ($('.gallery-masonry').length) {
      $('.gallery-masonry .grid').masonry({
         itemSelector: '.grid-item'
      });
   }
}
function contactFormValidation() {

   if ($('.contact-form').length) {
      $('.contact-form').validate({// initialize the plugin
         rules: {
            name: {
               required: true
            },
            email: {
               required: true,
               email: true
            },
            message: {
               required: true
            }
         },
         submitHandler: function (form) {
            // sending value with ajax request
            $.post($(form).attr('action'), $(form).serialize(), function (response) {
               $(form).find('.response').append(response).css('display', 'block');
               $(form).find('input[type="text"]').val('');
               $(form).find('input[type="email"]').val('');
               $(form).find('textarea').val('');
            });
            return false;
         }
      });
   }
}
function googleMap() {
   if ($('.google-map').length) {
      $('.google-map').each(function () {
         // getting options from html
         var mapLat = $(this).data('map-lat');
         var mapLng = $(this).data('map-lng');
         var iconPath = $(this).data('icon-path');
         var mapZoom = $(this).data('map-zoom');
         var mapTitle = $(this).data('map-title');
         var markers = $(this).data('markers');

         // if zoom not defined the zoom value will be 15;
         if (!mapZoom) {
            var mapZoom = 15;
         }
         // init map
         var uluru = {lat: parseInt(mapLat), lng: parseInt(mapLng)};
         var contentString = '<h1 class="heading-map">' + mapTitle + '</h1>' +
                 '<div class="content-map">' + markers +
                 '</div>';
         $(this).gmap3({
            zoom: mapZoom,
            center: uluru,
            scrollwheel: false,
            styles: [
               {
                  featureType: 'all',
                  stylers: [
                     {saturation: -80}
                  ]
               }, {
                  featureType: 'road.arterial',
                  elementType: 'geometry',
                  stylers: [
                     {hue: '#00ffee'},
                     {saturation: 50}
                  ]
               }, {
                  featureType: 'poi.business',
                  elementType: 'labels',
                  stylers: [
                     {visibility: 'off'}
                  ]
               }
            ]
         }).marker({
            position: uluru,
            title: mapTitle,
            options: {
               icon: new google.maps.MarkerImage(iconPath)
            }
         }).infowindow({
            content: contentString
         }).then(function (infowindow) {
            var map = this.get(0);
            var marker = this.get(1);
            marker.addListener('click', function () {
               infowindow.open(map, marker);
            });
         });
      });
   }
   ;
}
function accrodion() {
   if ($('.why-choose-us').length) {
      $('.why-choose-us .faq-accrodion').accordion({
         icons: {"header": "ui-icon-plus", "activeHeader": "ui-icon-minus"}
      });
   }
}
function datetimePicker() {
   if ($('.filter-box').length) {
      $('.datetimepicker').datetimepicker({
         timepicker: false,
         format: 'm/d/Y',
         formatDate: 'Y/m/d',
         minDate: '2000/01/02',
         maxDate: '3000/01/02'
      });
   }
}
function locationSlider() {
   if (('.location').length) {
      $('.location .location-slider').owlCarousel({
         margin: 0,
         loop: true,
         autoplayHoverPause: true,
         items: 1,
         dots: true,
         autoplayTimeout: 3000,
         nav: false,
         responsiveClass: true,
         responsive: {
            0: {
               items: 1,
               nav: false
            },
            480: {
               items: 1,
               nav: false
            },
            768: {
               items: 1,
               nav: true
            }
         }
      });
   }
}
function productGridCarousel() {
   if ($('.product-grid').length) {
      $('.product-grid .owl-carousel').owlCarousel({
         loop: true,
         margin: 30,
         nav: true,
         dots: false,
         autoplay: true,
         autoplayTimeout: 3000,
         autoplayHoverPause: true,
         navText: ["<i class='fa fa-angle-double-left'></i>", "<i class='fa fa-angle-double-right'></i>"],
         responsive: {
            0: {
               items: 1
            },
            480: {
               items: 1
            },
            600: {
               items: 2
            },
            768: {
               items: 3
            },
            1000: {
               items: 4
            }
         }
      });
   }
}
function clients2Slider() {
   if (('.clients-says-2').length) {
      $('.clients-says-slider').bxSlider({
         mode: 'fade',
         auto: false,
         autoControls: false
      });
   }
}
// instance of fuction while Document ready event
jQuery(document).on('ready', function () {
   (function ($) {
      revolutionSlider();
      fullNavToggler();
      mobileNavToggler();
      stickyHeader();
      searchFrom();
      famousSlider();
      clientsSlider();
      ourPartnersCarousel();
      topLocationSlider();
      reviewSlider();
      stickyCheckOut();
      galleryMember();
      galleryWidget();
      contactFormValidation();
      googleMap();
      accrodion();
      popularServicesCarousel();
      datetimePicker();
      locationSlider();
      productGridCarousel();
      clients2Slider();
   })(jQuery);
});
// instance of fuction while Window Load event
jQuery(window).on('load', function () {
   (function ($) {
      galleryMasonry();
   })(jQuery);
});
// instance of fuction while Window Scroll event
jQuery(window).on('scroll', function () {
   (function ($) {
      stickyHeader();
   })(jQuery);
});