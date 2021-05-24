/**
 * 
 */


const searchForm = document.getElementById("search-form");
var jugadores=[];

  searchForm.addEventListener("submit", function(event){
    event.preventDefault();  
 
fetch(`http://localhost:8080/myapplication/api/home/players?player=${document.getElementById("jugador").value}`,{
  headers:{
   'Content-type' : 'application/json',
    'Accept': 'application/json',
  },
  method: 'GET'})
      .then(res => {
      if(res.ok){
         return res.json()
      }
    })
    .then(r => {
      console.log(r)
      jugadores= r.data;
      console.log("updating players");
      updatePlayers();
    })
    .catch(e => {
      console.error("Error " + e)
    })
    return false;
})

  console.log(jugadores);
    function updatePlayers(){
    let html = '';




    
    jugadores.forEach(function(jugador,i){


       html += '<div class="row-lg-6">'
                 +'<div class="col-lg-6">'
                    +'<div class="card" style="width: 40rem;">'
                      + '<div class="card-body">'
                      +  `<h5 class="card-title" id="nombre_jugador"> <b>${jugador.first_name} </b> <b>${jugador.last_name} </b></h5>`
                      +  `<h6 class="card-title" id="medidas"> <b>altura:</b> ${jugador.height_feet}'${jugador.height_inches} feet <b>peso:</b> ${jugador.weight_pounds} pounds <b>posicion:</b> ${jugador.position} </h5> `
                      +  `<h6 class="card-title" id="medidas"> <b>equipo:</b> ${jugador.team.name} <b>conferencia:</b> ${jugador.team.conference} <b>ciudad:</b> ${jugador.team.city} </h5> `
                      +'</div>'
                    +'</div>'
                  +'</div>' ;

              })
    
      document.getElementById("Nombre-jugador").innerHTML = html;
    }