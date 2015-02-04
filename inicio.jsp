<%-- 
    Document   : inicio
    Created on : 16/10/2013, 07:55:44 PM
    Author     : Erik Martínez Licea
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Bienvenido</title>
   </head>
   <body>
      <%
         String email = request.getParameter("mail");
         String password = request.getParameter("pass1");
         
         Class.forName("org.postgresql.Driver");
         Connection connection = null;
         connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/FCiencias", "postgres", "1958201");
         Statement st = connection.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM Usuario WHERE correo =" + "'" + email + "'");
         if (rs.next()) {
            String contrasena = rs.getString("contrasena");
            if (contrasena.equals(password)) {
               String nombre = rs.getString("nombre");
               String tipo = rs.getString("tipo");
               session.setAttribute("Correo", email);
               session.setAttribute("Nombre", nombre);
               if (tipo.equals("Usuario")) {
                  response.sendRedirect("inicioUsuario.jsp");
               } else {
                  response.sendRedirect("inicioCreativo.jsp");
               }
            } else {
               response.sendRedirect("error.jsp");
            }
         } else {
            response.sendRedirect("error.jsp");
         }
         rs.close();
         st.close();
      %>
   </body>
</html>
