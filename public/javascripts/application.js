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

	// Add to Bag
	$(".add_to_my_bag").click(function() {
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;
	})
	
	
	$(".pack_item_in_bag").click( function(){
		$(this).parent().addClass("im_packed");
	});
	
	
	// setupBagList();
 	
});

// 	// Packing tick boxes
// 		
// });
// 
// 
// 

// Packing tick boxes
// function setupBagList()
// {
// 	$(".items_to_pack table tr td input[type='submit']").hide();
// 	$('.items_to_pack table tr td input').click( function(){
// 		var f = $(this).parent()
// 		var url = f.attr('action');
// 		var data = f.serialize();
// 		$.post(url, data, null, 'script');
// 	});
// }

