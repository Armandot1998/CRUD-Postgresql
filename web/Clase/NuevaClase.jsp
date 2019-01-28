<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Inicio</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="shortcut icon" href="../imagenes/Logo.png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcad";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
            PreparedStatement al, c, ps;
            ResultSet ral, rc;
        %> 
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">
                                    <br><img alt="Bootstrap Image Preview"  src="../imagenes/Yavirac3.jpg" 
                                             class="" height="80" width="120" />
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <br><img alt="Bootstrap Image Preview"  src="../imagenes/Geston.png" 
                                     class="" height="80" width="170" />
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
        <header align="right"></header><br>
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <div class="list-group">
                            <a class="list-group-item" > <h3> <i class="fa fa-list fa-fw" aria-hidden="true"></i>&nbsp; Clases</h3></a>
                            <a class="list-group-item" href="Clase/NuevaClase.jsp"><i class="fa fa-plus fa-fw" aria-hidden="true"></i>&nbsp; Nueva Clase</a>
                            <a class="list-group-item" href="#"><i class="fa fa-bars fa-fw" aria-hidden="true"></i>&nbsp; Clases Existentes</a>
                        </div>
                        <div class="list-group">
                            <a class="list-group-item" href="#"> <h3> <i class="fa fa-bell fa-fw" aria-hidden="true"></i>&nbsp; Recordatorios</h3></a>
                            <a class="list-group-item" href="../Recordatorio/Recordatorio.jsp"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Recordatorios</a>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <form >
                                            <div class="form-group">
                                                <h2>
                                                    Requisitos de la Clase
                                                </h2><br>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>&nbsp; Alumnos (cedula) </a>
                                                            </div>
                                                            <div class="caja">
                                                                <select name="txtCed">
                                                                    <option>...</option>
                                                                    <%
                                                                        al = con.prepareStatement("select * from alumno;");
                                                                        ral = al.executeQuery();
                                                                        while (ral.next()) {
                                                                    %> 
                                                                    <option><%= ral.getString("cedula_al")%></option><%}%>
                                                                </select>
                                                            </div><br> 
                                                        </div>
                                                        <div class="col-md-3">      
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-user fa-fw" aria-hidden="true"></i>&nbsp; Docente (cedula)</a>
                                                            </div>
                                                            <div class="caja">
                                                                <select name="txtUsu">
                                                                    <option >...</option>
                                                                    <%
                                                                        c = con.prepareStatement("select * from usuario;");
                                                                        rc = c.executeQuery();
                                                                        while (rc.next()) {
                                                                    %> 
                                                                    <option><%= rc.getString("cedula_us")%></option><%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; Curso</a>
                                                            </div>
                                                            <div class="caja" >
                                                                <select name="txtCur">
                                                                    <option >...</option>
                                                                    <%
                                                                        c = con.prepareStatement("select * from curso;");
                                                                        rc = c.executeQuery();
                                                                        while (rc.next()) {
                                                                    %> 
                                                                    <option><%= rc.getString("curso")%></option><%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-graduation-cap fa-fw" aria-hidden="true"></i>&nbsp; Asignatura</a>
                                                            </div>
                                                            <div class="caja">
                                                                <select name="txtAsg" >
                                                                    <option >...</option>
                                                                    <%
                                                                        c = con.prepareStatement("select * from asignatura;");
                                                                        rc = c.executeQuery();
                                                                        while (rc.next()) {
                                                                    %> 
                                                                    <option><%= rc.getString("asignatura")%></option><%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <button type="submit" class="btn btn-primary">Guardar</button>
                                                <a class="btn btn-default" href="index.jsp">
                                                    <i class="fa fa-sign-out fa-lg"></i> Atras</a>
                                            </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

    <%  String cedula_al, curso, cedula_us, asignatura;

        cedula_al = request.getParameter("txtCed");
        cedula_us= request.getParameter("txtUsu");
        curso = request.getParameter("txtCur");
        asignatura = request.getParameter("txtAsg");

        if (cedula_al != null && curso != null && cedula_us != null && asignatura != null) {
            ps = con.prepareStatement("insert into clase (cedula_al, curso, cedula_us, asignatura) values('" +cedula_al + "','" + curso + "','" + cedula_us + "', '" + asignatura + "');");
            ps.executeUpdate();
            response.sendRedirect("index.jsp");
        }
    %>

</html>
