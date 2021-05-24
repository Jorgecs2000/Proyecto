/**
 * 
 */

const user = document.getElementById("user");
const password = document.getElementById("password");

function loginForm (){
 
  try {
    const data = { user: user.value, password: password.value };
   ;
    fetch('http://localhost:8080/myapplication/api/login', {
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
            alert("Loggeado Correctamente");
            document.location.href="home.html";
          } else {
            alert("Usuario y contraseña no valido");
          }
        })
  } catch (err) {
    console.error(err.message);
  }
  return false;
 }


