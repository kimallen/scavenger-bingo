// ...
//= require jquery
//= require jquery_ujs

//= require_tree .
$(document).ready(function(){
clueFormListener()

})

function clueFormListener(){
	
	$("#add_clue").on("submit", "#add_clue_form", function(e){
		e.preventDefault();
		
		var route = 
		var formData = $(this).serialize()
		var request = $.ajax({
				url: route,
				method: 'post',
				data: formData

		})
	})
}

