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
        <script src="libs/com.jquery.code/1.12.2/jquery.min.js"></script>
        <script src="js/validate.js"></script>

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
                <div class="col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Usuario:</label>
                        <input type="text" id="txt_CedulaLogin" class="form-control input-sm" name="txt_CedulaLogin" onpaste="return false" autocomplete="off"  placeholder="EJ: AGiraldo">
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Contraseña:</label>
                        <input type="text" id="txt_ContrasenaLogin"  class="form-control input-sm" name="txt_ContrasenaLogin" onpaste="return false" autocomplete="off">
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Recurso:</label>
                        <input type="text" id="txt_ContrasenaLogin"  class="form-control input-sm" name="txt_ContrasenaLogin" onpaste="return false" autocomplete="off" placeholder="EJ: SRH" >
                    </div>
                </div>
                <button id="btn_ingresar" name="btn_ingresar" type="button" class="btn pro-btn center-block">
                    Ingresar
                </button>
                <br>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="col-sm-1"></div>
        <footer class="footer hidden-xs">
            <div class="container">
                <p class="text-muted">
                    <span class="label label-success" style="font-size: 15" > QueryXweb | Copyright ©2016 Proservis | Desarrollado por: <strong>Innovacion y Desarrollo</strong></span>
                </p>
            </div>
        </footer>
    </body>
</html>
