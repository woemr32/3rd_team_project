$(document).ready(function() {
	$('#list_close_icon').toggle(function() {
		$('#list-component').css('right', '-460px').css('transition-duration', '1s');
		$('#list_close_icon').text('>>');
	}, function() {
		$('#list-component').css('right', '0px').css('transition-duration', '1s');
		$('#list_close_icon').text('<<');
	});
}); 