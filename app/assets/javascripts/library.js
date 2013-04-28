$(document).ready(function() {
	$("div.lib-section div").bind("click", toggleFaq);
});

function toggleFaq() {
	debug("toggle");
	var self = $(this);
	var siblingText = self.siblings("p");
	siblingText.slideToggle();
}