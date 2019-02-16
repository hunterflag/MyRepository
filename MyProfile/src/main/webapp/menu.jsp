<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  <link rel="stylesheet" href="/resources/demos/style.css"> -->
<!-- for jQuery End -->

<title>顯示選單</title>
</head>
<body>
<ul id="menu">
			<li class="ui-state-disabled"><div>Toys</div></li>
			<li><div>網站說明</div></li>
			<li><div>實驗室</div></li>
			<li><div>教學</div>
				<ul>
					<li class="ui-state-disabled"><div>Home Entertainment</div></li>
					<li><div>Car Hifi</div></li>
					<li><div>Utilities</div></li>
				</ul></li>
			<li><div>Movies</div></li>
			<li><div>Music</div>
				<ul>
					<li><div>Rock</div>
						<ul>
							<li><div>Alternative</div></li>
							<li><div>Classic</div></li>
						</ul></li>
					<li><div>Jazz</div>
						<ul>
							<li><div>Freejazz</div></li>
							<li><div>Big Band</div></li>
							<li><div>Modern</div></li>
						</ul></li>
					<li><div>Pop</div></li>
				</ul></li>
			<li class="ui-state-disabled"><div>Specials (n/a)</div></li>
		</ul>

</body>
</html>