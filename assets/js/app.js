// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"
import $ from "jquery"
import JQuery from "jquery"
// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
export var Background = {
  run: $( document ).ready(function() {

      scaleVideoContainer();

      initBannerVideoSize('.video-container .poster img');
      initBannerVideoSize('.video-container .filter');
      initBannerVideoSize('.video-container video');

      $(window).on('resize', function() {
          scaleVideoContainer();
          scaleBannerVideoSize('.video-container .poster img');
          scaleBannerVideoSize('.video-container .filter');
          scaleBannerVideoSize('.video-container video');
      });

  });

  function scaleVideoContainer() {

      var height = $(window).height() + 5;
      var unitHeight = parseInt(height) + 'px';
      $('.homepage-hero-module').css('height',unitHeight);

  }

  function initBannerVideoSize(element){

      $(element).each(function(){
          $(this).data('height', $(this).height());
          $(this).data('width', $(this).width());
      });

      scaleBannerVideoSize(element);

  }

  function scaleBannerVideoSize(element){

      var windowWidth = $(window).width(),
      windowHeight = $(window).height() + 5,
      videoWidth,
      videoHeight;

      // console.log(windowHeight);

      $(element).each(function(){
          var videoAspectRatio = $(this).data('height')/$(this).data('width');

          $(this).width(windowWidth);

          if(windowWidth < 1000){
              videoHeight = windowHeight;
              videoWidth = videoHeight / videoAspectRatio;
              $(this).css({'margin-top' : 0, 'margin-left' : -(videoWidth - windowWidth) / 2 + 'px'});

              $(this).width(videoWidth).height(videoHeight);
          }

          $('.homepage-hero-module .video-container video').addClass('fadeIn animated');

      });
  }
}
