<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <head>
        <title>Registro Académico</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="RanGO Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
        <link href="../plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="../plugins/slick-1.8.0/slick.css">
        <link href="plugins/icon-font/styles.css" rel="../stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="../styles/responsive.css">
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/Registro";
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

        <div class="super_container">
            <header class="header d-flex flex-row justify-content-end align-items-center trans_200">
                <div class="logo mr-auto">
                    <a href="#">Puntuación</a>
                </div>
                <!-- Navigation -->
                <nav class="main_nav justify-self-end text-right">
                    <ul>
                        <li><a href="Empesar/Registro.jsp">Inicio</a></li>
                        <li><a href="contact.html">Iniciar Sesión</a></li>
                    </ul>
                </nav>

            </header>

            <div class="home">
                <div class="home_background_container prlx_parent">
                    <div class="home_background prlx" style="background-image:url(../imagenes/slider_background.jpg)"></div>
                </div>
                <div class="container">
                    <div class="owl-item hero_slider_item item_1 d-flex flex-column align-items-center justify-content-center">
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <table class="table table-bordered"  id="tablaDatos">
                            <thead>
                                <tr>
                                    <th>Nombres</th>
                                    <th class="text-center">Apellidos</th>
                                    <th class="text-center">Cedula</th>
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
                </div>
            </div>

