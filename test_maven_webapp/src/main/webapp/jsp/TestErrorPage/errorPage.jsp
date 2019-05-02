<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	錯誤訊息：<br/>
	<%=exception %><p>
	顯示例外堆疊訊息<br/>
	<%
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>