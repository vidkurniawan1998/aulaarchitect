jQuery(document).ready(function($) {

	'use strict';
	$('#sidebar-button, #overlay').click(function() {
		$('.portfolio-full').removeClass('portfolio-open');
		$('#top').removeClass('portfolio-open');
		$('#sidebar-button').toggleClass('open');
		$('body').toggleClass('sidebar-open');
		return false;
	});

	$('#mainmenu ul > li:has(ul)').each(function() {
		$(this).addClass('expandable');
	});

	$('#mainmenu ul > li:has(ul) > a').click(function() {
		$(this).parent('li').toggleClass('expanded');
		$(this).parent('li').children('ul').slideToggle();
		return false;
	});

	var swiper = [];
	$('.swiper').each(function(i,obj){
		swiper[i] = new Swiper(obj, {
			loop: false,
			calculateHeight: true
		});
		$(this).children('.nav-left').on('click', function(e){
			e.preventDefault();
			swiper[i].swipePrev();
		});
		$(this).children('.nav-right').on('click', function(e){
			e.preventDefault();
			swiper[i].swipeNext();
		});
	});

	$(window).on('load', function(){
		swiper.forEach(function(entry) {
			window.setTimeout(function() { entry.resizeFix(); }, 500);
		});
	});
    var fSwiper = new Swiper('#fullscreen-slider',{
		onSwiperCreated: function() {
			if ($('#fullscreen-slider .swiper-slide-active').has('video').length) {
				$('#fullscreen-slider .swiper-slide-active video').get(0).play();
			}
		},
		onSlideChangeStart: function() {
			$('#fullscreen-slider .swiper-slide').each(function() {
				if ($(this).has('video').length) {
					$(this).children('video').get(0).pause();
				}
			});
			if ($('#fullscreen-slider .swiper-slide-active').has('video').length) {
				$('#fullscreen-slider .swiper-slide-active video').get(0).play();
			}
			if (fSwiper.activeIndex == 0) {
				$('#nav-arrows .nav-left').addClass('hidden');
			} else {
				$('#nav-arrows .nav-left').removeClass('hidden');
			}
			if (fSwiper.activeIndex == (fSwiper.slides.length - 1)) {
				$('#nav-arrows .nav-right').addClass('hidden');
			} else {
				$('#nav-arrows .nav-right').removeClass('hidden');
			}
		}
	});
	$('#nav-arrows .nav-left').on('click', function(e){
		e.preventDefault();
		fSwiper.swipePrev();
	});
	$('#nav-arrows .nav-right').on('click', function(e){
		e.preventDefault();
		fSwiper.swipeNext();
	});
	function resizeToCover() {
		$('#fullscreen-slider .swiper-slide').each(function() {
			if ($(this).has('video').length) {
				var vid_w_orig = parseInt($(this).find('video').attr('width'));
				var vid_h_orig = parseInt($(this).find('video').attr('height'));
				var container_w = $(this).width();
				var container_h = $(this).height();
				var scale_h =  container_w / vid_w_orig;
				var scale_v =  container_h / vid_h_orig;
				var scale = scale_h > scale_v ? scale_h : scale_v;
				$(this).find('video').width(scale * vid_w_orig);
				$(this).find('video').height(scale * vid_h_orig);
				$(this).find('video').css('left', ((container_w - scale * vid_w_orig) / 2));
				$(this).find('video').css('top', ((container_h - scale * vid_h_orig) / 2));
			}
		});
	}
	resizeToCover();

	$(window).resize(function() {
		resizeToCover();
	});

	$('#content').scroll(function(){
		// Add shadow to top header
		if ($('#content').scrollTop() > 0) {
			$('#top').addClass('shadow');
		} else {
			$('#top').removeClass('shadow');
		}
	});

	$('#contact-form').submit(function(e) {
        e.preventDefault();
        loading_start();
		$.post($('#contact-form').attr('action'), $(this).serialize(), function(data){
            loading_finish();
			if(data.status === 'error') {
                Object.keys(data.errors).forEach(function(key) {
                   $('#' + key + '-form .invalid-feedback').html(data.errors[key]);
                });
            } else {
                Swal.fire({
                    title : data.title,
                    text: data.message,
                    icon: data.icon,
                    });
                $('input').val('');
                $('textarea').val('');
                $('.invalid-feedback').html('');
            }
		});
		return false;
	});

	
});

