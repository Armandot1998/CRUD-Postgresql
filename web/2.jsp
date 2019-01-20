<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        <title>Inicio</title>
    </head>
    <body style="margin-top: 30px">      
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcademico";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            rs = smt.executeQuery("select * from alumno");
            //Creamo la Tabla:     
        %>    
        <div class="container">            
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Agregar Alumno</button>
            <div style="padding-left: 800px" alig="center">                  
                <img src="http://nivelacion.espe.edu.ec/wp-content/uploads/2015/03/LOGO-PRINCIPAL.png"  style="width:350px;height:80px"/>                          
            </div>
        </div>  

        <br>
        <div class="container">               
            <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
            <table class="table table-bordered"  id="tablaDatos">
                <thead>
                    <tr>
                        <th>Nombres</th>
                        <th class="text-center">Apellidos</th>
                        <th class="text-center">Cedula</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody id="tbodys">
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("nombres")%></td>
                        <td class="text-center"><%= rs.getString("apellidos")%></td>
                        <td class="text-center"><%= rs.getString("cedula")%></td>
                        <td class="text-center"><%= rs.getString("estado")%></td>
                        <td class="text-center">

                            <!--<input type="hidden" value="<//= rs.getInt("Id_Usuario")%>" id="Editar"/>
                            <input type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1" value="Editar"/>  -->
                            <a href="" class="btn btn-success">Detalles</a>
                            <a href="" class="btn btn-default">Calificaciones</a>
                            <a href="Editar.jsp?id=<%= rs.getInt("idalumno")%>" class="btn btn-primary">Editar</a>
                           <a href="Delete.jsp?id=<%= rs.getInt("idalumno")%>" class="btn btn-danger">Borrar</a>
                        </td>
                    </tr>
                    <%}%>
            </table>
        </div>        
        <div class="container">          
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Agregar Alumno</h4>
                        </div>
                        <div class="modal-body">
                            <form action="" method="post">
                                <label>Nombres:</label> 
                                <input type="text" name="txtNom" class="form-control" required="true"/><br>
                                <label>Apellidos:</label> 
                                <input type="text" name="txtApe" class="form-control" required="true"/><br>  
                                <label>Cédula:</label> 
                                <input type="text" name="txtCed" class="form-control" required="true"/><br>
                                <b>Estado:</b>
                                <select name="txtEst" required="true" class="from-control">
                                    <option valor="Armando"> Activo</option>
                                    <option valor="Armando"> Inactivo</option>
                                </select> 
                                <br>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>                            
                                    <input type="submit" value="Guardar" class="btn btn-primary"/>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
            <%
                String nom, ape, ced, est;
                nom = request.getParameter("txtNom");
                ape = request.getParameter("txtApe");
                ced = request.getParameter("txtCed");
                est = request.getParameter("txtEst");
                if (nom != null && ape != null && ced != null) {
                    ps = con.prepareStatement("insert into alumno(Nombres, apellidos, cedula, estado)values('" + nom + "','" + ape + "','" + ced + "','" + est + "')");
                    ps.executeUpdate();
                    response.sendRedirect("Inicio.jsp");

                }
            %>
        </div>        
        <script src="js/jquery.js" type="text/javascript"></script>             
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
    </body>
</html>
