function create_dynamic_modal(content) {
	var modal = $('<div id="lngModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="lngModalLabel" aria-hidden="true">');
	modal.append(content);
	return modal;
}

function debug(msg) {
	console.log(msg);
}

function alertMsg(msg) {
	alert(msg);
}