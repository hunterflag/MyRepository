$(document).ready(function(){
	$("#btnClear").click(function(){
		var urlString = "doClearShoppingCart";
		$.get(urlString, function(data, status){
			if (status == "success"){
				location.reload();
			}
		});
	});

	$("#btnOrder").click(function(){
		var urlString = "doShoppingCartConfirmOrder";
		$.get(urlString, function(data, status){
			if (status == "success"){
				location.reload();
			}
		});
	});
	
});

function removeFromShoppingCart(pd_id){
	var urlString = "doRemoveFromShoppingCart?pd_id=" + pd_id ;
	$.get(urlString, function(data, status){
		if (status == "success"){
			todo(data);
			location.reload();
		}
	});
}
