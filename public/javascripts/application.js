$(document).ready(function() {
	// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);

//	rolloverWardrobe()
	increaseQuantityAgain();
	decreaseQuantityAgain();
	packItemIntoBag();
 	addToBag();
	addToBagImage();
	highlightPackedBag();
	
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
			 $(this).closest('div').addClass()
			//alert(hello)
			return false;
		});
	}	

	function addToBag()
	{
		$(".add_to_my_bag").click(function() {
			$.post($(this).attr("action"), $(this).serialize(), null, "script");
			$(this).closest('div').css('background', 'orange')
			$(this).closest('div').animate({backgroundColor : "white"}, 1000);
			return false;
		});
	}

	function addToBagImage()
	{
		$(".item_to_pack input[type='image']").click( function(){
			$.post($(this).parent().attr("action"), $(this).parent().serialize(), null, "script");
			$(this).closest('div').css('background', 'orange')
			$(this).closest('div').animate({backgroundColor : "white"}, 1000);
			return false;
		})
	}

	function rolloverWardrobe()
	{
		$(".item_to_pack").hover(function() {
			$(this).addClass("overState");
		}, function() {
			$(this).removeClass("overState");	
		});
	}

	function highlightPackedBag() {
		$("input[name^='bag_item']:checked:enabled").closest('div').fadeTo("fast", 0.33);
		
	}
