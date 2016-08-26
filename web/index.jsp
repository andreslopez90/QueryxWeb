<%-- 
    Document   : index
    Created on : 25/08/2016, 03:38:59 PM
    Author     : SoporteSRH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>QueryXweb - Proservis</title>
        <link rel="icon" href="img/logo.png" type="image/x-icon" />
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0">

        <!--JQuery v1.12.2 -->
        <script src="libs/com.jquery.code/1.12.2/jquery.js"></script>

        <script src="js/validate.js"></script>
        <script src="js/main.js"></script>
        <script src="js/util.js"></script>

        <script type="text/javascript" src="libs/jquery.validate.js"></script>

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.css">
        <script src="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.js"></script>

        <link rel="stylesheet" href="libs/css_pro.css">
    </head>
    <body class="container-fluid">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <h1 style="color: green;font-weight: bold;font-size: 60px">QueryXweb</h1>
            </div>
            <div class="col-sm-7"></div>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-10 row well-lg pro-div">
            <div class="col-sm-7"></div>
            <div class="col-sm-4 pro-div"><br>
                <form id="login" name="login" role="form" method="post" action="">
                    <div class="col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label for="usuario">Usuario:</label>
                            <input type="text" id="usuario" name="usuario" class="form-control input-sm"  onpaste="return false" autocomplete="off"  placeholder="EJ: AGiraldo">
                        </div>
                    </div>
                    <div class="col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label for="contrasena">Contraseña:</label>
                            <input type="password" id="contrasena" name="contrasena" class="form-control input-sm" onpaste="return false" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label for="recurso">Recurso:</label>
                            <input type="text" id="recurso" name="recurso" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: SRH" >
                        </div>
                    </div>
                    <button id="btn_ingresar" name="btn_ingresar" type="submit" class="btn pro-btn center-block">
                        Ingresar
                    </button>
                    <br>
                </form>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="col-sm-1">
        </div>
        <div align="center">
            <footer class="footer hidden-xs">
                <div class="container">
                    <p class="text-muted">
                        <span class="label label-success" style="font-size: 15" > QueryXweb | Copyright ©2016 Proservis | Desarrollado por: <strong>Innovacion y Desarrollo</strong></span>
                    </p>
                </div>
            </footer>
        </div>
    </body>
</html>
