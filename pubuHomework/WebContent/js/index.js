$(document).ready(function(){
//	$("#btnLogout").attr("disabled", true);
//	$("#btnShowShoppingCart").attr("disabled", true);
//	$("#btnShowOrder").attr("disabled", true);
//	
	$("#btnHome").click(function(){
		todo("btnHome");
	});
	
	$("#btnLogin").click(function(){
		window.open('login.jsp');
		todo("btnLogin");
	});
	
	$("#btnLogout").click(function(){
		todo('btnLogout');
		window.open('Logout.do');
	});
	
	$("#btnShowProductList").click(function(){
		todo("btnShowProductList");
		window.open("showProductList.jsp");
	});
	
	$("#btnShowShoppingCart").click(function(){
		todo("btnShowShoppingCart");
		window.open("showShoppingCart.jsp");
	});

//	XXX 無法在 .js 中使用 JSP EL?
//	$("#btnQueryLogin").click(function(){
//		todo("btnQueryLogin");
//		var logger = '<%=session.getAttribute("loginName")%>';
//		alert("登入者是:" + logger);
//	});
	
	$("#btnShowOrder").click(function(){
		todo("btnShowOrder");
		window.open("showOrders.jsp");
	});
	
	todo("index.js Loaded...");
});