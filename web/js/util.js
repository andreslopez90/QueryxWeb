/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function nobackbutton() {
    window.location.hash = "no-back-button";
    window.location.hash = "Again-No-back-button" //chrome
    window.onhashchange = function () {
        window.location.hash = "no-back-button";
    }

}


function setValue(campo, valor, formatofecha) {
    console.log(campo + ":" + valor);
    if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {

        if (formatofecha) {
            valor = valor.substring(0, 10);
            console.log(campo + " substring:" + valor);
        }

        if ($('#' + campo).is('input:radio')) {
            $('input:radio[name=' + campo + ']').filter('[value=' + valor + ']').prop('checked', true);
        } else if ($('#' + campo).is('input:text')) {
            $('#' + campo).val(valor);
        } else if ($('#' + campo).is('input:checkbox')) {
            console.log("is checkbox")
            if (valor === "1") {
                $('#' + campo).prop("checked", true);
            } else if (valor === "0") {
                $('#' + campo).prop("checked", false);
            }
        }
    }
}

function cboLoad(campo, url, selected, deleteopt, tx_none) {
    console.log("cargar campo:" + campo);
    $.get(url, function (responseJson) {
        var $select = $('#' + campo);

        if (deleteopt) {
            $select.find('option').remove();
        }

        if (tx_none !== null) {
            $('<option>').val('').text(tx_none).appendTo($select);
        }

        $.each(responseJson, function (key, value) {
            if (selected === key) {
                $('<option selected="selected">').val(key).text(value).appendTo($select);
            } else {
                $('<option>').val(key).text(value).appendTo($select);
            }
        });
        $('#' + campo).select2();
    });
}