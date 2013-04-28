// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap
//= require flat-ui
//= require bootstrap-modalmanager
//= require bootstrap-modal

$(document).ready(function() {
	$("a.btn-continue").bind("click", continueToDash);
});

function continueToDash() {
	var self = $(this);
	checkLogin();
}

function checkLogin() {
	debug("logged in: " + logged_in);
	if(!logged_in) {
		showSignup();
	}
	else {
		window.location = "/dashboard";
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