$(document).ready(function(){

	$('.home-promo-boxgrid.captionfull').hover(function(){
		$(".cover", this).stop().animate({top:'120px'},{queue:false,duration:160});
	}, function() {
		$(".cover", this).stop().animate({top:'242px'},{queue:false,duration:160});
	});
	
	$('.home-podcast-boxgrid.podcast-captionfull').hover(function(){
		$(".podcast-cover", this).stop().animate({top:'60px'},{queue:false,duration:160});
	}, function() {
		$(".podcast-cover", this).stop().animate({top:'121px'},{queue:false,duration:160});
	});

});

	
	
  
	



