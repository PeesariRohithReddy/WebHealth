$(document).ready(function(){
	$("a.mobile").click(function(){
		$(".sidebar").slideToggle('fast');
	});
	window.onresize = function(event){
		alert($(window).width());
	};
	});