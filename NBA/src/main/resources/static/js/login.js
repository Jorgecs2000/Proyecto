
document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});
//
//
function validateForm() {
    try {
        var inputValue1 = document.getElementById("input1").value;
        var inputValue2 = document.getElementById("input2").value;
        const data = { user: inputValue1, password: inputValue2 };
        const address = 'api/users/login';
        fetch(address, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
            })
            .then(response => {
         		response.json();
          		console.log(response.status);
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