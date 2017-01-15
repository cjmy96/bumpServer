(function() {
	$(".action.new-test").on('click', function() {
		$(".new-test-contents").show();	
		$('.enter-results-contents').hide();
	});
	$(".action.enter-results").on('click', function() {
		$('.enter-results-contents').show();
		$(".new-test-contents").hide();	
	});
})();