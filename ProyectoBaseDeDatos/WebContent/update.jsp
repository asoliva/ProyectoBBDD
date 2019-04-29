<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<%@page import="objetoscrm.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update data</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    body, html {
        height: 100%;
        margin-left:5px;
    }

    h1, h2, h3, h4, h5, div {
        font-family: "Amatic SC", sans-serif;
    }

    .menu {
        display: none;
    }

    .bgimg {
        background-repeat: no-repeat;
        background-size: cover;
        background-image: url("balon.jpg");
        min-height: 90%;
    }
</style>
</head>
<body>
<% String valor = request.getParameter("tabla"); 
if(valor.equals("Equipos")){%>
<h1>Campos: </h1>
<h3>idEquipo, nombre, direccion, provincia, poblacion, telefono, fechaFundacion, presupuesto, presidente, vicepresidente </h3>
<hr>
  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idEquipo">idEquipo</label>
    <input type="text" class="form-control" id="idEquipo" placeholder="idEquipo" name="idEquipo">
  </div>
  <div class="form-group">
    <label for="nombreColumna">Nombre de la Columna</label>
    <input type="text" class="form-control" id="nombreColumna" placeholder="nombreColumna" name="nombreColumna">
  </div>
  <div class="form-group">
    <label for="nuevoValor">Nuevo valor</label>
    <input type="text" class="form-control" id="nuevoValor" placeholder="nuevoValor" name="nuevoValor">
    </div>
              <select name="datos" style="visibility:hidden;" id="for">
            <option value="Equipos" selected><b>Equipos</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="ACTUALIZAR DATOS">
</form>
<%}else if(valor.equals("Jugadores")){%>
	<h1>Campos: </h1>
<h3>idJugador, nombre, apellidos, fechaNacimiento, idPais, idDemarcacion</h3>
<hr>
  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idJugador">idJugador</label>
    <input type="text" class="form-control" id="idJugador" placeholder="idJugador" name="idJugador">
  </div>
  <div class="form-group">
    <label for="nombreColumna">Nombre de la Columna</label>
    <input type="text" class="form-control" id="nombreColumna" placeholder="nombreColumna" name="nombreColumna">
  </div>
  <div class="form-group">
    <label for="nuevoValor">Nuevo valor</label>
    <input type="text" class="form-control" id="nuevoValor" placeholder="nuevoValor" name="nuevoValor">
    </div>
            <select name="datos" style="visibility:hidden;" id="for">
            <option value="Jugadores" selected><b>Jugadores</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="ACTUALIZAR DATOS">
</form>
<%}else if(valor.equals("Entrenadores"))
	{%>
	<h1>Campos: </h1>
<h3>idEntrenador, nombre, apellidos, fechaNacimiento, nacionalidad</h3>
<hr>
	  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idEntrenador">idEntrenador</label>
    <input type="text" class="form-control" id="idEntrenador" placeholder="idEntrenador" name="idEntrenador">
  </div>
  <div class="form-group">
    <label for="nombreColumna">Nombre de la Columna</label>
    <input type="text" class="form-control" id="nombreColumna" placeholder="nombreColumna" name="nombreColumna">
  </div>
  <div class="form-group">
    <label for="nuevoValor">Nuevo valor</label>
    <input type="text" class="form-control" id="nuevoValor" placeholder="nuevoValor" name="nuevoValor">
    </div>
            <select name="datos" style="visibility:hidden;" id="for">
            <option value="Entrenadores" selected><b>Entrenadores</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="ACTUALIZAR DATOS">
</form>
	<%}else{ %>
	<h1>No ha seleccionado ninguna tabla.</h1>
	<%} %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>