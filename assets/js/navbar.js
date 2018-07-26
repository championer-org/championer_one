import $ from "jquery";
$(window).on ('scroll', function(){
  if ($(window).scrollTop() > 50) {
    $('nav').removeClass("transparent").addClass("teal darken-4");
    $('div.nav-wrap').addClass("navbar-fixed");
    $('#nav-mobile a').css("color", "#004d40");
  } else {
    $('nav').removeClass("teal darken-4 container").addClass("transparent");
    $('div.nav-wrap').removeClass("navbar-fixed teal darken-4");
  }
});
