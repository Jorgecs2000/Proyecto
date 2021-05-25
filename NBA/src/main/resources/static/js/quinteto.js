document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});

function validateForm() {
	fetch(`/api/quinteto?player1=${document.getElementById("input1").value}&player2=${document.getElementById("input2").value}&player3=${document.getElementById("input3").value}
									&player4=${document.getElementById("input4").value}&player5=${document.getElementById("input5").value}`,{

	headers:{
		'Content-type' : 'application/json',
		'Accept': 'application/json',
	},
	method: 'GET'
	})
	.then(res => {
	if(res.ok){
		return res.json()
	}
	})
	.then(r => {
		console.log(r)
		quinteto= r;
		console.log(quinteto);
		showQuinteto();
	})
	.catch(e => {
		console.error("Error " + e)
	})
	return false;


	function showQuinteto(){
		let html = '';
		
		var media_equipo = (quinteto.player1.media+quinteto.player2.media+quinteto.player3.media+quinteto.player4.media+quinteto.player5.media)/5;

		html += '<div class="row-lg-12">'
		+'<div class="col-lg-6">'
		+'<div class="card" style="width: 70rem;">'
		+ '<div class="card-body">'
		+ `<h5 class="card-title" id="player1"> <b>LAST NAME:</b> ${quinteto.player1.last_name} <b> NAME:</b> ${quinteto.player1.name} <b> TEAM:</b> ${quinteto.player1.team} <b> DORSAL:</b> ${quinteto.player1.dorsal} <b> MEDIA:</b> ${quinteto.player1.media}</h5>`
		+ `<h5 class="card-title" id="player2"> <b>LAST NAME:</b> ${quinteto.player2.last_name} <b> NAME:</b> ${quinteto.player2.name} <b> TEAM:</b> ${quinteto.player2.team} <b> DORSAL:</b> ${quinteto.player2.dorsal} <b> MEDIA:</b> ${quinteto.player2.media}</h5>`
		+ `<h5 class="card-title" id="player3"> <b>LAST NAME:</b> ${quinteto.player3.last_name} <b> NAME:</b> ${quinteto.player3.name} <b> TEAM:</b> ${quinteto.player3.team} <b> DORSAL:</b> ${quinteto.player3.dorsal} <b> MEDIA:</b> ${quinteto.player3.media}</h5>`
		+ `<h5 class="card-title" id="player4"> <b>LAST NAME:</b> ${quinteto.player4.last_name} <b> NAME:</b> ${quinteto.player4.name} <b> TEAM:</b> ${quinteto.player4.team} <b> DORSAL:</b> ${quinteto.player4.dorsal} <b> MEDIA:</b> ${quinteto.player4.media}</h5>`
		+ `<h5 class="card-title" id="player5"> <b>LAST NAME:</b> ${quinteto.player5.last_name} <b> NAME:</b> ${quinteto.player5.name} <b> TEAM:</b> ${quinteto.player5.team} <b> DORSAL:</b> ${quinteto.player5.dorsal} <b> MEDIA:</b> ${quinteto.player5.media}</h5>`
		+ `<h5 class="card-title" id="media_global"> <b>MEDIA GLOBAL:</b> ${media_equipo} </h5>`
		+'</div>'
		+'</div>'
		+'</div>' ;





	document.getElementById("Quinteto").innerHTML = html;
	}
}