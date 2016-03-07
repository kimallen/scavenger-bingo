// ...
//= require jquery
//= require jquery_ujs

//= require_tree .
$(document).ready(function(){
console.log("document ready")
clueFormListener()

})

function clueFormListener(){
	console.log("inside clueFormListener")
	$("#add_clue").on("submit", "#add_clue_form", function(e){
		e.preventDefault();
		console.log("inside preventDefault")
	})
}

