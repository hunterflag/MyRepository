/**
 * 
 */
$(document).ready(function(){
	alert("index.jsp");
	/*
	$("#content").css("overflow", "hidden")
				 .bind("keydown keyup", function() {
					 $(this).height('0px')
					 		.height($(this)
			 				.prop("scrollHeight") + 'px');
			 	 }).keydown();
	*/
	/* 功能鈕設定區 */
	$("#logo").click(function(){
		$("#content").attr("src", "index_header.jsp");
	});
	
	$("#recipeList").click(function(){
		$("#content").attr("src", "recipeList.jsp");
	});
	
	$("#productList").click(function(){
		$("#content").attr("src", "productList.jsp");
	});
	
	$("#shoppingCart").click(function(){
		$("#content").attr("src", "shoppingCart.jsp");
	});
	
	$("#productList").click(function(){
		$("#content").attr("src", "productList.jsp");
	});
	
	
	$("#loginner").click(function(){
		$("#loginner").text("已登入");
		//Todo: 在session 中加入登入者的 member 物件
	});
	
	
	$("#login").click(function(){
		$("#content").attr("src", "login.jsp");
	});
	
	
	$("#contactUs").click(function(){
		$("#content").attr("src", "contactUs.jsp");
	});
	
});
