<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/login.js"></script>
<link rel="stylesheet" href="css/login.css">

<title>login.jsp</title>
</head>
<body>
	<form action="#" method="POST">
		<fieldset>
			<legend>登入</legend>
			歡迎光臨! 
			<table>
				<tr>
					<td><label for="acc">帳號：</label>
					<td><input type="text" name="acc" id="acc" />
				<tr>
					<td><label for="pwd">密碼：</label>
					<td><input type="text" name="pwd" id="pwd" />
				<tr>
					<td><input type="submit" id="submit" value="送出"> 
					<td><input type="reset" id="reset" value="清除">
				<tr>
					<td colspan="2"><button id=""  >忘記密碼</button> 
				<tr>
					<td><button id="btn_signUp"  >會員註冊</button> 
					<td><button id="btn_comApply"  >廠商申請</button> 
					
			</table>
		</fieldset>
		<hr>
	</form>
</body>
</html>