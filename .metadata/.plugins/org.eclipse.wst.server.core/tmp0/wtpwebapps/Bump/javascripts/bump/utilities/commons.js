var utilities = (function() {
    var createAJAXAction = function(type, context, target) {
        return {
            type: type || 'default',
            context: context || 'default',
            target: target || 'default'
        };
    };

    var sendAJAX = function(action, contents, successHandler, errorHandler) {
        action = action || createAJAXAction();
        contents = contents || {};
        successHandler = successHandler || function(result) {

        };

        errorHandler = errorHandler || function(jqXHR, status, error) {
            console.error("something went wrong on the server side - AJAX response failed");
            console.log(jqXHR);
            console.log(status);
            console.log(error);
        };
        
        $.ajax({
            url: "/Bump/ajaxHandler",
            method: "POST",
            dataType: "json",
            data: {
                action: action,
                contents: JSON.stringify(contents)
            },
            success: successHandler,
            error: errorHandler
        });
    };


    return {
        createAJAXAction: createAJAXAction,
        sendAJAX: sendAJAX
    };
})();