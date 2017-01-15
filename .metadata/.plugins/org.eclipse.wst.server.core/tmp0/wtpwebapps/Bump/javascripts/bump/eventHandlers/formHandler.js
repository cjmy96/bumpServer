var formHandler = (function () {
	var displayUnenteredMessage = function() {
		$('.paris-id-unentered-message').show();
		$('.parid-id-invalid-messasge').hide();
    	$('.enter-results-contents .form-container').hide();
	}
	var displayForm = function(parisID) {
		$('.paris-id-unentered-message').hide();
		$('.parid-id-invalid-messasge').hide();		
		$('#paris-id').html(parisID);
		$(".enter-results-contents input[name='paris-id']").val(parisID);
		$('.enter-results-contents .form-container').show();
	}
	var displayInvalidMessage = function() {
		$('.paris-id-unentered-message').hide();
		$('.parid-id-invalid-messasge').show();
		$('.enter-results-contents .form-container').hide();
	}
	var resetForm = function() {
		displayUnenteredMessage();
    	$('.paris-search input').val('');
    	$('#paris-id').html('');
	}
	
	return {
		displayUnenteredMessage: displayUnenteredMessage,
		displayForm: displayForm,
		displayInvalidMessage: displayInvalidMessage,
		resetForm: resetForm
	}
})();