<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<%@page import="objetoscrm.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert data</title>
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
  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idEquipo">idEquipo(No repetir)</label>
    <input type="text" class="form-control" id="idEquipo" placeholder="idEquipo" name="idEquipo">
  </div>
  <div class="form-group">
    <label for="nombre">Nombre</label>
    <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
  </div>
  <div class="form-group">
    <label for="direccion">Direccion</label>
    <input type="text" class="form-control" id="direccion" placeholder="Direccion" name="direccion">
  </div>
    <div class="form-group">
    <label for="provincia">Provincia</label>
    <input type="text" class="form-control" id="provincia" placeholder="Provincia" name="provincia">
  </div>
    <div class="form-group">
    <label for="poblacion">Poblacion</label>
    <input type="text" class="form-control" id="poblacion" placeholder="Poblacion" name="poblacion">
  </div>
    <div class="form-group">
    <label for="telefono">Telefono</label>
    <input type="text" class="form-control" id="telefono" placeholder="Telefono" name="telefono">
  </div>
    <div class="form-group">
    <label for="fechaFundacion">Fecha de Fundacion (AAAA-MM-DD)</label>
    <input type="text" class="form-control" id="fechaFundacion" placeholder="Fecha de Fundacion" name="fechaFundacion">
  </div>
    <div class="form-group">
    <label for="presupuesto">Presupuesto</label>
    <input type="text" class="form-control" id="presupuesto" placeholder="Presupuesto" name="presupuesto">
  </div>
    <div class="form-group">
    <label for="presidente">Presidente</label>
    <input type="text" class="form-control" id="presidente" placeholder="Presidente" name="presidente">
  </div>
    <div class="form-group">
    <label for="vicepresidente">Vicepresidente</label>
    <input type="text" class="form-control" id="vicepresidente"  placeholder="Vicepresidente" name="vicepresidente">
  </div>
              <select name="datos" style="visibility:hidden;" id="for">
            <option value="Equipos" selected><b>Equipos</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="INSERTAR DATOS">
</form>
<%}else if(valor.equals("Jugadores")){%>
  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idJugador">idJugador(No repetir)</label>
    <input type="text" class="form-control" id="idJugador" placeholder="idJugador" name="idJugador">
  </div>
  <div class="form-group">
    <label for="nombre">Nombre</label>
    <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
  </div>
  <div class="form-group">
    <label for="apellidos">Apellidos</label>
    <input type="text" class="form-control" id="apellidos" placeholder="Apellidos" name="apellidos">
  </div>
    <div class="form-group">
    <label for="fechaNacimiento">Fecha de Nacimiento (AAAA-MM-DD)</label>
    <input type="text" class="form-control" id="fechaNacimiento" placeholder="Fecha de Fundacion" name="fechaNacimiento">
  </div>
    <div class="form-group">
    <label for="idPais">idPais</label>
    <input type="text" class="form-control" id="idPais" placeholder="idPais" name="idPais">
  </div>
    <div class="form-group">
    <label for="idDemarcacion">idDemarcacion</label>
    <input type="text" class="form-control" id="idDemarcacion" placeholder="idDemarcacion" name="idDemarcacion">
  </div>
      <div class="form-group">
    <label for="idEquipoJugador">idEquipo</label>
    <input type="text" class="form-control" id="idEquipoJugador" placeholder="idEquipoJugador" name="idEquipoJugador">
  </div>
            <select name="datos" style="visibility:hidden;" id="for">
            <option value="Jugadores" selected><b>Jugadores</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="INSERTAR DATOS">
</form>
<%}else if(valor.equals("Entrenadores"))
	{%>
	  <form method="post" action="verdatos.jsp">
    <div class="form-group">
    <label for="idEntrenador">idEntrenador(No repetir)</label>
    <input type="text" class="form-control" id="idEntrenador" placeholder="idEntrenador" name="idEntrenador">
  </div>
  <div class="form-group">
    <label for="nombre">Nombre</label>
    <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
  </div>
  <div class="form-group">
    <label for="apellidos">Apellidos</label>
    <input type="text" class="form-control" id="apellidos" placeholder="Apellidos" name="apellidos">
  </div>
    <div class="form-group">
    <label for="fechaNacimiento">Fecha de Nacimiento (AAAA-MM-DD)</label>
    <input type="text" class="form-control" id="fechaNacimiento" placeholder="Fecha de Fundacion" name="fechaNacimiento">
  </div>
    <div class="form-group">
    <label for="Nacionalidad">Nacionalidad</label>
    <input type="text" class="form-control" id="Nacionalidad" placeholder="Nacionalidad" name="Nacionalidad">
  </div>
        <div class="form-group">
    <label for="idEquipoEntrenador">idEquipo</label>
    <input type="text" class="form-control" id="idEquipoEntrenador" placeholder="idEquipoEntrenador" name="idEquipoEntrenador">
  </div>
            <select name="datos" style="visibility:hidden;" id="for">
            <option value="Entrenadores" selected><b>Entrenadores</b></option>
            </select>
            <br>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="INSERTAR DATOS">
</form>
	<%}else{ %>
	<h1>No ha seleccionado ninguna tabla.</h1>
	<%} %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>