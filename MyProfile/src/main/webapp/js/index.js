/**
 * 
 */
alert("index.js start!");

$(function() {
	$("#menu").menu();
	$("#tabs").tabs();

	<!--Start:插入TOP套件-->
	$("#gotop").click(function(){
		jQuery("html,body").animate({
			scrollTop:0
		},1000);
	});
	$(window).scroll(function() {
		if ( $(this).scrollTop() > 300){
			$('#gotop').fadeIn("fast");
		} else {
			$('#gotop').stop().fadeOut("fast");
		}
	});
	<!--END:插入TOP套件-->
	
});
