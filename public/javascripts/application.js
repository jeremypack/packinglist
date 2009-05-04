$(document).ready(function() {

// Rollover
	$(".item_to_pack").hover(function() {
	   $(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});


// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);

// Easier Bag View
	$(':header').click(function() {
		jQuery('table').slideUp('normal');
	})


// Autocomplete function not working
//	$("input#new_user_item_form").autocomplete("auto_complete_for_item_search")


// Add to Bag
$(".add_to_my_bag").click(function() {
	$.post($(this).attr("action"), $(this).serialize(), null, "script");
	return false;
})

// $('.item_to_pack').click(function() {
// 	this.hide();
// })
	
	
// Packing tick boxes
	setupBagList();

	});
// Packing tick boxes
function setupBagList()
{
	$("#bag_list input[type='submit']").hide();
	$('#bag_list input').click( function(){
		var f = $(this).parent().parent();
		var url = f.attr('action');
		var data = f.serialize();
		$.post(url, data, null, 'script');
	});
}

