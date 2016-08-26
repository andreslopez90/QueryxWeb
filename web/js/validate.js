/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function validaciones() {
    $("#login").validate({
        rules: {
            usuario: {
                required: true
            },
            contrasena: {
                required: true
            },
            recurso: {
                required: true
            }
        },
        messages: {
            usuario: {
                required: "Campo Obligatorio"
            },
            contrasena: {
                required: "Campo Obligatorio"
            },
            recurso: {
                required: 'Campo Obligatorio'
            }
        },
        errorElement: "m",
        errorPlacement: function (error, element) {
            error.addClass("help-block");

            element.parents(".col-sm-12").addClass("has-feedback");

            if (element.prop("type") === "input") {
                error.insertAfter(element.parent("label"));
            } else {
                error.insertAfter(element);
            }
        },
        success: function (label, element) {
        },
        highlight: function (element, errorClass, validClass) {
            $(element).parents(".col-sm-12").addClass("has-error").removeClass("has-success");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).parents(".col-sm-12").addClass("has-success").removeClass("has-error");
        }
    });
});

