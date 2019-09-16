<%-- <%@page import="clases.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="models.Model"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
  body {
  margin: 0;
  padding: 0;
  background-color: #FFFFE0;
  background-size: cover;
  font-family: sans-serif;
  height: 100vh;
}



</style>
<meta charset="UTF-8">
<title>Test</title>
<%-- <% Model m = new Model();
	List<Asignatura> asignaturas = m.getAsignaturas();
%>
 --%>
</head>
<body>
<!-- 	Pregunta 1 -->
<!-- <form action="#"> -->
<div style="margin-left: 50px">
<h1>Test de Evaluación</h1>
	<div id = "ps1">
		<label for = "r1">Pregunta 1: ¿Quién era el dios romano de la guerra?</label>
	</div>
	<div id = "rs1">
		<input type="radio" name="r1" id="r1a" value="a"> Ares<br>
		<input type="radio" name="r1" id="r1b" value="b"> Júpiter<br>
		<input type="radio" name="r1" id="r1c" value="c"> Marte<br>
		<input type="radio" name="r1" id="r1d" value="d"> Belerofonte
	</div>
	
	<!-- 	Pregunta 2 -->
	<div id = "ps2">
		<label for = "r2">Pregunta 2: Según la leyenda, ¿cómo murió el Papa Adriano IV en 1159?</label>
	</div>
	<div id = "rs2">
		<input type="radio" name="r2" id="r2" value="a"> Tragándose una mosca<br>
		<input type="radio" name="r2" id="r2" value="b"> Cayéndose de un balcón<br>
		<input type="radio" name="r2" id="r2" value="c"> Chocándose contra una puerta<br>
		<input type="radio" name="r2" id="r2" value="d"> Cayéndose de un caballo
	</div>
	
	<!-- 	Pregunta 3 -->
	<div id = "ps3">
		<label for = "r3">Pregunta 3: ¿Cuántos tentáculos tiene un calamar?</label>
	</div>
	<div id = "rs3">
		<input type="radio" name="r3" id="r3" value="a"> 4<br>
		<input type="radio" name="r3" id="r3" value="b"> 8<br>
		<input type="radio" name="r3" id="r3" value="c"> 10<br>
		<input type="radio" name="r3" id="r3" value="d"> 20
	</div>
	
	<!-- 	Pregunta 4 -->
	<div id = "ps4">
		<label for = "r4">Pregunta 4: Aproximadamente, ¿qué porcentaje de la superficie de la Tierra es agua?</label>
	</div>
	<div id = "rs4">
		<input type="radio" name="r4" id="r4" value="a"> 10%<br>
		<input type="radio" name="r4" id="r4" value="b"> 50%<br>
		<input type="radio" name="r4" id="r4" value="c"> 70%<br>
		<input type="radio" name="r4" id="r4" value="d"> 90%
	</div>
	
	<!-- 	Pregunta 5 -->
	<div id = "ps5">
		<label for = "r5">Pregunta 5: ¿Cuál es el idioma oficial de Brasil?</label>
	</div>
	<div id = "rs5">
		<input type="radio" name="r5" id="r5" value="a"> Brasileño<br>
		<input type="radio" name="r5" id="r5" value="b"> Francés<br>
		<input type="radio" name="r5" id="r5" value="c"> Inglés<br>
		<input type="radio" name="r5" id="r5" value="d"> Portugués
	</div>
	
	<!-- 	Pregunta 6 -->
	<div id = "ps6">
		<label for = "r6">Pregunta 6: ¿Qué significa “palimpsesto”?</label>
	</div>
	<div id = "rs6">
		<input type="radio" name="r6" id="r6" value="a"> Un personaje que carece de seriedad<br>
		<input type="radio" name="r6" id="r6" value="b"> Razonamiento por el que la verdad de una proposición se prueba demostrando la imposibilidad
