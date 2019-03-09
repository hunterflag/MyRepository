<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- for jQuery Start -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/comApply.js"></script>
<link rel="stylesheet" href="css/comApply.css">

<title>comApply.jsp</title>
</head>
<body>
	<form action="#" method="POST">
		<fieldset>
			<legend>廠商申請</legend>
					歡迎申請, 
					1.請填寫下列表格,
					2.送出後請到eMail收件匣檢查, 確實收到本站的回擲信件
					3.24小時內, 將有專員與您聯繫!
			<table>
				<tr>
					<th>提示
					<th>標題
					<th>填值
				</tr>
				<tr>
					<td>
					<td><label for="acc">登入帳號(公司統編)：</label> 
					<td><input type="text" name="acc" id="acc" placeholder="必填, 共8碼數字 " /> 
				<tr>
					<td><span id="msgPwdOK" class="msg"><img src="images/match.png" class="icon">格式符合</span> 
						<span id="msgPwdErrUpper" class="msg"><img src="images/notMatch.jpeg" class="icon">至少 1 個大寫字母</span> 
						<span id="msgPwdErrLower" class="msg"><img src="images/notMatch.jpeg" class="icon">至少 1 個小寫字母</span> 
						<span id="msgPwdErrNumber" class="msg"><img src="images/notMatch.jpeg" class="icon">至少 1 個數字</span> 
						<span id="msgPwdErrSign" class="msg"><img src="images/notMatch.jpeg" class="icon">至少 1 個特殊符號(!@#$%^&*)</span>
						<span id="msgPwdErrWhiteSpace" class="msg"><img src="images/notMatch.jpeg" class="icon">不能有空格</span> 
						<span id="msgPwdErrCounter" class="msg"><img src="images/notMatch.jpeg" class="icon"> 需 6 字以上</span>
					<td><label for="pwd">密碼：</label> 
					<td><input type="text" name="pwd" id="pwd" placeholder="必填, 共8碼數字 " /> 
					<td>
				<tr>
					<td>
						<span id="msgNameOK" class="msg"><img src="images/match.png" class="icon"> 格式符合</span> 
						<span id="msgNameErrEmpty" class="msg"><img src="images/notMatch.jpeg" class="icon"> 不可空白</span> 
						<span id="msgNameErrCounter" class="msg"><img src="images/notMatch.jpeg" class="icon"> 需 2 字以上</span> 
						<span id="msgNameErrChinese" class="msg"><img src="images/notMatch.jpeg" class="icon">中文限定</span>
					<td><label for="name">公司名稱：</label> 
					<td><input type="text" name="name" id="name" placeholder="必填" /> 
				<tr>
					<td>
					<td><label for="principal">負責人：</label> 
					<td><input type="text" name="principal" id="principal" placeholder="必填" /> 
				<tr>
					<td>
					<td><label for="phone">電話：</label> 
					<td><input type="text" name="phone" id="phone" placeholder="必填" /> 
				<tr>
					<td>
					<td><label for="add">住址：</label> 
					<td><input type="text" name="add" id="add" placeholder="必填" /> 
				<tr>
					<td>
					<td><label for="mail">eMail：</label> 
					<td><input type="text" name="mail" id="mail" placeholder="必填" /> 
				<tr>
					<td>
					<td><label for="web">網站：</label> 
					<td><input type="text" name="web" id="web" placeholder="必填" /> 
			</table>	
		</fieldset>
			<hr>
			<input type="submit" id="submit" value="送出"> <input
				type="reset" id="reset" value="清除">
	</form>
</body>
</html>