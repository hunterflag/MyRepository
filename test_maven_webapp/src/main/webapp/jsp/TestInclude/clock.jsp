<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("YYYY/MM/dd a hh:mm:ss");
		out.write("現在日期時間:");
		out.write(df.format(date) +"<br>");
	%>
	<%=new java.util.Date() %>
</body>
</html>