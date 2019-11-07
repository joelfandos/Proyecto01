//Login

function formulario(){
	var username = document.getElementById('username').value;
	var password = document.getElementById('password').value;
	if(username == '' && password == ''){
		document.getElementById('mensaje').innerHTML = 'El campo nombre y la contraseña son obligatorios!';	
		document.getElementById('mensaje').style.display = 'block';
		document.getElementById('mensaje').style.border = "thick solid red";
		document.getElementById('username').style.border = '1px solid red';
		document.getElementById('password').style.border = '1px solid red';
		return false;	
	}else if (username == '') {
		document.getElementById('mensaje').innerHTML = 'El campo nombre es obligatorio!';
		document.getElementById('mensaje').style.display = 'block';	
		document.getElementById('mensaje').style.border = "thick solid red";
		document.getElementById('username').style.border = '1px solid red';
		document.getElementById('password').style.border = '1px solid #ccc';
		return false;
	}else if (password == '') {
		document.getElementById('mensaje').innerHTML = 'La contraseña es obligatoria!';
		document.getElementById('mensaje').style.display = 'block';	
		document.getElementById('mensaje').style.border = "thick solid red";
		document.getElementById('username').style.border = '1px solid #ccc';
		document.getElementById('password').style.border = '1px solid red';
		return false;
	}else{
		return true;
	}
}