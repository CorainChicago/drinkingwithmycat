$(document).ready(function() {

  $(window).scroll(function () {  
    if ($(window).scrollTop() > 280) {
      $('.home h1').addClass('first_position');
    }
    if ($(window).scrollTop() > 281) {
      $('.home h1').removeClass('first_position');
      $('.home h1').addClass('second_position');
    }
    
  });
});