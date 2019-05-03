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
				alert("訂單成立!");
				window.close();
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

function updateShoppingCart(ctm_id, pd_id){
	var urlString = "UpdateShoppingCart.do"
	$.post(urlString, 
		  { "pd_id": pd_id,
		    "ctm_id": ctm_id,
	  	    "sc_number": $("#sc_number").val()},
  	  	  function(data, status){
	  		  if (status == "success"){
	  			  todo(data);
	  			  location.reload();
	  		  }
	  	  }
    );
}
