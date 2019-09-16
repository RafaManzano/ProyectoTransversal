<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style>
  body {
  margin: 0;
  padding: 0;
  background: url(img/fondo.jpeg) no-repeat center top;
  background-size: cover;
  font-family: sans-serif;
  height: 100vh;
}

.login-box {
  width: 320px;
  height: 620px;
  background: #000;
  color: #fff;
  top: 50%;
  left: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  padding: 70px 30px;
}

.login-box .avatar {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  position: absolute;
  top: -50px;
  left: calc(50% - 50px);
}

.login-box h1 {
  margin: 0;
  padding: 0 0 20px;
  text-align: center;
  font-size: 22px;
}

.login-box label {
  margin: 0;
  padding: 0;
  font-weight: bold;
  display: block;
}

.login-box input {
  width: 100%;
  margin-bottom: 15px;
}

.login-box input[type="text"], .login-box input[type="password"] {
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  outline: none;
  height: 25px;
  color: #fff;
  font-size: 16px;
}

.login-box input[type="submit"] {
  border: none;
  outline: none;
  height: 40px;
  background: #b80f22;
  color: #fff;
  font-size: 18px;
  border-radius: 20px;
}

.login-box input[type="submit"]:hover {
  cursor: pointer;
  background: #ffc107;
  color: #000;
 
}

.login-box a {
  text-decoration: none;
  font-size: 12px;
  line-height: 20px;
  color: darkgrey;
}

.login-box a:hover {
  color: #fff;
}
  </style>
  
  
  
    <meta charset="utf-8">
    <title>Registro</title>
    <link rel="stylesheet">
  </head>
  <body>

    <div class="login-box">
      <img src="img/logo.png" class="avatar" alt="Avatar Image">
      <h1>Registro</h1>
      <form>
        <!-- USERNAME INPUT -->
        <label for="nombre">Nombre</label>
        <input type="text" id="nombre" placeholder="pon tu Nombre aqui" required>
        <!-- PrimerApellido INPUT -->
        <label for="primerApellido">Primer Apellido</label>
        <input type="text" id="primerApellido" placeholder="pon tu Primer Apellido aqui" required>
        <!-- SegundoApellido INPUT -->
        <label for="segundoApellido">Segundo Apellido</label>
        <input type="text" id="segundoApellido" placeholder="pon tu Segundo Apellido aqui" required>
        <!-- email INPUT -->
        <label for="usuario">Email</label>
        <input type="text" id="usuario" placeholder="pon tu Email aqui" required>
        <!-- PASSWORD INPUT -->
        <label for="password">Password</label>
        <input type="password" id="password" placeholder="Enter Password" required>
        <!--Nombre de la asignatura INPUT -->
        <label for="nombreAsignatura">Nombre de la Asignatura</label>
        <input type="text" id="nombreAsignatura" placeholder="pon aqui tu asignatura" required>
         <!--Nota de Corte INPUT -->
         <label for="notaCorte">Nota de Corte</label>
        <input type="text" id="notaCorte" placeholder="pon aqui la nota de corte" required>
        
        
        
        <button type="button" class="btn btn-primary" id = "btn1" value = "Registro"></button>
<!--         <a href="listadoAlumnos.jsp">Registro</a> -->
      </form>
    </div>
    
   <script type="text/javascript">
	var http = new XMLHttpRequest();
	document.getElementById("btn1").addEventListener("click", function() {
    	
		var objProfesor = new Object();

		objProfesor.nombre = document.getElementById("nombre").value;
		objProfesor.primerApellido = document.getElementById("primerApellido").value;
		objProfesor.segundoApellido = document.getElementById("segundoApellido").value;
		objProfesor.usuario = document.getElementById("usuario").value;
		objProfesor.password = document.getElementById("password").value;
		objProfesor.notaCorte = document.getElementById("notaCorte").value;
		objProfesor.asignatura = document.getElementById("nombreAsignatura").value;
		
		http.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				alert("Profesor registrado correctamente");
				location.replace("listadoAlumnos.jsp");
			}
		};

		var stringJSONObjProfesor = JSON.stringify(objProfesor);

		//console.log(stringJSONObjPasajero);
		// Formular la peticion

		http.open("Post", "AJAXAltaProfesorController", true);
		http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		http.send("profesor=" + stringJSONObjProfesor);

	});
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
