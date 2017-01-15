var newTestHandler = (function () {
	var submit = function(form) {
		var action = "addNewTest";
		var contents = form.serializeArray();		
		var successHandler = function(result) {
			console.log(result);
            if (result.status != "success") {
                console.error("something went wrong on the server side - AJAX response failed");
            } else {
            	
            }
		};
		var errorHandler = function(jqXHR, status, error) {
            console.error("Failed to update to server 'addNewTest'");
            console.log(jqXHR);
            console.log(status);
            console.log(error);
		};
		utilities.sendAJAX(action, contents, successHandler, errorHandler);
	};
	return {
		submit: submit
	};
})();

(function() {
	$('.button.submit-test-btn').on("click", function(event) {
		var form = $('.new-test-contents .interface-form')
		newTestHandler.submit(form);
		form.trigger("reset");
	});	
})();