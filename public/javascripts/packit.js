$(document).ready(function(){
	
	
		// var li = $(this).parent().parent().parent();
		// if( this.checked ){
		// 	li.addClass('packed');
		// } else {
		// 	li.removeClass('packed');
		// }

	setupBagList();
		
	
})

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