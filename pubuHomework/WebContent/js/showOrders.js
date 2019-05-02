function showOrderDetails(od_id){
	var urlString = "showOrderDetails.jsp?od_id=" + od_id;
	$.get(urlString, function(data, status){
		if(status == "success"){
			$("#areaShowOrderDetails").html(data);
		}
	});
}

function getOrderDetails(od_id){
//	todo("getOrderDetails!", "load...");
//	window.open("showOrderDetails.jsp?od_id=" + od_id);
	
//	var urlString = "doShowOrderDetails?od_id=" + od_id;
//	var urlString = "showOrderDetails.jsp?od_id=" + od_id;
	var urlString = "getOrderDetailsByMaps.do?od_id=" + od_id;
	$.get(urlString, function(data, status){
//		todo("getOrderDetails!", "get...");
		if(status == "success"){
//			todo("getOrderDetails!", "get success...");
			$("#areaShowOrderDetails").html(data);
		}
	});
}
	