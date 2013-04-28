$(document).ready(function() {
	$("button.btn-twitter-add").bind("click", addTwitter);
	$("button.btn-facebook-add").bind("click", addTwitter);
	$("button.btn-select-inf-market").bind("click", influencerMarketSelected);
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

function influencerMarketSelected() {
	debug("inf market selected");
	var self = $(this);
	var parent_item = self.parents("div.action-item");
	var step_1 = parent_item.find("div.inf-step-1");
	var step_2 = parent_item.find("div.inf-step-2");
	var market_id = parent_item.find(".dk_option_current a").data("dk-dropdown-value");
	debug("market_id = " + market_id);
	$.ajax({
		url: "influencers",
		method: "GET",
		data: { market_id: market_id},
		success: function(influencers) {
			step_1.hide();
			step_2.show();
			var influencers_list = step_2.find("div.influencers");
			influencers_list.empty();
			for(var i = 0; i < influencers.length; i++) {
				getInfluencerItem(influencers[i]._id, function(item){
					influencers_list.append(item);
					item.hide();
					item.fadeIn(2000);
				});
			}
			//step_2.empty().show().append();
		}
	});
}

function getInfluencerItem(id, onSuccess) {
	debug("getting influencer " + id);
	$.ajax({
		url: "influencers/" + id,
		method: "GET",
		data_type: 'text/html',
		//data: { market_id: market_id},
		success: function(response) {
			onSuccess($(response));
		}
	});
}

