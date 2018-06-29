import $ from "jquery"

const background_video = () => {

  console.log("Is background_video ran? Yes, if you see this in the console");
  
  initBannerVideoSize('.video-container .filter');

  $(window).on('resize', function() {

      scaleBannerVideoSize('.video-container .filter');
  });


  
  function initBannerVideoSize(element) {

      scaleBannerVideoSize(element);

  }
  
  function scaleBannerVideoSize(element) {

    var videoWidth = $('.video-container video').width();
    var videoHeight = $('.video-container video').height();

    $('.video-container .filter').width(videoWidth).height(videoHeight).css({'z-index': '100',
                                                                'position': 'absolute',
                                                                'background': 'rgba(0, 0, 0, 0.55)',
                                                                'width': '100%'});

  }
}

export default background_video;