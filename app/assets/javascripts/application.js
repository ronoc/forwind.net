//= require jquery3
//= require vendor/featherlight
//= require vendor/featherlight.gallery

/**
 * forwind.net js
*/
$(function(){
    // featherlight (lightbox) gallery
    // See: https://github.com/noelboss/featherlight/#featherlight-gallery
    $('.gallery').featherlightGallery({
		previousIcon: '&#10094;',     /* Code that is used as previous icon */
		nextIcon: '&#10095;',         /* Code that is used as next icon */
		openSpeed:      250,                   /* Duration of opening animation */
		closeSpeed:     250,                   /* Duration of closing animation */
		galleryFadeIn: 250,          /* fadeIn speed when slide is loaded */
		galleryFadeOut: 250          /* fadeOut speed before slide is loaded */
    });
});
