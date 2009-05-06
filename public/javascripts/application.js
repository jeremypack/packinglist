$(document).ready(function() {

// Rollover Wardrobe
	$(".item_to_pack").hover(function() {
	   $(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});


// Rollover Bag
	$(".bag_category_title").hover(function() {
		$(this).next().andSelf().addClass("overState");
	}, function() {
		$(this).next().andSelf().removeClass("overState");
	});

// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);

// Sliding Bag View
	$('.bag_category_title').click(function() {
		$(this).next().next().slideToggle('normal');
	})


// Autocomplete function not working
//	$("input#new_user_item_form").autocomplete("auto_complete_for_item_search")


// Add to Bag
$(".add_to_my_bag").click(function() {
	$.post($(this).attr("action"), $(this).serialize(), null, "script");
	return false;
})
	
	
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

