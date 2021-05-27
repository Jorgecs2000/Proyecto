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
	    	password_actual=usuario.password;
	    	console.log(user);
	    	console.log(password_actual);
    	}
    	else
    	{
    	console.log("No hay un usuario loggeado");
    	}
    	
    	var password_act = document.getElementById("input1").value;
        var password_nueva = document.getElementById("input2").value;
		var password_repeticion = document.getElementById("input3").value;
		if(password_actual== password_act){
		if(password_nueva==password_repeticion){
			let usuario={
        		user: user,
        		password: password_nueva
        	};
			localStorage.setItem("usuario",JSON.stringify(usuario));
		    fetch(`http://localhost:8080/api/users/update?userid=${user}&password=${document.getElementById("input2").value}&password_repe=${document.getElementById("input3").value}`,{
			  headers:{
			   'Content-type' : 'application/json',
			    'Accept': 'application/json',
			  },
			  method: 'PUT'})
			      .then(res => {
			      if(res.ok){
					 document.location.href="home.html";
					 alert('Password Changed');
			      }
			    })
	            
	        }else{
	        	alert('New passwords do not match');
	        }
	      }
	      else{
	      		alert('Current password do not match');
	      }
	      

    } catch (err) {
        console.error(err.message);
    }
    return false;
}