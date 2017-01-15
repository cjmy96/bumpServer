var testResultHandler = (function () {
	var checkParisID = function (parisID) {
		var action = "checkParisID";
		var contents = { "parisID": parisID };
		var successHandler = function(result) {
			if (result.status != 'success') {
				console.log("Something went wrong while checkingParisID");
			} else {
				if (result.parisIDFound == "true") {
					//Display form
					formHandler.displayForm(parisID);
				} else {
					//display .parid-id-invalid-messasge
					formHandler.displayInvalidMessage();
				}
			}
		};
		var errorHandler = function(jqXHR, status, error) {
            console.error("Failed to update to server 'checkParisID'");
            console.log(jqXHR);
            console.log(status);
            console.log(error);
		};
		utilities.sendAJAX(action, contents, successHandler, errorHandler);
	};
	var parisIDListener = function() {
		var previousLength = 0;
		var eventHandler = function(event) {			
			var currentLength = event.target.value.length;
			if (currentLength == 12 && currentLength > previousLength) {
				checkParisID(event.target.value);
			} else if (currentLength == 11) {
				//Display .paris-id-unentered-message
				formHandler.displayUnenteredMessage();
			}
			previousLength = currentLength;
		};
		return eventHandler;
	};
	var submit = function(form) {
		var action = "insertTestResult";
		var contents = form.serializeArray();
		var successHandler = function(result) {
			console.log(result);
            if (result.status != "success") {
                console.error("something went wrong on the server side - AJAX response failed");
            } else {
            	formHandler.resetForm();
            }
		};
		var errorHandler = function(jqXHR, status, error) {
            console.error("Failed to update to server 'insertTestResult'");
            console.log(jqXHR);
            console.log(status);
            console.log(error);
		};
		utilities.sendAJAX(action, contents, successHandler, errorHandler);
	};

	return {
		parisIDListener: parisIDListener,
		submit: submit
	};
})();

(function() {	
	$(".paris-search input").on('input', testResultHandler.parisIDListener());
	$(".button.submit-results-btn").on('click', function() {
		console.log("button pressed");
		var form = $('.enter-results-contents .interface-form');
		testResultHandler.submit(form);
		form.trigger("reset");
	});
})();