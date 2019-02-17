<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="testBean.css">
<title>testBean.jsp</title>
</head>
<body>
<jsp:useBean id="MemberBean"
	class="tw.idv.hunterchen.jsp.MemberBean"
	scope="page" >
</jsp:useBean>

Name:<jsp:getProperty property="name" name="MemberBean"/><br/>
Password:<jsp:getProperty property="password" name="MemberBean"/><br/>
Password:<jsp:getProperty property="password" name="MemberBean"/><br/>


<jsp:setProperty property="name" name="MemberBean" value="Franky"/>
<jsp:setProperty property="password" name="MemberBean" value="23456789"/>
Name:<jsp:getProperty property="name" name="MemberBean"/><br/>
Password:<jsp:getProperty property="password" name="MemberBean"/><br/>
<hr/>
<div>
	<span class="left">
	<jsp:include page="/jsp/TestInclude/clock.jsp" />
	</span>
	
	<span class="right">
	<jsp:include page="included.jsp" >
		<jsp:param value="123" name="code"/>
	</jsp:include>
	</span>
</div>

<%-- <jsp:forward page="included.jsp" > --%>
<%-- 	<jsp:param value="123" name="code"/> --%>
<%-- </jsp:forward> --%>
<%-- <jsp:forward page="/jsp/TestInclude/clock.jsp" /><br/> --%>

</body>

</html>