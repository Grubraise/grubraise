    $(document).ready(function() {
		
	var container1 = $('div.Logcontainer');
	var validator = $("#logform").validate({
		errorContainer: container1,
		errorLabelContainer: $("ol", container1),
		wrapper: 'li',
		meta: "validate"
	});
	
	var container2 = $('div.raisecontainer');
	var validator2 = $("#valid_form").validate({
		errorContainer: container2,
		errorLabelContainer: $("ol", container2),
		wrapper: 'li',
		meta: "validate"
	});
	
	var container3 = $('div.restaurant_form_error');
	var validator3 = $("#restaurant_valid_form").validate({
		errorContainer: container3,
		errorLabelContainer: $("ol", container3),
		wrapper: 'li',
		meta: "validate"
	});
	
	
	

	
	
});

