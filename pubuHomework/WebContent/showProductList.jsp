<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, tw.idv.hunter.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/showProductList.js"></script>
<title>商品</title>
</head>
<body>
	<table border='1'>
	<TR>
	<TH>編號<TH>品名<TH>定價<TH>購物車
<%
	Connection conn = ConnectionFactory.getConnection();
	String qryStmt = "SELECT * FROM products ;";
	PreparedStatement stmt = conn.prepareStatement(qryStmt);
	ResultSet rs = stmt.executeQuery();
	while (rs.next()) {
		out.println("<TR>");
		out.println("<TD>" + rs.getString("pd_id"));
		out.println("<TD>" + rs.getString("pd_name"));
		out.println("<TD>" + rs.getString("pd_price"));
		out.println("<TD>" + "<button onclick=\"addToShoppingCart(" 
						   + rs.getString("pd_id") + ", " 
						   + rs.getString("pd_price") 
						   + ")\">加入</button>");
	}
%>
	</table>
	
	<hr/>
	<jsp:include page="/showShoppingCart.jsp" ></jsp:include>

</body>
</html>