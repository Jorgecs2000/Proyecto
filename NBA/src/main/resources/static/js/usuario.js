var u;
  		if(JSON.parse(localStorage.getItem("usuario")))
    		{
		    	let usuario= JSON.parse(localStorage.getItem("usuario"));
		    	user=usuario.user;
		    	console.log(user);
				 
    		}
    		else
    		{
    			console.log("No hay un usuario loggeado");
    		}
       
        fetch(`http://localhost:8080/api/users/user?userid=${user}`, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            }
            })
			.then(res => {
			      if(res.ok){
			         return res.json()
			      }
			    })
            .then(r => {
		      console.log(r);
		      u= r;
			buscarUsuario();
			console.log(u);
    		})
		    .catch(e => {
		      console.error("Error " + e)
		    })//

function buscarUsuario()
{
	let html = '';

html += '<div class="row-lg-6">'
                 +'<div class="col-lg-6">'
                    +'<div class="card" style="width: 40rem;">'
                      + '<div class="card-body">'
                      +  `<h5 class="card-title" id="nombre_jugador"> <b>${u.userid} </b></h5>`
                      +  `<h6 class="card-title" id="medidas"> <b>Password:</b> ${u.password} <b>ID:</b> ${u.id}<b>Email:</b> ${u.email} </h5> `
                      +  `<h6 class="card-title" id="medidas"> <b>Phone:</b> ${u.phone} <b>Favourite Team:</b> ${u.favourite_team} <b>Favourite Player:</b> ${u.favourite_player} </h5> `
                      +'</div>'
                    +'</div>'
                  +'</div>' ;

 document.getElementById("Usuario").innerHTML = html;
}        


