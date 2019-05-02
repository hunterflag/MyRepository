<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.servlet.http.*, tw.idv.hunter.*, org.json.*" %>
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
<script type="text/javascript" src="js/DevTools.js"></script>
<!-- <script type="text/javascript" src="js/xxx.js"></script> -->
<title>訂單明細</title>
</head>
<body>
	<table border='1'>
	<TR>
	<TH>單號<TH>訂單號<TH>客戶<TH>品名<TH>定價<TH>售價<TH>數量<TH>小計
	
<%
	JSONArray oddts = new JSONArray(request.getAttribute("oddts"));
	if(oddts != null && oddts.length() != 0){
		for(int i=0; i<oddts.length(); i++){
			JSONObject oddt = oddts.getJSONObject(i);
%>
	
	<c:forEach var="oddt" items="${oddts}">
	${oddt.od_id}<br/>
	</c:forEach>
<%
		}
	}
%>


<%-- 
<%

// 	int total_price=0;
// 	while (rs.next()) {
// 		out.println("<TR>");
// 		out.println("<TD>" + rs.getString("oddt.oddt_id"));
// 		out.println("<TD>" + rs.getString("od.od_id"));
// 		out.println("<TD>" + rs.getString("ctm.ctm_account"));
// 		out.println("<TD>" + rs.getString("pd.pd_name"));
// 		out.println("<TD>" + rs.getString("pd.pd_price"));
// 		out.println("<TD>" + rs.getString("oddt.oddt_price"));
// 		out.println("<TD>" + rs.getString("oddt.oddt_number"));
// 		int sub_total_price = rs.getInt("oddt.oddt_price")*rs.getInt("oddt.oddt_number"); 
// 		out.println("<TD>" + sub_total_price );
// 		out.println("</form></TR>");
// 		total_price += sub_total_price;
// 	}
%> 
--%>
	<TR><TH colspan=4>總價 <TD colspan=4> ${od_price}
	</table>
<hr />
全部:<br/>
${oddts}
<hr/>
dd

</body>
</html>