o absurdo de la proposición contraria<br>
		<input type="radio" name="r6" id="r6" value="c"> Algo que sirve como ayuda auxiliar<br>
		<input type="radio" name="r6" id="r6" value="d"> Manuscrito cuya escritura ha sido eliminada con objeto de escribir otro texto encima
	</div>
	
	<!-- 	Pregunta 7 -->
	<div id = "ps7">
		<label for = "r7">Pregunta 7: ¿En qué año murió Bob Marley?</label>
	</div>
	<div id = "rs7">
		<input type="radio" name="r7" id="r7" value="a"> 1981<br>
		<input type="radio" name="r7" id="r7" value="b"> 1986<br>
		<input type="radio" name="r7" id="r7" value="c"> 1991<br>
		<input type="radio" name="r7" id="r7" value="d"> 2003
	</div>
	
	<!-- 	Pregunta 8 -->
	<div id = "ps8">
		<label for = "r8">Pregunta 8: Deberíamos tomar antibióticos...</label>
	</div>
	<div id = "rs8">
		<input type="radio" name="r8" id="r8" value="a"> Para combatir los virus<br>
		<input type="radio" name="r8" id="r8" value="b"> Contra las infecciones bacterianas<br>
		<input type="radio" name="r8" id="r8" value="c"> Siempre que nos sintamos enfermos<br>
		<input type="radio" name="r8" id="r8" value="d"> ¡Nunca!
	</div>
	
	<!-- 	Pregunta 9 -->
	<div id = "ps9">
		<label for = "r9">Pregunta 9: ¿Cuál es el nombre de la 'herramienta' necesaria para jugar al billar?</label>
	</div>
	<div id = "rs9">
		<input type="radio" name="r9" id="r9" value="a"> Palo<br>
		<input type="radio" name="r9" id="r9" value="b"> Snooker<br>
		<input type="radio" name="r9" id="r9" value="c"> Bubingo<br>
		<input type="radio" name="r9" id="r9" value="d"> Taco
	</div>
	
	<!-- 	Pregunta 10 -->
	<div id = "ps10">
		<label for = "r10">Pregunta 10: ¿Por qué es reconocido Serguéi Rajmáninov?</label>
	</div>
	<div id = "rs10">
		<input type="radio" name="r10" id="r10" value="a"> Por sus contribuciones al mundo de la física cuántica<br>
		<input type="radio" name="r10" id="r10" value="b"> Por sus contribuciones al mundo de la música<br>
		<input type="radio" name="r10" id="r10" value="c"> Por sus contribuciones al mundo de la pintura<br>
		<input type="radio" name="r10" id="r10" value="d"> Por sus contribuciones al mundo de la literatura
	</div>
<!-- </form>	 -->
	
	
	<button  id = "btn1" onclick = "validarTest()"><a href="listadoProfesores.jsp">Enviar</a></button>
	</div>
	
<!-- 	<label for="departamento">Departamento: </label> -->
<!--     <select id="departamentos" name="departamentos"> -->
<!--         <option></option> -->
<%--         <% for(Asignatura d: asignaturas){ %> --%>
<%--         <option value= "<%=d.getId() %>"><%=d.getNombreAsignatura() %> </option> --%>
            	 
<%--             <%  --%>
<!-- //              } -->
<%--              %>  --%>
<!--      </select> -->
	
	<script>
	function validarTest() {
		//alert("Hola");
		var contador = 0;
		var valor; 
		var i;
		
		//Para cada pregunta asi se sumara los puntos 
		//Pregunta 1
		var elementos = document.getElementsByName('r1');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'c') {
					contador++
				}
			}
		}
		
		//Pregunta 2
		var elementos = document.getElementsByName('r2');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'a') {
					contador++
				}
			}
		}
		
		//Pregunta 3
		var elementos = document.getElementsByName('r3');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'b') {
					contador++
				}
			}
		}
		
		//Pregunta 4
		var elementos = document.getElementsByName('r4');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'c') {
					contador++
				}
			}
		}
		
		//Pregunta 5
		var elementos = document.getElementsByName('r5');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'd') {
					contador++
				}
			}
		}
		
		//Pregunta 6
		var elementos = document.getElementsByName('r6');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'd') {
					contador++
				}
			}
		}
		
		//Pregunta 7
		var elementos = document.getElementsByName('r7');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'a') {
					contador++
				}
			}
		}
		
		//Pregunta 8
		var elementos = document.getElementsByName('r8');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'b') {
					contador++
				}
			}
		}
		
		//Pregunta 9
		var elementos = document.getElementsByName('r9');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'd') {
					contador++
				}
			}
		}
		
		//Pregunta 10
		var elementos = document.getElementsByName('r10');
		for(i = 0; i < elementos.length; i++) {
			if(elementos[i].checked) {
				valor = elementos[i].value;
				if(valor == 'b') {
					contador++
				}
			}
		}
		//Element.setAttribute("contador", contador);
		alert(contador);
	}
	/*
	document.getElementById("btn1").addEventListener("click", function() {
		var contador = 0;
		
		/*if(document.getElemetnById("r1").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r2").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r3").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r4").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r4").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r5").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r6").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r7").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r8").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r9").value == 'a') {
			contador++;
		}
		if(document.getElemetnById("r10").value == 'a') {
			contador++;
		}
		*/
		//alert("El resultado del test es " + contador);
	//}
	
// 	document.getElementById("btn1").addEventListener("click", function() {
// 		//alert("Probando");
// 		//Aqui tengo que anhadir la funcion para mostrar el desplegable y poder elegir uno
// 	});
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>