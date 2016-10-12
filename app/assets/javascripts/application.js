// ...
//= require jquery
//= require jquery_ujs

//= require_tree .
$(document).ready(function(){
// console.log("inside docready")
clueFormListener("#add_clue", "#add_clue_form")

editLink("#clue_section", "#edit_button")
editFormListener("#add_clue", "#edit_clue_form")

destroyClue("#clue_section", ".delete_button")

playerFormListener("#player_list", "#add_player")
})

function clueFormListener(anchor, formName){
	
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
			//success
			console.log("in new clue response")
			$("#form_and_clue").html(response)
			})
			//fail
			// .fail(function(response){
				// $("#add_clue").html(response)
			// })
	})
}

function editLink(anchor, buttonName){
	$(anchor).on("click", buttonName, function(e){
		e.preventDefault();
		
		var route = $(this).parent().attr('action')
		var that = $(this)
		var request = $.ajax({
									url: route,
									method: 'get'
									})
		request.done(function(response){
			that.parent().html(response)
			})
	})
}

function editFormListener(anchor, formName){
	$(anchor).on("submit", formName, function(e){
		e.preventDefault();
		console.log("inside preventDefault")
		debugger
		var route = $(this).attr('action')
		var formData = $(this).serialize()
		var that = $(this)
		var request = $.ajax({
									url: route,
									method: "PUT",
									data: formData
									})
		request.done(function(response){
			//success
			console.log("edit form info" + response)
			that.parent().html(response)
			})

})
}

function destroyClue(anchor, deleteButton){
	$(anchor).on("click", deleteButton, function(e){
		e.preventDefault();
		
		console.log("prevented default")
		var route = $(this).parent().attr('action')
		console.log(route)	
		var that = $(this)
		console.log(that)
		debugger
		var request = $.ajax({
								url: route,
								method: "DELETE",
									})
		request.done(function(response){
			//success
			console.log("response " + response)
			// that.parent().parent().remove();
			response.remove();
			})

	})
}

function playerFormListener(anchor, formName){
	
	$(anchor).on("submit", formName, function(e){
		e.preventDefault();
		debugger
		// console.log("prevented default")
		var route = $(this).attr('action')
		var formData = $(this).serialize()
		
		var request = $.ajax({
									url: route,
									method: 'post',
									data: formData
									})
		request.done(function(response){
			//success
			$(anchor).append(response)
			})
			
	})
}


