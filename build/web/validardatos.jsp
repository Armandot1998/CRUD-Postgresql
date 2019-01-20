
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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">
                                    <br><img alt="Bootstrap Image Preview"  src="imagenes/Yavirac3.jpg" 
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
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6"><br>
                                    <form role="form" action="validardatos.jsp" method="post" >
                                        <center><h3>Bienvenido </h3></center>

                                        <%
                                            pkgMenu.admin p = new pkgMenu.admin();
                                            p.setUsuario(request.getParameter("usuario"));
                                            p.setcontrasena(request.getParameter("contrasena"));
                                            String res = p.insertar3();
                                            if (res.equals("-1")) {
                                                out.print("Los Datos son Correctos");
                                        %>
                                        <br>
                                        <a href="Inicio.jsp" class="btn btn-success">
                                            <span class="glyphicon glyphicon-ok"></span> Empezar
                                        </a>
                                        <%
                                        } else if (res.equals("1")) {%>

                                        <form role="form" action="validardatos.jsp" method="post" >
                                            <div class="form-group">
                                                <label>
                                                    Usuario:
                                                </label>
                                                <input type="text" name="usuario" class="form-control" id="usuario" required="true" />
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    Contraseña:
                                                </label>
                                                <input type="password" name="contrasena" class="form-control" id="contrasena" required="true" />
                                            </div>
                                            <button type="submit" class="btn btn-primary">
                                                Entrar
                                            </button>
                                            <a href="Empesar/Registro.jsp" class="btn btn-success">
                                                <span class="glyphicon glyphicon-list"></span> Registrarse 
                                            </a>
                                        </form>
                                        <%
                                                out.print("Falló la Autenticación ");
                                            } else {
                                                out.print("Algo anda mal");
                                            }%>
                                        <br>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img alt="Bootstrap Image Preview" src="imagenes/Geston.png" height="440" width="800"  /> 
                        </div>                 
                        <div class="col-md-4">      
                        </div>               
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
        </div>

    </body>
</html>
</body>
</html>
