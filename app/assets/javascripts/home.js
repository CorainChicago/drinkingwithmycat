$(document).ready(function() {

  $(window).scroll(function () {  
    if ($(window).scrollTop() > 280) {
      $('.home h1').addClass('first_position');
    }
    if ($(window).scrollTop() > 281) {
      $('.home h1').remove();
      console.log($( ".navbar-brand" ).length);
      if( $( ".navbar-brand" ).length == 0 ){
        $('ul').append("<a class='navbar-brand' href='#''>Drinking With My Cat</a>");
      }
    }
    
  });
});