$(window).load(function()
{	
	setTimeout(function() {
		if($('.masonry-2').length != 0) {
			$('.masonry-2').imagesLoaded(function(){
				$('.masonry-2').masonry({
					itemSelector: 'article',
					columnWidth: '.col-6'
				});
			});
		}
	
		if($('.masonry-3').length != 0) {
			$('.masonry-3').imagesLoaded(function(){
				$('.masonry-3').masonry({
					itemSelector: 'article',
					columnWidth: '.col-4'
				});
			});
		}
	
		if($('.masonry-3').length != 0) {
			$('.masonry-3').imagesLoaded(function(){
				$('.masonry-3').masonry({
					itemSelector: 'article',
					columnWidth: '.col-3'
				});
			});
		}
	},500);
});

// $('.image').imagesLoaded(function(){

// });

// $('.image').imagesLoaded()
//   .always( function( instance ) {
//     console.log('all images loaded');
//   })
//   .done( function( instance ) {
//     console.log('all images successfully loaded');
//   })
//   .fail( function() {
//     console.log('all images loaded, at least one is broken');
//   })
//   .progress( function( instance, image ) {
//     var result = image.isLoaded ? 'loaded' : 'broken';
//     console.log( 'image is ' + result + ' for ' + image.img.src );
//   });

// $(window).load(function()
// {	
// 	setTimeout(function() {
// 		if($('.masonry-2').length != 0) {
// 			$('.masonry-2').imagesLoaded(function(){
// 				$('.masonry-2').masonry({
// 					itemSelector: 'article',
// 					columnWidth: '.col-6'
// 				});
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').imagesLoaded(function(){
// 				$('.masonry-3').masonry({
// 					itemSelector: 'article',
// 					columnWidth: '.col-4'
// 				});
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').imagesLoaded(function(){
// 				$('.masonry-3').masonry({
// 					itemSelector: 'article',
// 					columnWidth: '.col-3'
// 				});
// 			});
// 		}
// 	},500);
// });


// $(window).load(function()
// {	
// 	setTimeout(function() {
// 		if($('.masonry-2').length != 0) {
// 			$('.masonry-2').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-6'
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-4'
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-3'
// 			});
// 		}
// 	},500);
// });

// $(window).load(function()
// {	
// 		if($('.masonry-2').length != 0) {
// 			$('.masonry-2').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-6'
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-4'
// 			});
// 		}
	
// 		if($('.masonry-3').length != 0) {
// 			$('.masonry-3').masonry({
// 				itemSelector: 'article',
// 				columnWidth: '.col-3'
// 			});
// 		}
// });

function loading_start() {
    $('.container-loading').removeClass('hide').fadeIn('fast');
}

function loading_finish() {
    $('.container-loading').fadeOut('fast').addClass('hide');
}

// function add_custom_load_refresh()
// {
// 	if($('.masonry-2').length != 0) {
// 		$('.masonry-2').masonry({
// 			itemSelector: 'article',
// 			columnWidth: '.col-6'
// 		});
// 	}
	
// 	if($('.masonry-3').length != 0) {
// 		$('.masonry-3').masonry({
// 			itemSelector: 'article',
// 			columnWidth: '.col-4'
// 		});
// 	}

// 	if($('.masonry-4').length != 0) {
// 		$('.masonry-3').masonry({
// 			itemSelector: 'article',
// 			columnWidth: '.col-3'
// 		});
// 	}
// }