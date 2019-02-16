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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  <link rel="stylesheet" href="/resources/demos/style.css"> -->
<!-- for jQuery End -->

<link rel="stylesheet" href="css/index.css" />
<script type="text/javascript" src="js/index.js"></script>
<title>我的履歷</title>
</head>
<body>
	<header>
			<div id="tabs-1"> 顯示選單<%@ include file="menu.jsp"%> </div>
		
<!-- 		<ul id="menu"> -->
<!-- 			<li class="ui-state-disabled"><div>Toys (n/a)</div></li> -->
<!-- 			<li><div>個人資料</div></li> -->
<!-- 			<li><div>履歷</div></li> -->
<!-- 			<li><div>Electronics</div> -->
<!-- 				<ul> -->
<!-- 					<li class="ui-state-disabled"><div>Home Entertainment</div></li> -->
<!-- 					<li><div>Car Hifi</div></li> -->
<!-- 					<li><div>Utilities</div></li> -->
<!-- 				</ul></li> -->
<!-- 			<li><div>Movies</div></li> -->
<!-- 			<li><div>Music</div> -->
<!-- 				<ul> -->
<!-- 					<li><div>Rock</div> -->
<!-- 						<ul> -->
<!-- 							<li><div>Alternative</div></li> -->
<!-- 							<li><div>Classic</div></li> -->
<!-- 						</ul></li> -->
<!-- 					<li><div>Jazz</div> -->
<!-- 						<ul> -->
<!-- 							<li><div>Freejazz</div></li> -->
<!-- 							<li><div>Big Band</div></li> -->
<!-- 							<li><div>Modern</div></li> -->
<!-- 						</ul></li> -->
<!-- 					<li><div>Pop</div></li> -->
<!-- 				</ul></li> -->
<!-- 			<li class="ui-state-disabled"><div>Specials (n/a)</div></li> -->
<!-- 		</ul> -->
	</header>
	<article>
		Article
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">履歷</a></li>
				<li><a href="#tabs-2">自傳</a></li>
				<li><a href="#tabs-3">聯絡資料</a></li>
			</ul>
			<div id="tabs-1"> 顯示履歷<%@ include file="tabs-1.jsp"%> </div>
			<div id="tabs-2"> 顯示自傳<%@ include file="tabs-2.jsp"%> </div>
			<div id="tabs-3"> 顯示聯絡資料<%@ include file="tabs-3.jsp"%> </div>
		</div>
	</article>
	<footer>footer</footer>
	  <b:if cond='data:blog.isMobile'> 
 <b:else/>
 <div id='gotop' ><center>^</center></div> 
 </b:if>
</body>
</html>