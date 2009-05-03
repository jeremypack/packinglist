$(document).ready(function() {

	$(".item_to_pack").hover(function() {
	   $(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});
	
//	$("input#new_user_item_form").autocomplete("auto_complete_for_item_search")

	
	// $("tr:gt(1)").mouseover(function() {
	//    $(this).addClass("overState");
	// });
	// 
	// $("tr").mouseout(function() {
	// 	$(this).removeClass("overState");
	// });
	
});