// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

//= require jquery

$(document).ready(function(){

	var partyList = $('#partyList').children();

	$('#search').on('input', function(e){
		var query = $('#search').val();
		for (var i=0; i<partyList.size(); i++){
			if (partyList.eq(i).text().indexOf(query) > -1){
				partyList.get(i).style.display = 'list-item';
			} else {
				partyList.get(i).style.display = 'none';
			}
		}
	});

	// $('#add_player').on('click', function(){
	// 	var username = $('#player_name').val();
	// 	if (username.length > 0){
	// 		$.ajax({
	// 			type: "POST",
	// 			url: document.URL + "/players",
	// 			async: false,
	// 			data: {
	// 				"username" : username
	// 			}
	// 		}).done(function(){
	// 			alert("done");
	// 		})
	// 	}
	// 	alert(username);
	// })

});
