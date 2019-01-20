<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validacion de la palabra</title>
    </head>
    <body background="dragon24.jpg">


  <%


   pkgMenu.admin p= new pkgMenu.admin();


       p.setUsuario(request.getParameter("usuario"));
       p.setcontrasena(request.getParameter("contrasena"));


       String res=p.insertar3();


if(res.equals("-1")) {
      out.print("entraste clic aqui para entrar");
              %>
<a href="Inicio.jsp">entrar ya</a>
<%
      }



       else if (res.equals("1")){
         out.print("fallo la autentificacion ");}


       else{
           out.print("algo pasa ");
           }


                %>

        




    </body>
</html>