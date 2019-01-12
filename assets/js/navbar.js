import $ from "jquery";
$(window).on ('scroll', function(){
  if ($(window).scrollTop() > 50) {
    // $('nav').addClass("teal darken-4");
    // $('div.nav-wrap').addClass("navbar-fixed");
    // $('#nav-mobile a').css("color", "#DED91C");
    // } else {
    // $('nav').removeClass("container").addClass(newFunction());
    // $('div.nav-wrap').removeClass("navbar-fixed teal darken-4");
  }
});

$(document).ready(function(){
  $('.sidenav').sidenav();
});

