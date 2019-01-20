<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <head>
        <title>Inicio</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/style.css">
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
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
        <header align="right">         
        </header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <form >
                                <div class="form-group">   
                                    <h3 class="text-right text-muted">
                                        Resgistro de Datos
                                    </h3><br>
                                    <b>  Nombres Completos:</b>
                                    <input type="text" name="txtNom" class="form-control" required="true" />
                                </div>
                                <div class="form-group">
                                    <b>Apellidos Completos:</b>
                                    <input type="text" name="txtApe" class="form-control" required="true" />
                                </div>
                                <div class="form-group">
                                    <b>Cedula de Identidad:</b>
                                    <input type="text" name="txtCed" class="form-control" required="true" />
                                </div>
                                <div class="form-group">
                                    <b>Correo Electrónico:</b>
                                    <input type="text" name="txtCor" class="form-control" required="true" />
                                </div>
                                <div class="form-group">
                                    <b>  Nombre de Usuario:</b>
                                    <input type="text" name="txtUse" class="form-control" required="true"/>
                                </div>
                                <div class="form-group">
                                    <b>Contraseña:</b>
                                    <input type="text" name="txtCla" class="form-control" required="true"/>
                                </div>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                                <button  class="btn btn-default">Cancelar</button><br>
                            </form>   
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <%  String nombres, apellidos, cedula, correo, username, contra, estado, tipous;

        nombres = request.getParameter("txtNom");
        apellidos = request.getParameter("txtApe");
        cedula = request.getParameter("txtCed");
        correo = request.getParameter("txtCor");
        username = request.getParameter("txtUse");
        contra = request.getParameter("txtCla");
        estado = "Activo";
        tipous = "Profesor";

        if (nombres != null && apellidos != null && cedula != null && correo != null && username != null && contra != null && estado != null && tipous != null) {
            ps = con.prepareStatement("insert into profesor(Nombres, Apellidos, Cedula, Correo, Username, Clave , tipous, Estado)values('" + nombres + "','" + apellidos + "','" + cedula + "','" + correo + "','" + username + "','" + contra + "','" + estado + "','" + tipous + "')");
            ps.executeUpdate();
            response.sendRedirect("../index.jsp");
        }
    %>
