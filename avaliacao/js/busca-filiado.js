$('document').ready(function () {
    $('#valor-busca-mes').hide();
});

$('#filtro-busca').change(function () {
    var filtro = $(this).val();
    alteraInput(filtro);
});

$('#btn-busca').click(function () {
    var filtro = $('#filtro-busca').val();
    var valor;
    if (filtro === 'nome')
        valor = $('#valor-busca-nome').val();
    else
        valor = $('#valor-busca-mes').val();
    buscaResultados(filtro, valor);
});

function alteraInput(filtro) {
    switch(filtro) {
        case 'nome':
            $('#valor-busca-nome').show();
            $('#valor-busca-nome').val('');
            $('#valor-busca-mes').hide();
            break;
        case 'mes':
            $('#valor-busca-mes').show();
            $('#valor-busca-mes').val('01');
            $('#valor-busca-nome').hide();
            break;
    }
}

function buscaResultados(filtro, valor) {
    $.ajax({
        url: "../js/ajax/busca-filiados.ajax.php",
        dataType : "html",
        type : "post",
        data : {
            "filtro" : filtro,
            "valor" : valor
        },
        success : retorno => $("#table-resultado").empty().append(retorno),
        error : retorno => console.log(retorno)
    });

}