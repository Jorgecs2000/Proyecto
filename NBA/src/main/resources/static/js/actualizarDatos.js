document.addEventListener("DOMContentLoaded", function(event) {
		var form = document.getElementById("myform");
		form.addEventListener("submit", function(e) {
		e.preventDefault();
		return validateForm();
	});
});

function validateForm() {
    try {
        var user = document.getElementById("input1").value;
        var password_nueva = document.getElementById("input2").value;
		var password_repeticion = document.getElementById("input3").value;
		if(password_nueva==password_repeticion){
		    fetch(`http://localhost:8080/api/users/update?userid=${document.getElementById("input1").value}&password=${document.getElementById("input2").value}&password_repe=${document.getElementById("input3").value}`,{
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

    } catch (err) {
        console.error(err.message);
    }
    return false;
}