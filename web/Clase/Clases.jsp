<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            rs = smt.executeQuery("select * from profesor");
            //Creamo la Tabla:     
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
                <div class="col-md-12">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <a href="../index.jsp" class="btn btn-primary">
                                                        <span class="glyphicon glyphicon-off"></span> Salir
                                                    </a>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h3 class="text-center text-muted">
                                    Agregar Complementos de la Clase
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="nav nav-pills">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="Inicio.jsp">Alumnos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="AgregarAsignatura.jsp">Asignatura</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link disabled" href="AgregarCurso.jsp">Curso</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <form role="form">
                                <div class="form-group">

                                    <label for="exampleInputEmail1">
                                        Curso:
                                    </label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" />
                                </div>                 
                                <button type="submit" class="btn btn-primary">
                                    Agregar
                                </button>
                            </form>
                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
</body>
</html>