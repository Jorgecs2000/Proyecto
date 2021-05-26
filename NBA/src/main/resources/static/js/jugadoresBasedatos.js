
var jugadores=[];

 
fetch(`http://localhost:8080/api/jugadores`,{
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
      jugadores= r;
      console.log("updating players");
      buscarPlayers();
    })
    .catch(e => {
      console.error("Error " + e)
    })

  console.log(jugadores);
    function buscarPlayers(){
    let html = '';




    
    jugadores.forEach(function(jugador,i){


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

              })
    
      document.getElementById("Jugadores").innerHTML = html;
    }