<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.servlet.http.*, tw.idv.hunter.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/DevTools.js"></script>
<!-- <script type="text/javascript" src="js/xxx.js"></script> -->
<title>訂單明細</title>
</head>
<body>
	<table border='1'>
	<TR>
	<TH>單號<TH>訂單號<TH>客戶<TH>品名<TH>定價<TH>售價<TH>數量<TH>小計
<%
	int od_id = Integer.valueOf(request.getParameter("od_id"));
 	int ctm_id = Integer.valueOf(session.getAttribute("loginId").toString());

// 	String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
// 					+"?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
// 	Connection conn = DriverManager.getConnection(connUrl);
	Connection conn = ConnectionFactory.getConnection();
	
	String qryStmt = "SELECT oddt.oddt_id, od.od_id, ctm.ctm_account, pd.pd_name, pd.pd_price, oddt.oddt_price, oddt.oddt_number "
// 	String qryStmt = "SELECT  *"
				   + "FROM order_details AS oddt " 
		  		   + "JOIN products AS pd ON oddt.pd_id = pd.pd_id "
		  		   + "JOIN orders AS od ON od.od_id = oddt.od_id " 
		  		   + "JOIN customers AS ctm ON od.ctm_id = ctm.ctm_id " 
		  		   + "WHERE oddt.od_id=? "
		  	   	   + "ORDER BY pd.pd_name;";
	PreparedStatement pstmt = conn.prepareStatement(qryStmt);
	pstmt.setInt(1, od_id);
	ResultSet rs = pstmt.executeQuery();

	int total_price=0;
	while (rs.next()) {
		out.println("<TR>");
		out.println("<TD>" + rs.getString("oddt.oddt_id"));
		out.println("<TD>" + rs.getString("od.od_id"));
		out.println("<TD>" + rs.getString("ctm.ctm_account"));
		out.println("<TD>" + rs.getString("pd.pd_name"));
		out.println("<TD>" + rs.getString("pd.pd_price"));
		out.println("<TD>" + rs.getString("oddt.oddt_price"));
		out.println("<TD>" + rs.getString("oddt.oddt_number"));
		int sub_total_price = rs.getInt("oddt.oddt_price")*rs.getInt("oddt.oddt_number"); 
		out.println("<TD>" + sub_total_price );
		out.println("</form></TR>");
		total_price += sub_total_price;
	}
	out.println("<TR><TH colspan=4>總價 <TD colspan=4>" +total_price );
%>
	</table>
	
</body>
</html>