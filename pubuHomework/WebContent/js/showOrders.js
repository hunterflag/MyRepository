function showOrderDetails(od_id){
//	window.open("showOrderDetails.jsp?od_id=" + od_id);
		
//	var urlString = "doShowOrderDetails?od_id=" + od_id;
	var urlString = "showOrderDetails.jsp?od_id=" + od_id;
	$.get(urlString, function(data, status){
		if(status == "success"){
			$("#areaShowOrderDetails").html(data);
		}
	});
}
	