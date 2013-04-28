$(document).ready(function() {
	//alert($("button.btn-start-wi").length);
	$("button.btn-start-wi").bind("click", startAction);
});

function startAction(e) {
	//checkPayment();
	var self = $(this);
	//var parentId = 'div#' + $(e.currentTarget).parent().parent().parent().first().attr('id');
	//var action_item = self.parents(parentId).find("div.action-item");
	var action_item = self.parents("div.work-item").find("div.action-item");
	debug(action_item.length);
	action_item.slideDown("slow");
}