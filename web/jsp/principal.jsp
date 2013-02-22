<%-- 
    Document   : index
    Created on : 20/12/2012, 11:32:09 PM
    Author     : 1150124-1150030
--%>

<%@page contentType="text/html; charset=iso-8859-1" session="true" language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIA</title>
        <link href="css/1/index.css" rel="stylesheet" />
        <link href="css/1/menu.css"  rel="stylesheet" />
    </head>
    <body>

        <div id="banner"></div>

<div id="contenido">
    <h1 style=" text-align: center">Bienvenido al Sistema de Gestión de Cursos de Extensión</h1>
       <br/><br/>
       
        <%
         HttpSession sesionOk = request.getSession();
         
         if (sesionOk.getAttribute("usuario") == null) {
            response.sendRedirect("../index.jsp?error=no ha iniciado sesion");
        } else {
        
        }
         %>
       
       <form action="login.jsp" >
           
           <label for="usuario">Usuario: </label><input type="text" id="usuario" name="usuario" />
           <label for="password">Contraseña: </label><input type="password" id="password" name="password" />
           <input type="submit" value="iniciar sesión" >
           <input type="reset" value="limpiar campos" ><br /><br /><br /><br /><br /><br /><br />
       </form>

</div>
<div id="pie">
    	Copyright Â© 2012
        	Autores: Francisco Bastos   -   Cod: 1150124
                         William Bermon     -   Cod: 1150030
    	<br/>
        Desarrollo De Aplicaciones Web -
        <a href="http://ingsistemas.ufps.edu.co/" target="_blank">Ing.Sistemas</a> -
        <a target="_blank" href="http://ufps.edu.co/">UFPS</a>
</div>
        
        
    </body>
</html>
