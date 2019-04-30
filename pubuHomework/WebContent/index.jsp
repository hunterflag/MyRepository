<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"></script> -->
<!-- <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script> -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<script type="text/javascript" src="js/DevTools.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<title>測試首頁</title>
</head>
<body>
	<header>
	<nav>
		<button id="btnHome">首頁</button>
		<button id="btnLogin">登入</button>
		<button id="btnLogout">登出</button>
	</nav>	
	<nav>
		<button id="btnShowProductList">商品</button>
		<button id="btnShowShoppingCart">購物車</button>
		<button id="btnShowOrder">訂購單</button>		
	</nav>		
	</header>
	
	<div>
		ID: ${loginId} 號<br/>
		 登入者: ${loginName}<br/> 
	</div>
	
<!-- 	<script type="text/javascript">  -->
<!-- // 		$(function() { -->
<!-- // 			$("#btnQueryLogin").click(function(){ -->
<!-- // 				console.log("btnQueryLogin"); -->
<%-- 				var logger = '<%=session.getAttribute("loginName")%>'; --%>
<!-- // 				alert("登入者是:" + logger);				 -->
<!-- // 			}); -->
<!-- // 			console.log("index.jsp Loaded..."); -->
<!-- // 		}); -->
		
<!-- 	</script> -->
</body>
</html>