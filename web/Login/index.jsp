<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center>
        <form action="validardatos.jsp" method="post">
            usuario:
            <input type="text" name="usuario" size="15" id="usuario"><br>
            palabra clave:
            <input type="password" name="contrasena" size="15" id="contrasena"><br>
            <input type="submit" value="Enviar">
        </form>
        </center>
    </body>
</html>