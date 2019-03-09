<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" href="css/index.css" />

<title>真．愛料理</title>
</head>
<body>

	<header>
	Header
		<table>
			<tr>
				<td id="logo" >首頁</td> 
				<td id="recipeList">食譜</td> 
				<td id="productList">商品</td> 
				<td id="shoppingCart">購物車</td> 
				<td id="loginner">過路客</td> 
				<td id="login">登入/註冊</td> 
			</tr>
		</table>
	</header>
	
	<iframe id="content" src="index_body.jsp" frameborder="0"></iframe>
	
	<footer>
		Footer
		<table id="contactUs">
			<tr>
				<td>真。愛料理股份有限公司(不是愛料理)</td>
				<td >聯繫我們</td>
			</tr>
		</table>
	</footer>
		
</body>
</html>