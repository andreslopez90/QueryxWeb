
$(document).ready(function () {
    cboLoad();
    $("span.help-block").hide();

    /* Validar campos solo numeros */
    $('.solo-numero').keyup(function () {
        this.value = (this.value + '').replace(/[^0-9]/g, '');
    });
    /* Validar campos solo texto */
    $('.solo-letras').keyup(function () {
        this.value = (this.value + '').replace(/[^a-zA-Z\s]/g, '');
    });
    /*Validar sin espacios*/
    $('.sin-espacios').keyup(function () {
        this.value = (this.value + '').replace(/\s/, '');
    });
    
    /*Evitar Caracteres Especiales*/
    $.validator.addMethod("NoEspeciales",
            function (value, element) {
                return /^[A-Za-z\d=#$%@_ -]+$/.test(value);
            },
            "Nada de caracteres especiales, por favor"
            );
    /*No igual a*/
    $.validator.addMethod(
            "notEqualTo",
            function (elementValue, element, param) {
                return elementValue != param;
            },
            "Value cannot be {0}"
            );
});
