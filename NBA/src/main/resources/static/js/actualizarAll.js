document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});


function validateForm() {
    try {
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
		    fetch(`http://localhost:8080/api/users/update/all?userid=${user}&email=${document.getElementById("input1").value}&phone=${document.getElementById("input2").value}&favourite_team=${document.getElementById("input3").value}&favourite_player=${document.getElementById("input4").value}`,{
			  headers:{
			   'Content-type' : 'application/json',
			    'Accept': 'application/json',
			  },
			  method: 'PUT'})
			      .then(res => {
			      if(res.ok){
					 document.location.href="usuario.html";
					 alert('Data Changed');
			      }
			    })	      

    } catch (err) {
        console.error(err.message);
    }
    return false;
}