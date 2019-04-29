<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
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
	String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
	Connection conn = DriverManager.getConnection(connUrl);
	String qryStmt = "SELECT * FROM products ;";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(qryStmt);
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

</body>
</html>