$(document).ready(function(){
   
    $(window).scroll(function(){
        
        if ($(window).scrollTop() > 970) {
            $('.navbar').addClass('navbar-fixed-top');
        }
        if ($(window).scrollTop() < 971) {
            $('.navbar').removeClass('navbar-fixed-top');
        }
        
    });  
});


$(".navbar-dark ul li a[href^='#']").on('click', function(e) {

   e.preventDefault();

   var hash = this.hash;

   $('html, body').animate({
       scrollTop: $(hash).offset().top
     }, 300, function(){

       window.location.hash = hash;
     });

});


$("#section-parallax .col-sm-8 a[href^='#']").on('click', function(e) {

   e.preventDefault();

   var hash = this.hash;

   $('html, body').animate({
       scrollTop: $(hash).offset().top
     }, 300, function(){

       window.location.hash = hash;
     });

});

$(".footer .scroll-to-top-button a[href^='#']").on('click', function(e) {

   e.preventDefault();

   var hash = this.hash;

   $('html, body').animate({
       scrollTop: $(hash).offset().top
     }, 300, function(){

       window.location.hash = hash;
     });

});



$('.js-wp-1').waypoint(function(direction) {
    $('.js-wp-1').addClass('animated fadeInDown');
}, {
    offset: '50%'
});


$('.js-wp-2').waypoint(function(direction) {
    $('.js-wp-2').addClass('animated fadeInLeft');
}, {
    offset: '50%'
});

$('.js-wp-3').waypoint(function(direction) {
    $('.js-wp-3').addClass('animated fadeInRight');
}, {
    offset: '50%'
});

$('.js-wp-4').waypoint(function(direction) {
    $('.js-wp-4').addClass('animated fadeInUp');
}, {
    offset: '50%'
});

$('.js-wp-5').waypoint(function(direction) {
    $('.js-wp-5').addClass('animated fadeInUp');
}, {
    offset: '70%'
});
$('.js-wp-6').waypoint(function(direction) {
    $('.js-wp-6').addClass('animated fadeInUp');
}, {
    offset: '60%'
});

$('.js-wp-6-1').waypoint(function(direction) {
    $('.js-wp-6-1').addClass('animated fadeInLeft');
}, {
    offset: '60%'
});
$('.js-wp-7').waypoint(function(direction) {
    $('.js-wp-7').addClass('animated fadeInUp');
}, {
    offset: '90%'
});
$('.js-wp-7-1').waypoint(function(direction) {
    $('.js-wp-7-1').addClass('animated fadeInRight');
}, {
    offset: '90%'
});
$('.js-wp-8').waypoint(function(direction) {
    $('.js-wp-8').addClass('animated fadeInUp');
}, {
    offset: '80%'
});

$('.js-wp-8-1').waypoint(function(direction) {
    $('.js-wp-8-1').addClass('animated fadeInLeft');
}, {
    offset: '80%'
});









































