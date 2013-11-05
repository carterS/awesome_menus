var Menu = {

	init: function(){
		$('form#new_menu').on('ajax:success', this.appendMenu);
		$('form#new_menu').on('ajax:error', this.displayError);
	},

	appendMenu: function(event, data, status, xhr) {
		$('ul#menu_list').append(data.menu_title)

	},
	displayError: function(event, xhr, status, error){
		debugger
		console.log($.parseJSON(xhr.responseText).error);
	}

}

$(document).ready(function(){
	Menu.init();
})
