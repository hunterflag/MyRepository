<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int[] data={1, 2, 3, 4, 5, 6};
	for (int i=0; i<=6; i++){
		out.write("data[" + i + "]=" + data[i] + "<br>");
	}
%>

</body>
</html>