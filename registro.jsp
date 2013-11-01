<%-- 
    Document   : registro
    Created on : 9/10/2013, 06:51:32 PM
    Author     : Erik Martínez Licea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="CSS/Estilo.css">
      <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.2.1/pure-min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Registro</title>
   </head>
   <body>
      <div class="pure-menu pure-menu-open pure-menu-horizontal" align="center">
		<ul>
		<li><img src="Imagenes/Logo.jpg" width="148" height="132"></li>
		<li><a href="index.html">Inicio</a></li>
		<li><a href="registro.jsp">Registro</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="#">Problemas</a></li>
      <li><a href="#">Contacto</a></li>
		<li>
		<form class="pure-form">
			<input type="text" class="pure-input-rounded" placeholder="Buscar">
		</form>
		</li>
		</ul>
		</div>
      <div class='login' align="center">     
         <form class="pure-form pure-form-aligned">
            <fieldset>
            <legend>Registrate como:</legend>
            <div class="pure-control-group">
               <a class="pure-button pure-button-primary" href="registroUsuario.jsp">Usuario</a>
            </div>
            <div class="pure-control-group">
               <a class="pure-button pure-button-primary" href="registroCreativo.jsp">Creativo</a>
            </div>
            </fieldset>
         </form>
      </div>
   </body>
</html>
