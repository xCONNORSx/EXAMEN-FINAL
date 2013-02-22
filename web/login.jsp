<%-- 
    Document   : login
    Created on : 22-feb-2013, 16:00:05
    Author     : CONNORS
--%>

<%@page contentType="text/html" session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="main" scope="session" class="facade.SIAExtension" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = "";
            String clave = "";
            
            if (request.getParameter("usuario") != null)
                usuario = request.getParameter("usuario");
            
            if (request.getParameter("password") != null)
                clave = request.getParameter("password");
            
            if (main.validarUsuario(usuario, clave))
            {
            HttpSession sesionOk = request.getSession();
            sesionOk.setAttribute("usuario",usuario);
            response.sendRedirect("jsp/principal.jsp");
            }
            else{
                response.sendRedirect("index.jsp?error=usuario o contraseña incorrectos");       
            }
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
