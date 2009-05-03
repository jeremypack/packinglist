$(document).ready(function() {

// Rollover
	$(".item_to_pack").hover(function() {
	   $(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});


// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);
	});


// Autocomplete function not working
//	$("input#new_user_item_form").autocomplete("auto_complete_for_item_search")
	


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