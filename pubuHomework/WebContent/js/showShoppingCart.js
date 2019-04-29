$(document).ready(function(){
	$("#btnClear").click(function(){
		var urlString = "doClearShoppingCart";
		$.get(urlString, function(data, status){
			if (status == "success"){
				todo(data);
				location.reload();
			}
		});
	});

	$("#btnOrder").click(function(){
		todo("btnOrder");
		
		var urlString = "doShoppingCartConfirmOrder";
		$.get(urlString, function(data, status){
			if (status == "success"){
				todo(data);
				location.reload();
			}
		});
	});
	
});

//function updateShoppingCart(pd_id){
//	todo(pd_id, "updateShoppingCart");	
//}

function removeFromShoppingCart(pd_id){
	var urlString = "doRemoveFromShoppingCart?pd_id=" + pd_id ;
	$.get(urlString, function(data, status){
		if (status == "success"){
			todo(data);
			location.reload();
		}
	});
}
