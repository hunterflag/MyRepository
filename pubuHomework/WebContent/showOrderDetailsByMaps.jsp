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
	
	<c:forEach items="${oddts }" var="oddt" >
	<TR>
	<TH>${oddt.oddt_id}
	<TH>${oddt.od_id}
	<TH>${oddt.ctm_account}
	<TH>${oddt.pd_name}
	<TH>${oddt.pd_price}
	<TH>${oddt.oddt_price}
	<TH>${oddt.oddt_number}
	<TH>${oddt.sub_total_price}
	</c:forEach>
	
	<TR><TH colspan=4>總價 <TD colspan=4> ${od_price}
	</table>
</body>
</html>