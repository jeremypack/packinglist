$(document).ready(function() {

	// Rollover Wardrobe
	$(".item_to_pack").hover(function() {
		$(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});

	// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);

	
	increaseQuantityAgain();
	decreaseQuantityAgain();
	packItemIntoBag();
 	addToBag()
	addToBagImage()
	
});

	function increaseQuantityAgain()
	{
		$(".adding_link").click( function(){
			$.post($(this).attr("action"), $(this).serialize(), null, "script");
			return false;
		});
	}

	function decreaseQuantityAgain()
	{
		$(".minus_link").click( function(){
			$.post($(this).attr("action"), $(this).serialize(), null, "script");
			return false;
		});
	}	

	function packItemIntoBag()
	{
		$(".pack_item_button").click( function(){
			$.post($(this).parent().attr("action"), $(this).parent().serialize(), null, "script");
			return false;
		});
	}	

	function addToBag()
	{
		$(".add_to_my_bag").click(function() {
			$.post($(this).attr("action"), $(this).serialize(), null, "script");
			return false;
		});
	}

	function addToBagImage()
	{
		$(".item_to_pack input[type='image']").click( function(){
			$.post($(this).parent().attr("action"), $(this).parent().serialize(), null, "script");
			return false;
		})
	}




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

