<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  <link rel="stylesheet" href="/resources/demos/style.css"> -->
<!-- for jQuery End -->

<title>顯示選單</title>
</head>
<body>
	<ul id="menu">
		<li><div><a href="/hello"><img alt="回頂" src="icon/md-airplane.svg" class="icon"></a></div></li>
		<li><div><img alt="主選單" src="icon/md-menu.svg" class="icon"></div>
			<ul>
				<li><div>登入</div></li>
				<li><div>註冊</div></li>
				<li><div>購物</div>
					<ul>
						<li><div><img alt="購物車" src="icon/md-cart.svg" class="icon"></div></li>
						<li><div>結帳</div></li>
						<li class="ui-state-disabled"><div>訂購紀錄</div></li>
					</ul></li>
				<li  class="ui-state-disabled"><div>社群</div>
					<ul>
						<li><div>分享</div>
						<li><div>收藏</div></li>
					</ul></li>
			</ul></li>
		<li><div><a href="./SayHello.do"><img alt="設定" src="icon/md-settings.svg" class="icon"></a></div></li>
	</ul>

</body>
</html>