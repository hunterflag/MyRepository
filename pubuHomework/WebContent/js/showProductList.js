function addToShoppingCart(pd_id, pd_price){
	var urlString = "doAddShoppingCart?pd_id=" + pd_id + "&pd_price=" + pd_price;

	$.get(urlString);
	
//	XXX 為何這樣不會動?	
//	$.ajax({
//		url: urlString ,
//		type: "GET"
//	});
}
	