<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contactUs.jsp</title>
</head>
<body>
	Thank You for Your Message!
	<!-------JavaScript線上寄信 START-------->
	<SCRIPT language="JavaScript">
		function validate() {
			if (document.forms[0].elements[0].value == "") {
				alert("「傳送者姓名」欄中不可為空白！");
				document.forms[0].elements[0].focus();
			} else if (document.forms[0].elements[1].value == ""
					|| (document.forms[0].elements[1].value.indexOf == -1 || document.forms[0].elements[1].value.indexOf == -1)) {
				alert("「傳送者電子郵件」欄不可為空白！");
				document.forms[0].elements[1].focus();
			} else if (document.forms[0].elements[1].value == ""
					|| (document.forms[0].elements[1].value.indexOf('@', 0) == -1 || document.forms[0].elements[1].value
							.indexOf('.', 0) == -1)) {
				alert("你所輸入的電子郵件不合法！");
				document.forms[0].elements[1].focus();
			} else if (document.forms[0].elements[3].value == "") {
				alert("「主旨」區域不可為空白！");
				document.forms[0].elements[3].focus();
			} else if (document.forms[0].elements[4].value == "") {
				alert("「留言內容」區域不可為空白！");
				document.forms[0].elements[4].focus();
			} else {
				alert("謝謝您已完成傳送！");
				return true;
			}
			return false;
		}
	</SCRIPT>
	
	<form method="POST" action="https://formspree.io/hunterflag@gmail.com">
  <input type="email" name="email" placeholder="Your email">
  <textarea name="message" placeholder="Test Message"></textarea>
  <button type="submit">Send Test</button>
</form>
	//在 FORM action=mailto:hunterflag@gmail.com 修改收信者信箱
	<FORM action="https://formspree.io/hunterflag@gmail.com" encType="text/plain"
		method="post" onsubmit="return validate()">
		<table border="0" cellpadding="4" bgcolor="#6633FF">
			<tr>
				<td align="right">姓 名：</td>
				<td><input type="text" size="20" name="姓　　名："></td>
			</tr>
			<tr>
				<td align="right">電子信箱：</td>
				<td><input type="text" size="50" name="電子信箱："></td>
			</tr>
			<tr>
				<td align="right">性 別：</td>
				<td><select name="性　　別：" size="1"><option>先生</option>
						<option>小姐</option></select></td>
			</tr>
			<tr>
				<td align="right" valign="top">主 旨：</td>
				<td><input type="text" size="20" name="主　　旨："></td>
			</tr>
			<tr>
				<td align="right" valign="top">留言內容：</td>
				<td><textarea name="留言內容：" rows="6" cols="50"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="確定送出"><input type="reset"
			value="重新輸入">
	</form>
	<!-------JavaScript線上寄信 END-------->

</body>
</html>