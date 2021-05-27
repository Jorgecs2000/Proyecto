document.addEventListener("DOMContentLoaded", function(event) {
	var form = document.getElementById("myform");
	form.addEventListener("submit", function(e) {
	e.preventDefault();
	return validateForm();
	});
});



function validateForm() {
	fetch(`/api/delete?last_name=${document.getElementById("input1").value}`,{
	dataType: "json",
	headers:{
		'Content-type' : 'application/json',
		'Accept': 'application/json',
	},
	method: 'DELETE'
	})
	.then(res => {
		console.log(res);
		if(res.ok){
			alert('Borrado correcto');
			document.location.href="home.html";
		}else{
			alert('no se ha podido borrar al jugador');
		}
	})
	
	
	.catch(e => {
		console.error("Error " + e)
	})
	return false;
}
