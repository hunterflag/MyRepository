<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap Start -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" -->
<!-- 	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" /> -->
<!-- <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<!-- for Bootstrap End -->

<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  <link rel="stylesheet" href="/resources/demos/style.css"> -->
<!-- for jQuery End -->

<link rel="stylesheet" href="css/index.css" />
<script type="text/javascript" src="js/index.js"></script>
<title>我的履歷</title>
</head>
<body>
	<header>
		<div id="tabs-1">
			顯示選單<%@ include file="menu.jsp"%>
		</div>
	</header>
	<article>
		Article
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">履歷</a></li>
				<li><a href="#tabs-2">自傳</a></li>
				<li><a href="#tabs-3">聯絡資料</a></li>
			</ul>
			<div id="tabs-1">
				顯示履歷<%@ include file="tabs-1.jsp"%>
			</div>
			<div id="tabs-2">
				顯示自傳<%@ include file="tabs-2.jsp"%>
			</div>
			<div id="tabs-3">
				顯示聯絡資料<%@ include file="tabs-3.jsp"%>
			</div>
		</div>
	</article>
	<footer>
		footer
	</footer>
</body>
</html>