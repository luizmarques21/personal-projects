var form = $('#form-dependente');
var btnAdiciona = $('#adiciona-dependente');
var btnRemove = $('#remove-dependente');
var btnSalvar = $('#btn-salvar');
var btnCancelar = $('#btn-cancelar');
var listDependentes = $('#lista-dependentes');
var iptDependente = $('#dependente-filiado');

$('document').ready(function () {
    form.hide();
    $('#cpf-filiado').mask('999.999.999-99');
    $('#telefone').mask('(99)9999-9999');
    $('#celular').mask('(99)99999-9999');
});

btnAdiciona.click(function () {
    btnRemove.attr('disabled', '');
    form.show();
});

btnCancelar.click(function () {
    limparCampos();
});

btnSalvar.click(function () {
    var dependente = criaDependente();
    if (iptDependente.val() === '') {
        var dependentes = [];
    } else {
        var dependentes = JSON.parse(iptDependente.val());
    }
    dependentes.push(dependente);
    atualizaSelect(dependentes);
    iptDependente.val(JSON.stringify(dependentes));
    limparCampos();
});

btnRemove.click(function () {
    var dependentes = JSON.parse(iptDependente.val());
    var pos = buscarIndice(dependentes, listDependentes.val());
    dependentes.splice(pos, 1);
    iptDependente.val(JSON.stringify(dependentes));
    atualizaSelect(dependentes);
});

function criaDependente() {
    var dependente = {};
    dependente.nome = $('#nome_dependente').val();
    dependente.dataNascimento = $('#data_nascimento_dependente').val();
    dependente.parentesco = $('#parentesco_dependente').val();
    return dependente;
}

function limparCampos() {
    $('.dependente').val('');
    btnRemove.removeAttr('disabled');
    form.hide();
}

function atualizaSelect(dependentes) {
    listDependentes.empty();
    for (var i = 0; i < dependentes.length; i++) {
        var opt = '<option value=\"' + dependentes[i].nome + '\">' + dependentes[i].nome + '</option>';
        listDependentes.append(opt);
    }
}

function buscarIndice(dependentes, nome) {
    for (var i = 0; i < dependentes.length; i++) {
        if (dependentes[i].nome === nome) {
            var pos = i;
        }
    }
    return pos;
}