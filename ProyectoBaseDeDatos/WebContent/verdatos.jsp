<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<%@page import="objetoscrm.*"%>

<%
try {
	String aux=session.getAttribute("usuario").toString();
} catch (Exception e) {
	response.sendRedirect("cerrarsesion.jsp");
}
%>
<html>
<head>
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
<script>
function hideshow(){
var frm=document.form1;
if(frm.style.display=="block"){frm.style.display="none"}
else
if(frm.style.display=="none"){frm.style.display="block"}
}
</script>
<%
String valor = request.getParameter("datos");
String tabla = request.getParameter("datos");
beanDB basededatos = new beanDB();
%>
<h1><%=session.getAttribute("usuario") %>: Estos son los datos</h1>
<hr/>
        <form action="insert.jsp" method="post">
        <select id="t" name="tabla" style="visibility:hidden;">
      <option value="<%=request.getParameter("datos")%>" selected><%=request.getParameter("datos")%></option>
      </select>    
<div style="margin-top:40px">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="bienvenido.jsp" class="w3-button w3-xxlarge w3-black float:left">PAGINA PRINCIPAL</a>
            </div>
	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="INSERTAR DATOS">
        </form>
        
                    <form action="update.jsp" method="post">   
                    <select id="t" name="tabla" style="visibility:hidden; float:right">
      <option value="<%=request.getParameter("datos")%>" selected><%=request.getParameter("datos")%></option>
      </select>
      	<input style="margin-top:10px; font-family: Amatic SC, sans-serif;" type="submit" class="w3-button w3-xxlarge w3-black" value="ACTUALIZAR DATOS">
        </form>

     
	<% 
		//INSERTAR VALORES
	String idEquipo = request.getParameter("idEquipo") + ",";
	String nombre = "'" + request.getParameter("nombre") + "',";
	String direccion = "'" + request.getParameter("direccion") + "',";
	String provincia = "'" + request.getParameter("provincia") + "',";
	String poblacion = "'" + request.getParameter("poblacion") + "',";
	String telefono = request.getParameter("telefono");
	String fechaFundacion = "'" + request.getParameter("fechaFundacion") + "',";
	String presupuesto = request.getParameter("presupuesto"); 
	String presidente = "'" + request.getParameter("presidente") + "',"; 
	String vicepresidente = "'" + request.getParameter("vicepresidente") + "')"; 
	String insert = "INSERT INTO " + tabla + " VALUES(" + idEquipo + nombre + direccion + provincia + poblacion + telefono + "," + fechaFundacion + presupuesto + "," + presidente + vicepresidente;
        %> 
        <%
    	if (valor.equals("Jugadores")) { 
    		String idJugador = request.getParameter("idJugador") + ",";
    		String nombreJ = "'" + request.getParameter("nombre") + "',";
    		String apellidos = "'" + request.getParameter("apellidos") + "',";
    		String fechaNacimiento = "'" + request.getParameter("fechaNacimiento") + "',";
    		String idPais = request.getParameter("idPais") + ",";
    		String idDemarcacion = request.getParameter("idDemarcacion");
    		String idEquipo2 = request.getParameter("idEquipoJugador");
    		insert = "INSERT INTO " + tabla + " VALUES(" + idJugador + nombreJ + apellidos + fechaNacimiento + idPais + idDemarcacion + ")";
    		String insert2 = "INSERT INTO Jugador_Club VALUES(" + idJugador + idEquipo2 + ")";;
    		basededatos.insert(insert);
    		basededatos.insert(insert2);
    		}
    	else if (valor.equals("Entrenadores")) { 
    		String idEntrenador = request.getParameter("idEntrenador") + ",";
    		String nombreJ = "'" + request.getParameter("nombre") + "',";
    		String apellidos = "'" + request.getParameter("apellidos") + "',";
    		String fechaNacimiento = "'" + request.getParameter("fechaNacimiento") + "',";
    		String nacionalidad = "'" + request.getParameter("Nacionalidad") + "'";
    		String idEquipo2 = request.getParameter("idEquipoEntrenador");
    		insert = "INSERT INTO " + tabla + " VALUES(" + idEntrenador + nombreJ + apellidos + fechaNacimiento + nacionalidad + ")";
    		String insert2 = "INSERT INTO Entrenador_Club VALUES(" + idEntrenador + idEquipo2 + ")";;
    		basededatos.insert(insert);
    		basededatos.insert(insert2);
    		}
        %>  
         
        <%//ACTUALIZAR DATOS
        if (valor.equals("Equipos")) {
    	idEquipo = request.getParameter("idEquipo");
        String nombreColumna = request.getParameter("nombreColumna") + "=";
        String nuevoValor = "'" + request.getParameter("nuevoValor") + "'";
        String update = "UPDATE " + valor + " SET " + nombreColumna + nuevoValor + " WHERE idEquipo =" + idEquipo;
        basededatos.update(update);
        }
        else if (valor.equals("Jugadores")) { 
    		String idJugador = request.getParameter("idJugador");
    		String nombreColumna = request.getParameter("nombreColumna") + "=";
    		String nuevoValor = "'" + request.getParameter("nuevoValor") + "'";
    		String update = "UPDATE " + valor + " SET " + nombreColumna + nuevoValor + " WHERE idJugador =" + idJugador;
            basededatos.update(update);
    		}
    	else if (valor.equals("Entrenadores")) { 
    		String idEntrenador = request.getParameter("idEntrenador");
    		String nombreColumna = request.getParameter("nombreColumna") + "=";
    		String nuevoValor = "'" + request.getParameter("nuevoValor") + "'";
    		String update = "UPDATE " + valor + " SET " + nombreColumna + nuevoValor + " WHERE idEntrenador =" + idEntrenador;
            basededatos.update(update);
    	}
        %>
			<div style="margin-top:50px">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="cerrarsesion.jsp" class="w3-button w3-xxlarge w3-black">SALIR</a></p>
        </div>
