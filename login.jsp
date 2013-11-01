<%-- 
    Document   : login
    Created on : 7/10/2013, 10:37:18 PM
    Author     : Erik Martínez Licea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="CSS/Estilo.css">
      <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.2.1/pure-min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Login</title>
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
      <div class="login" align="center">
         <script src="JQuery/jquery-1.10.2.min.js"></script>
         <script src="JQuery/jquery.validate.js"></script>
         <script>
            $(function() {
               $('#formulario').validate({
                  rules :{
                     mail: {
                        required: true,
                        email: true
                     },
                     pass1: {
                        required: true,
                     }
                  },
                  messages: {
                     mail: {
                        required: "Obligatorio",
                        email: "Correo electrónico no válido"
                     },
                     pass1: {
                        required: "Obligatorio"
                     }
                  }
               });
            });
         </script>
         <form class="pure-form pure-form-aligned"id="formulario" action="inicio.jsp" method="post">
            <fieldset>
               <legend>Login</legend>
               <div class="pure-control-group">
                  <input id="email" type="text" class="required" name="mail" placeholder="Correo electrónico" size="25">
               </div>
               <div class="pure-control-group">
                  <input id="pass" type="password" class="required" name="pass1" placeholder="Password" size="25">
               </div>
               <button type="submit" class="pure-button pure-button-primary">Iniciar Sesión</button>
            </fieldset>
         </form>
      </div>
   </body>
</html>
