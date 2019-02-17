<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file="clock.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="testInclude.css">
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous">
</script>
<title>Insert title here</title>
</head>
<body>
	<hr>
	<div>
	Body Area Top in testInclude.jsp<br>
	<%@include file="included.jsp" %>
	Body Area Bottom in testInclude.jsp<br>
	</div>

</body>
</html>