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
		var inputValue3 = document.getElementById("input3").value;
        var inputValue4 = document.getElementById("input4").value;
		var inputValue5 = document.getElementById("input5").value;	
		var inputValue6 = document.getElementById("input6").value;	
        const data = { userid: inputValue1, password: inputValue2, email: inputValue3, phone: inputValue4, favourite_team: inputValue5, favourite_player: inputValue6};
        const address = '/api/users/register';
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
            		alert("Registrado Correctamente");
            		document.location.href="index.html";
          		} else {
            	alert("Usuario y contraseña no valido");
          }
        })

    } catch (err) {
        console.error(err.message);
    }
    return false;
}