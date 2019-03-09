/**
 * 
 */
$(document).ready(function(){	
	$("#login").click(function(){
		$("#content").attr("src", "login.jsp");
	});
	
	$("#btn_signUp").click(function(){
		alert("btn_signUp");
		/* TODO 因為內層不認識外層的id, 不能呈現新網頁! */
		$("#content").attr("src", "signUp.jsp");
	});
	
	
	
});