<hr/>
<br/>

<%
String query="select idEquipo, nombre, direccion from Equipos";
basededatos.insert(insert);
String [][] tablares = basededatos.resConsultaSelectA3(query);
ArrayList<Equipos> listaEquipos = new ArrayList<Equipos>();
for (int i=0; i<tablares.length;i++) {
	listaEquipos.add(new Equipos(tablares[i][0],tablares[i][1],tablares[i][2]));
}
%> 

<br>
<% if (valor.equals("Equipos")) { 
%>
<table class="table table-dark">
<thead>
    <tr>
      <th scope="col">idEquipo</th>
      <th scope="col">nombre</th>
      <th scope="col">direccion</th>
    </tr>
  </thead>
<% for (Equipos e:listaEquipos) { //g es una variable tipo grupo que va recorriendo la lista
	%><tr>
	 <td> <%=e.getidEquipo() %> </td>
	 <td> <%=e.getNombre() %> </td>
	 <td> <%=e.getDireccion() %> </td>
	 </tr> <% 
}
%>
</table>
<%} else if(valor.equals("Jugadores")){
	query="select J.idJugador, J.nombre, J.apellidos, e.nombre from Jugadores J JOIN Jugador_Club JC ON (J.idJugador = JC.idJugador) JOIN Equipos e ON (e.idEquipo=JC.idEquipo)";
	basededatos = new beanDB();
	tablares = basededatos.resConsultaSelectA3(query);
	ArrayList<Jugadores> listaJugadores = new ArrayList<Jugadores>();
	for (int i=0; i<tablares.length;i++) {
		listaJugadores.add(new Jugadores(tablares[i][0],tablares[i][1],tablares[i][2],tablares[i][3]));
	}
%>
<table class="table table-dark">
<thead>
    <tr>
      <th scope="col">idJugador</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellidos</th>
      <th scope="col">Equipo</th>
    </tr>
  </thead>
<% for (Jugadores j:listaJugadores) { //g es una variable tipo grupo que va recorriendo la lista
	%><tr>
	 <td> <%=j.getidJugador() %> </td>
	 <td> <%=j.getNombre() %> </td>
	 <td> <%=j.getApellidos() %> </td>
	 <td> <%=j.getEquipo() %> </td>
	 </tr> <% 
}
%>
</table>
<%} else if(valor.equals("Entrenadores")){
	query="select E.idEntrenador, E.nombre, E.apellidos, Eq.nombre from Entrenadores E JOIN Entrenador_Club EC ON (E.idEntrenador=EC.idEntrenador) JOIN Equipos Eq ON (Eq.idEquipo=EC.idEquipo)";
	basededatos = new beanDB();
	tablares = basededatos.resConsultaSelectA3(query);
	ArrayList<Entrenadores> listaEntrenadores = new ArrayList<Entrenadores>();
	for (int i=0; i<tablares.length;i++) {
		listaEntrenadores.add(new Entrenadores(tablares[i][0],tablares[i][1],tablares[i][2],tablares[i][3]));
	}
%>
<table class="table table-dark">
<thead>
    <tr>
      <th scope="col">idEntrenador</th>
      <th scope="col">nombre</th>
      <th scope="col">apellidos</th>
      <th scope="col">Equipo</th>
    </tr>
  </thead>
<% for (Entrenadores en:listaEntrenadores) { //g es una variable tipo grupo que va recorriendo la lista
	%><tr>
	 <td> <%=en.getidEntrenador() %> </td>
	 <td> <%=en.getNombre() %> </td>
	 <td> <%=en.getApellidos() %> </td>
	 <td> <%=en.getEquipo() %> </td>
	 </tr> <% 
}
%>
</table>
<%} else{%>
<h1>No ha seleccionado ningún dato a mostrar.</h1>
<%} %>


<br>
<br>

        <br>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>