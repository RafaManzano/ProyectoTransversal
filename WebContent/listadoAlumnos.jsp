<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>

  body {
  margin-left: 50px;
  padding: 0;
  background-color: #E0FFFF;
  background-size: cover;
  font-family: sans-serif;
  height: 100vh;
}



</style>
<%@page import="clases.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="models.Model"%>
<meta charset="UTF-8">
<title>Listado de alumnos</title>
<%
	Model m = new Model();
	//Profesor pr = m.getProfesor(Integer.parseInt(request.getAttribute("contador").toString()));
	//Mientras no tenga la conexion con el id del test se queda asi
	List<Alumno> alumnos = m.getAlumnos(2);
%>
</head>
<body>




	<h1>Alumnos</h1>
	<table border="1">
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Primer Apellido</th>
				<th>Segundo Apellido</th>
			</tr>
		</thead>
		<tbody>
		<%for(Alumno a : alumnos) { %>
	    	<tr>
                <td><%=a.getNombre() %></td>	
                <td><%=a.getPrimerApellido() %></td>
                <td><%=a.getSegundoApellido() %></td>   	
	    	</tr> 
	    	<%} %>	
		</tbody>
	</table><br>

	
	<a href="index.jsp" class="badge badge-primary">Volver al inicio</a>
	
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>