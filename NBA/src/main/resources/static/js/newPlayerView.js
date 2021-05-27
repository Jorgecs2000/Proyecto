document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});

function validateForm() {
    try {
        var inputValue1 = document.getElementById("input1").value;
        var inputValue2 = document.getElementById("input2").value;
		var inputValue3 = document.getElementById("input3").value;
        var inputValue4 = document.getElementById("input4").value;
		var inputValue5 = document.getElementById("input5").value;	
        const data = { last_name: inputValue1, name: inputValue2, dorsal: parseInt(inputValue3), team: inputValue4, media: parseInt(inputValue5)};
        const address = '/api/add';
        fetch(address, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
            })
            .then(res => {
      			if(res.ok){
        			 return res.json()
     			 }
    		})
    		.then(r => {
      			console.log(r)
      			jugador= r;
      			console.log("adding player");
      			showPlayer();
    		})
    	.catch(e => {
      console.error("Error " + e)
    })
    return false;

    } catch (err) {
        console.error(err.message);
    }
    return false;

	function showPlayer(){
		let html = '';
		html += '<div class="row-lg-6">'
		                 +'<div class="col-lg-6">'
		                    +'<div class="card" style="width: 40rem;">'
		                      + '<div class="card-body">'
		                      +  `<h5 class="card-title" id="nombre_jugador"> <b>${jugador.name} </b> <b>${jugador.last_name} </b></h5>`
		                      +  `<h6 class="card-title" id="medidas"> <b>ID:</b> ${jugador.id} <b>dorsal:</b> ${jugador.dorsal} <b>equipo:</b> ${jugador.team} </h5> `
		                      +  `<h6 class="card-title" id="medidas"> <b>Media:</b> ${jugador.media}</h5> `
		                      +'</div>'
		                    +'</div>'
		                  +'</div>' ;

		document.getElementById("Player").innerHTML = html; 	
	 }  
	      
}
