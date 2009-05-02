$(document).ready(function() {

	$(".item_to_pack").hover(function() {
	   $(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});
	

	
	// $("tr:gt(1)").mouseover(function() {
	//    $(this).addClass("overState");
	// });
	// 
	// $("tr").mouseout(function() {
	// 	$(this).removeClass("overState");
	// });
	
});