<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <head>
        <title>Iniciar Sesión</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();

        %>    

        <div class="super_container">
            <header class="header d-flex flex-row justify-content-end align-items-center trans_300">
                <div class="logo mr-auto">
                    <a href="#">Puntuación</a>
                </div>
                <!-- Navigation -->
                <nav class="main_nav justify-self-end text-right">
                    <ul>
                        <li><a href="../index.jsp">Inicio</a></li>
                        <li><a href="contact.html">Registrarse</a></li>
                    </ul>
                </nav>

            </header>

            <div class="home">
                <div class="home_background_container prlx_parent">
                    <div class="home_background prlx" style="background-image:url(../imagenes/slider_background.jpg)"></div>
                </div>
                <div class="container">
                    <div class="container"><br><br>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="container-fluid">
                                        <br><br><br>
                                        <div class="row">
                                            <div class="col-md-4">
                                            </div>
                                            <div class="col-md-4">
                                                <h3 class="text-right text-muted">
                                                    Ingrese la Información
                                                </h3>
                                            </div>
                                            <div class="col-md-4">
                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                            <form >
                                                <div class="form-group">   
                                                    <b>Nombre de Usuario:</b>
                                                    <input type="text" name="txtUse" class="form-control" required="true" />
                                                </div>
                                                <div class="form-group">
                                                    <b>Contraseña:</b>
                                                    <input type="text" name="txtCla" class="form-control" required="true" />
                                                </div>
                                                <div class="form-group">
                                                    <b>Tipo de Usuario:</b>
                                                    <select name="txtTip" required="true" class="from-control">
                                                        <option valor="Armando"> Profesor</option>
                                                        <option valor="Armando"> Administrador</option>
                                                    </select> 
                                                </div>
                                                <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                                                <button type="submit" class="btn btn-default">Cancelar</button>
                                            </form>
                                        </div> </div>
                                    <br> <br><br><br><br><br><br><br><br>
                                    <div class="col-md-4">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero_side_text_container">
                <div class="double_arrow_container d-flex flex-column">
                    <div class="double_arrow nav_links" data-scroll-to=".icon_boxes">
                    </div>
                </div>
                <div class="hero_side_text">
                    <h2>&emsp;&emsp;Instituto Tecnológico Superior</h2>
                    <h2>&emsp;&emsp;YAVIRAC</h2>
                </div>
            </div>

        </div>
    </body>

    <%       String nom, tip, cla;

        nom = request.getParameter("txtUse");
        cla = request.getParameter("txtCla");
        tip = request.getParameter("txtTip");

        if (nom != null && cla != null && tip != null) {
            ps = con.prepareStatement("select * from profesor where username = '" + nom + "' and clave = '" + cla + "' and tipous = '" + nom + "';");
            ps.executeUpdate();

            response.sendRedirect("../Inicio.jsp");

        }
    %>
