todo("showOrders.js", "Loading...");
function showOrderDetails(od_id){
	todo("showOrders.js -> showOrderDetails.jsp", "Loading...");
//	window.open("showOrderDetails.jsp?od_id=" + od_id);
	
	
//	var urlString = "doShowOrderDetails?od_id=" + od_id;
	var urlString = "showOrderDetails.jsp?od_id=" + od_id;
	$.get(urlString, function(data, status){
		todo("showOrders.js -> showOrderDetails.jsp -> .get()", "Loading...");
		if(status == "success"){
			$("#areaShowOrderDetails").html(data);
//			$("#areaShowOrderDetails").text(data);
		}
	});
	
	
	
//	XXX 為何這樣不會動?	
//	$.ajax({
//		url: urlString ,
//		type: "GET"
//	});
}
	