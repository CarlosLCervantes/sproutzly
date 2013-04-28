$(document).ready(function() {
	//alert($("button.btn-start-wi").length);
	$("button.btn-start-wi").bind("click", startAction);
});

function startAction() {
	checkLogin();
	var self = $(this);
	var action_item = self.parents("div#item-twitter").find("div.action-item");
	//debug(action_item.length);
	action_item.slideDown("slow");
}

function checkLogin() {
	debug("logged in: " + logged_in);
	if(!logged_in) {
		showSignup();
	}
}

function showSignup() {
	$.ajax({
		url: "/register",
		method: "GET",
		success: function(response) {
			create_dynamic_modal(response).modal('show');
		},
		error: function(jqXHR, textStatus, errorThrown) {
			alert("error");s
		}
	});
	
}