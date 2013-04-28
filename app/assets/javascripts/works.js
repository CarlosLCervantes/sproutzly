$(document).ready(function() {
	$("button.btn-twitter-add").bind("click", addTwitter);
	$("button.btn-facebook-add").bind("click", addTwitter);
});

function addTwitter() {
	var self = $(this);
	var parent_item = self.find("div#item-twitter");
	var twitter_handle = self.siblings("input#twitter_handle").val().replace(" ", "");
	if(twitter_handle.length > 0) {
		$.ajax({
			url: '/works',
			method: 'POST',
			data: { work: { value: twitter_handle, type_id: 1, type_desc: 'Facebook like' } },
			success: function(response) {
				addedTwitter();
				parent_item.fadeOut("slow");
			}
		});
	}
	else {
		alertMsg("You forgot to enter a Twitter Handle :)");
	}
}

function addedTwitter() {
	create_dynamic_modal("Congrats! You just increased your Twitter following. Having a large following makes your brand more imporant and influential!");
}

function addFacebook() {
	var self = $(this);
	var parent_item = self.find("div#item-twitter");
	var twitter_handle = self.siblings("input#twitter_handle").val().replace(" ", "");
	if(twitter_handle.length > 0) {
		$.ajax({
			url: '/works',
			method: 'POST',
			data: { work: { value: twitter_handle, type_id: 2, type_desc: 'Twitter Follow' } },
			success: function(response) {
				addedTwitter();
				parent_item.fadeOut("slow");
			}
		});
	}
	else {
		alertMsg("You forgot to enter a Twitter Handle :)");
	}
}

function addedFacebook() {
	create_dynamic_modal("Congrats! You just increased your Facebook following. No one wants to be the first one to try anything. Now people are more likely to consume your Facebook content or App.");
}

