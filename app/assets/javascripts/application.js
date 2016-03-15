// ...
//= require jquery
//= require jquery_ujs

//= require_tree .
$(document).ready(function(){
console.log("inside docready")
FormListener("#add_clue", "#add_clue_form")

})

function FormListener(anchor, formName){
	
	$(anchor).on("submit", formName, function(e){
		e.preventDefault();
		// console.log("prevented default")
		var route = $(this).attr('action')
		var formData = $(this).serialize()
		
		var request = $.ajax({
									url: route,
									method: 'post',
									data: formData
									})
		request.done(function(response){
			console.log("This is the response" + response)
			$("#clue_list").prepend(response)
		})
	})
}

