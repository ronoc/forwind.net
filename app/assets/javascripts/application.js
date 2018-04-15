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
		galleryFadeIn: 100,          /* fadeIn speed when slide is loaded */
		galleryFadeOut: 300          /* fadeOut speed before slide is loaded */
    });
});
