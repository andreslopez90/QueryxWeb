<%-- 
    Document   : index
    Created on : 25/08/2016, 07:48:19 AM
    Author     : SoporteSRH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>Cliente - Proservis</title>
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

        <!-- Select2: (css) filtro en combox-->
        <link rel="stylesheet" href="libs/com.github/select2/3.5.3/css/select2.css">
        <link rel="stylesheet" href="libs/com.github/select2/3.5.3/css/select2-bootstrap.css ">
        <link rel="stylesheet" href="libs/com.github/select2/3.5.3/css/gh-pages.css">
    </head>
    <body class="container-fluid"><br>
        <form id="cliente" name="cliente" role="form" method="post" action="" onsubmit="">
            <div class="row">
                <div class="col-sm-2 hidden-xs"></div>
                <div class="col-sm-8 col-xs-12 well pro-div">
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <img src="img/logo.png" class="img-responsive hidden-xs" width="200" height="75"> 
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <h3><strong>Interfaz Cliente</strong></h3>
                        </div>
                        <div class="col-sm-4 col-xs-12"></div>
                    </div><hr class="pro-btn">
                    <strong style="color: #0044cc">Informacion General del cliente: 
                        <button type="button" class="btn btn-default glyphicon glyphicon-minus btn-xs" data-toggle="collapse" data-target="#CollapseInfoGral"></button>
                    </strong>
                    <div id="CollapseInfoGral" class="collapse in">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                                <div class="form-group">
                                    <label style="font-size: 12px">NIT:</label>
                                    <input type="text" name="nit" id="nit" class="form-control input-sm" onpaste="return false" autocomplete="off"  placeholder="EJ: 900455688-6"> 
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Razon Social:</label>
                                    <input type="text" name="razon_social" id="razon_social" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: MILLA 11 SAS">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Nombre Comercial:</label>
                                    <input type="text" name="nom_comercial" id="nom_comercial" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: MILLA 11 SAS">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Lugar:</label>
                                    <select name ="cli_lugar" id ="cli_lugar" class="form-control select2 input-sm">
                                        <option value=''>Departamento/Ciudad</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Direccion Ppal: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="dir_ppal" id="dir_ppal" class="form-control input-sm" onpaste="return false" autocomplete="off"  placeholder="EJ: CARREA 43A  No. 16a  SUR 38. OFICINA 101">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Direccion Entrega Factura: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="dir_factura" id="dir_factura" class="form-control input-sm" onpaste="return false" autocomplete="off"  placeholder="EJ: CARREA 43A  No. 16a  SUR 38. OFICINA 101">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Representante Legal: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="rep_legal" id="rep_legal" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: SANTIAGO ENRICO MAYA GOMEZ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Nombre Contacto 1: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="contacto1" id="contacto1" class="form-control input-sm"  onpaste="return false" autocomplete="off" placeholder="EJ: SANTIAGO ENRICO MAYA GOMEZ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Nombre Contacto 2: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="contacto2" id="contacto2" class="form-control input-sm"  onpaste="return false" autocomplete="off" placeholder="EJ: SANTIAGO ENRICO MAYA GOMEZ">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Contacto Fact/Cartera: - <a data-toggle="modal" data-target="#modalRepLegal" style="color: green">Datos Anexos</a></label>
                                    <input type="text" name="contact_fact-cartera" id="contact_fact-cartera" class="form-control input-sm" onpaste="return false" autocomplete="off"  placeholder="EJ: SANTIAGO ENRICO MAYA GOMEZ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label for="autorretenedor" style="font-size: 12px">¿Es Autorretenedor?</label><br>
                                    <input type="radio" name="autorretenedor" id="autorretenedor" value="S" style="font-size: 12px">&nbsp;Si &nbsp;&nbsp;
                                    <input type="radio" name="autorretenedor" id="autorretenedor" value="N" style="font-size: 12px">&nbsp;No 
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Sector Eonómico:</label>
                                    <select name ="sector_econ" id ="sector_econ" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Comercial</option>
                                        <option value=''>Industrial</option>
                                        <option value=''>Servicios</option>
                                        <option value=''>Gobierno</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Regimen Tributario:</label>
                                    <select name ="reg_tributario" id ="reg_tributario" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Común</option>
                                        <option value=''>Simplificado</option>
                                        <option value=''>Otro</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-6">
                                <div class="form-group">
                                    <label style="font-size: 12px">Tamaño de la Empresa:</label>
                                    <select name ="tam_empresa" id ="tam_empresa" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Grande</option>
                                        <option value=''>Mediana</option>
                                        <option value=''>Pequeña</option>
                                    </select>
                                </div>
                            </div>
                        </div><br>
                    </div>
                    <strong style="color: #0044cc">Informacion Comercial para Contratacion y Facturacion:
                        <button type="button" class="btn btn-default glyphicon glyphicon-minus btn-xs" data-toggle="collapse" data-target="#CollapseInfoComercial"></button>
                    </strong>
                    <div id="CollapseInfoComercial" class="collapse in">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                                <div class="form-group">
                                    <label style="font-size: 12px">Compañia:</label>
                                    <select name ="compania" id ="compania" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Proservis Temporales SAS</option>
                                        <option value=''>Proservis Generales SAS</option>
                                    </select>                            
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Sucursal/Region:</label>
                                    <select name ="suc_reg" id ="suc_reg" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                    </select>                            
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Nombre del Negocio:</label>
                                    <input type="text" name="nom_negocio" id="nom_negocio" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ:  ">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Ejecutivo:</label>
                                    <input type="text" name="ejecutivo" id="ejecutivo" class="form-control solo-letras input-sm" onpaste="return false" autocomplete="off" placeholder="EJ:  ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Reportar Nomina:</label>
                                    <input type="text" name="rep_nomina" id="rep_nomina" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ:  ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Procesar Nomina:</label>
                                    <input type="text" name="proc_nomina" id="proc_nomina" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: ">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Servicio Prestado:</label>
                                    <select name ="serv_prestado" id ="serv_prestado" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Administracion Nomina</option>
                                        <option value=''>Visitas Domiciliarias</option>
                                        <option value=''>Examenes Medicos</option>
                                        <option value=''>Procesos de Seleccion</option>
                                        <option value=''>Otros Servicios</option>
                                        <option value=''>Todos los Anteriores</option>
                                    </select>  
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Dias Cartera:</label>
                                    <input type="text" name="d_cartera" id="d_cartera" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: 8">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Frecuencia Nomina:</label>
                                    <select name ="frec_nomina" id ="frec_nomina" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>Catorcenal</option>
                                        <option value=''>Quincenal</option>
                                        <option value=''>Mensual</option>
                                        <option value=''>Semanal</option>
                                    </select> 
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Empleados a Contratar:</label>
                                    <input type="text" name="emp_contratar" id="emp_contratar" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Cobrar Prestaciones:</label>
                                    <select name ="cob_prestac" id ="cob_prestac" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                        <option value=''>En Nomina</option>
                                        <option value=''>En Liquidacion</option>
                                    </select> 
                                </div>
                            </div>
                        </div>
                        <label align="center" class="center-block" style="color: #0044cc">Facturar Por:</label>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Ciudad:</label>
                                    <select name ="fac_ciudad" id ="fact_ciudad" class="form-control select2 input-sm">
                                        <option value=''>Seleccione..</option>
                                    </select>  
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label for="fac_unica" style="font-size: 12px">¿Factura Unica?</label><br>
                                    <input type="radio" name="fac_unica" id="fac_unica" value="S" style="font-size: 12px">&nbsp;Si &nbsp;&nbsp;
                                    <input type="radio" name="fac_unica" id="fac_unica" value="N" style="font-size: 12px">&nbsp;No 
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Negocio:</label>
                                    <input type="text" name="fac_negocio" id="fac_negocio" class="form-control  input-sm" onpaste="return false" autocomplete="off" placeholder="EJ:  ">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Centro de Costo:</label>
                                    <input type="text" name="fac_ccosto" id="fac_ccosto" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: ">
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="form-group">
                                    <label style="font-size: 12px">Ciudad Entrega Factura:</label>
                                    <input type="text" name="fac_ciudadEntrega" id="fac_ciudadEntrega" class="form-control input-sm" onpaste="return false" autocomplete="off" placeholder="EJ: ">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="center-block">
                            <button type="submit" id="btnRegistrarse" name="btnRegistrarse" class="btn pro-btn center-block" disabled="">Registrarse</button>
                        </div>
                    </div>
                </div>
                <div class="hidden-xs col-sm-2"></div>
            </div>
        </form>

        <!-- Select2: (js) filtro en combox-->
        <script src="libs/com.github/select2/3.5.3/js/select2.js"></script>
        <script>
            $(".select2").select2({placeholder: "Select a State", maximumSelectionSize: 6});
        </script>

        <!--Modal Loading - Inicio-->
        <div class="modal-me fade" id="modalLoading" role="dialog">
            <div class="modal-dialog">
                <div class="modal-me-content">
                    <div class="modal-body" align="center">
                        <img id="myImg" src="image/InternetSlowdown_Day.gif" width="128" height="128">
                    </div>
                </div>
            </div>
        </div>
        <!--Modal Loading - Fin-->

        <!--Modal Rep. Legal - Inicio-->
        <div class="modal fade" id="modalRepLegal" role="dialog">
            <div class="modal-dialog">
                <div class="row">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-8">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" style="color: red">&times;</button>
                                <h4 class="modal-title">Datos Anexos</h4>
                            </div>
                            <form id="login" name="login" role="form" method="post" action="UserAction">
                                <input type="text" name="form" id="form" value="UserLogin" hidden/>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label style="font-size: 12px">Cedula Rep. Legal:</label>
                                                <input type="text" id="txt_CedulaLogin" class="form-control input-sm" name="txt_CedulaLogin" onpaste="return false" autocomplete="off"  placeholder="Cédula"   data-toggle="tooltip" data-placement="top" title="Ingrsese su Número de Cédula">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label style="font-size: 12px">Email:</label>
                                                <input type="text" id="txt_ContrasenaLogin"  class="form-control input-sm" name="txt_ContrasenaLogin" onpaste="return false" autocomplete="off" placeholder="Contraseña"   data-toggle="tooltip" data-placement="top" title="Digite la contraseña proporcionada en el proceso de Registro">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button id="btn-modal-login" name="btn-modal-login" type="button" class="btn btn-success center-block">Ingresar</button>
                                    </div>
                                </div>
                            </form>
                        </div>  
                    </div>
                    <div class="col-xs-2"></div>                         
                </div>
            </div>
        </div>
        <!--Modal Rep. Legal - Fin-->
    </body>
</html>
