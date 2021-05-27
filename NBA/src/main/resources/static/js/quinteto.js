document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});

function validateForm() {
	fetch(`/api/quinteto?player1=${document.getElementById("base").value}&player2=${document.getElementById("escolta").value}&player3=${document.getElementById("alero").value}
									&player4=${document.getElementById("ala-pivot").value}&player5=${document.getElementById("pivot").value}`,{

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
		alert('Introduzca 5 jugadores');
	})
	return false;


	function showQuinteto(){
		let html = '';
		
		var media_equipo = (quinteto.player1.media+quinteto.player2.media+quinteto.player3.media+quinteto.player4.media+quinteto.player5.media)/5;

		html += '<div class="row-lg-12">'
		+'<div class="col-lg-6">'
		+'<div class="card" style="width: 70rem;">'
		+ '<div class="card-body">'
		+ `<h5 class="card-title" id="player1"style="position: absolute; font-family: IMPACT,Times,serif; font-size:30px; color: red; left: 22em; top: 22em; z-index: 1;"> ${quinteto.player1.last_name} </h5>`
		+ `<h5 class="card-title" id="player2"style="position: absolute; font-family: IMPACT,Times,serif; font-size:30px; color: red; left: 31em; top: 19em; z-index: 1;">  ${quinteto.player2.last_name} </h5>`
		+ `<h5 class="card-title" id="player3"style="position: absolute; font-family: IMPACT,Times,serif; font-size:30px; color: red; left: 12em; top: 19em; z-index: 1;">  ${quinteto.player3.last_name} </h5>`
		+ `<h5 class="card-title" id="player4"style="position: absolute; font-family: IMPACT,Times,serif; font-size:30px; color: red; left: 13em; top: 7em; z-index: 1;">  ${quinteto.player4.last_name} </h5>`
		+ `<h5 class="card-title" id="player5"style="position: absolute; font-family: IMPACT,Times,serif; font-size:30px; color: red; left: 22em; top: 12em; z-index: 1;">  ${quinteto.player5.last_name} </h5>`
		+ `<h5">Media del equipo: </h5>`
		+`<meter min="0" max="100" low="70" high="90" value=${media_equipo}></meter>`
		+ `<h5 id="media_global"style="position: absolute; font-family: IMPACT,Times,serif; font-size:17px; color: black; left: 21em; top: 2em; z-index: 1;">${media_equipo} </h5>`
		+'</div>'
		+'</div>'
		+'</div>' ;





	document.getElementById("Quinteto").innerHTML = html;
	}
}