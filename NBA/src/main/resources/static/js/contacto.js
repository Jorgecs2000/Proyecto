/**
 * 
 */
const name = document.getElementById("name");
const email = document.getElementById("email");
const phone = document.getElementById("phone");




function contactForm (){
 
  try {
    const data = { name: name.value, email: email.value, phone: phone.value};
   ;
    fetch('http://localhost:8080/myapplication/api/contact', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
        })
        .then(response => {
          response.json();
          console.log(response);
          if(response.status == 200){
			
            console.log("Authenticated");
            alert("Se ha encontrado el contacto");
			let html = '';
			 html += '<div class="row-lg-6">'
                 +'<div class="col-lg-6">'
                    +'<div class="card" style="width: 40rem;">'
                      + '<div class="card-body">'
                      +  `<h5 class="card-title" id="nombre"> <b>${name.value}</h5>`
                      +  `<h6 class="card-title" id="datos"> <b>email:</b> ${email.value} <b>movil:</b> ${phone.value}</h6> `
                      +'</div>'
                    +'</div>'
                  +'</div>' ;
			document.getElementById("Nombre-jugador").innerHTML = html;
          } else {
            alert("Usuario y contraseña no valido");
          }
        })
  } catch (err) {
    console.error(err.message);
  }
  return false;
 }

