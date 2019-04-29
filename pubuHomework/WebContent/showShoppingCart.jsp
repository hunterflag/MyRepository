<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/showShoppingCart.js"></script>
<script type="text/javascript" src="js/DevTools.js"></script>
<title>購物車</title>
</head>
<body>
	<table border='1'>
	<TR>
	<TH><TH>客戶<TH>品名<TH>售價<TH>數量<TH>小計
<%
	int ctm_id = 3;
 	ctm_id = Integer.valueOf(session.getAttribute("loginId").toString());

	String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
					+"?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
	Connection conn = DriverManager.getConnection(connUrl);
	
	String qryStmt = "SELECT  ctm.ctm_account, pd.pd_name, sc.sc_price, sc.sc_number, pd.pd_id "
// 	String qryStmt = "SELECT  *"
				   + "FROM shopping_carts AS sc " 
		  		   + "JOIN customers AS ctm ON sc.ctm_id = ctm.ctm_id " 
		  		   + "JOIN products AS pd ON sc.pd_id = pd.pd_id "
		  		   + "WHERE ctm.ctm_id=? "
		  	   	   + "ORDER BY pd.pd_name;";
	PreparedStatement pstmt = conn.prepareStatement(qryStmt);
	pstmt.setInt(1, ctm_id);
	ResultSet rs = pstmt.executeQuery();
	
	int total_price=0;
	while (rs.next()) {
		out.println("<TR><form action='doUpdateShoppingCart'>");
		out.println("<TD>" + "<button type='button' onclick=\"removeFromShoppingCart(" + rs.getString("pd.pd_id") + ")\">移除</button>");
		out.println("<TD><input name='ctm_id' type='hidden' value='" + ctm_id + "'/>" + rs.getString("ctm.ctm_account"));
		out.println("<TD><input name='pd_id' type='hidden' value='" + rs.getString("pd.pd_id") + "'/>" + rs.getString("pd.pd_name"));
		out.println("<TD>" + rs.getString("sc.sc_price"));
		out.println("<TD><input name='sc_number' type='number' min=1  value=" + rs.getString("sc.sc_number") +" />"
				   +"<input type='submit' value='修改' />");
		int sub_total_price = rs.getInt("sc.sc_price")*rs.getInt("sc.sc_number"); 
		out.println("<TD>" + sub_total_price );
		out.println("</form></TR>");
		total_price = total_price + sub_total_price;
	}
	out.println("<TR><TH colspan=4>總價 <TD colspan=2>" +total_price );
%>
	</table>
	
	<button id="btnClear">全部清除</button>
	<button id="btnOrder">確認結帳</button>

</body>
</html>