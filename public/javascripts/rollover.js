$(document).ready(function() {
	
	$("div[id=item_to_pack]").mouseover(function() {
	   $(this).addClass("overState");
	});
	
	$("div[id=item_to_pack]").mouseout(function() {
		$(this).removeClass("overState");
	});
	
	$("tr:gt(1)").mouseover(function() {
	   $(this).addClass("overState");
	});
	
	$("tr").mouseout(function() {
		$(this).removeClass("overState");
	});
	
});