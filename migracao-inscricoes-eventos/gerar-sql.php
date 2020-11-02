<?php

function parse_csv($file, $options = null) {
    $delimiter = empty($options['delimiter']) ? "," : $options['delimiter'];
    $to_object = empty($options['to_object']) ? false : true;
    $str = file_get_contents($file);
    $lines = explode("\n", $str);
    //pr($lines);
    $field_names = explode($delimiter, array_shift($lines));
    foreach ($lines as $line) {
        // Skip the empty line
        if (empty($line)) continue;
        $fields = explode($delimiter, $line);
        $_res = $to_object ? new stdClass : array();
        foreach ($field_names as $key => $f) {
            if ($to_object) {
                $_res->{$f} = $fields[$key];
            } else {
                $_res[utf8_encode($f)] = utf8_encode($fields[$key]);
            }
        }
        $res[] = $_res;
    }
    return $res;
}

function formatarTelefone($telefone, $tipo = 1) {
	if (empty ($telefone)) {
		return $telefone;
	}

	switch ($tipo) {
		case 1 :
			$telefone = str_replace(
				[
					"(",
					")",
					"-",
					" ",
					"_",
				],
				"",
				$telefone
			);
			break;
		case 2 :
			//Retira o caracteres ( ) - e espaços
			$telefone = preg_replace('/[\(\)\s_-]/', "", $telefone);
			// adiciona a mascara
			$telefone = "(" .
				substr($telefone, 0, 2) .
				") " .
				substr($telefone, 2, strlen($telefone) == 11 ? 5 : 4) .
				"-" .
				substr($telefone, strlen($telefone) == 11 ? 7 : 6);
			break;
	}

	return $telefone;
}

function formatarCpf($cpf, $reverse = false) {
	if ($reverse) {
		return substr($cpf, 0, 3) . "." . substr($cpf, 3, 3) . "." . substr($cpf, 6, 3) . "-" . substr($cpf, 9, 2);
	} else {
		return preg_replace("/[^\d]/", "", $cpf);
	}
}

function formatarCnpj($sCNPJ, $bReverse = false) {
	if (empty($sCNPJ)) {
		return $sCNPJ;
	}

	$sCnpjSomenteNumeros = preg_replace("/[^\d]/", "", $sCNPJ);

	if ($bReverse) {
		return substr($sCnpjSomenteNumeros, 0, 2) .
			"." .
			substr($sCnpjSomenteNumeros, 2, 3) .
			"." .
			substr($sCnpjSomenteNumeros, 5, 3) .
			"/" .
			substr($sCnpjSomenteNumeros, 8, 4) .
			"-" .
			substr($sCnpjSomenteNumeros, 12, 2);
	} else {
		return $sCnpjSomenteNumeros;
	}
}

function formatarData($Pdata, $formato = 'y-m-d[ h:i:s]') {
	if (empty ($Pdata) || preg_match('/^\d{2}:\d{2}(:\d{2})?$/', $Pdata)) {
		return $Pdata;
	}

	switch ($formato) {
		case "y-m-d" :
			return implode('-', array_reverse(explode('/', substr($Pdata, 0, 10))));
		case "d/m/y h:i:s" :
			$data_brasil = implode('/', array_reverse(explode('-', substr($Pdata, 0, 10))));
			if (isset($Pdata[11])) {
				$data_brasil .= substr($Pdata, 10, 9);
			} else {
				$data_brasil .= ' 00:00:00';
			}

			return $data_brasil;
		case "d/m/y h:i" :
			return substr(formatarData($Pdata, "d/m/y h:i:s"), 0, 16);
		case "d/m/y" :
			return implode('/', array_reverse(explode('-', substr($Pdata, 0, 10))));
		case "d/m" :
			return substr(formatarData($Pdata, "d/m/y"), 0, 5);
		case "m/y" :
			return substr(formatarData($Pdata, "d/m/y"), 3, 7);
		case "ymd y/m/d" :
			return substr($Pdata, 0, 4) . "-" . substr($Pdata, 4, 2) . "-" . substr($Pdata, 6, 2);
		case "ymd" :
			return str_replace("-", "", formatarData($Pdata));
		case "y/m" :
			return str_replace("-", "/", substr(formatarData($Pdata), 0, 7));
		case "y" :
			return substr(formatarData($Pdata, "y-m-d"), 0, 4);
		case "m" :
			return substr(formatarData($Pdata, "y-m-d"), 5, 2);
		case "d" :
			return substr(formatarData($Pdata, "y-m-d"), 8, 2);
		case "my 01/m/y" :
			return "01/" . substr($Pdata, 0, 2) . "/" . substr($Pdata, 2, 4);
		case "ym my" :
			return substr($Pdata, 4, 2) . substr($Pdata, 0, 4);
		case "ddmmyy y-m-d" :
			$y = substr($Pdata, 4, 2);

			return ($y <= 25 ? "20{$y}" : "19{$y}") . "-" . substr($Pdata, 2, 2) . "-" . substr($Pdata, 0, 2);
		case "h:i" :
			$Pdata = explode(" ", $Pdata);

			return substr($Pdata [1], 0, 5);
			break;
		case 'y-m-d[ h:i:s]':
			$data_mysql = @implode('-', array_reverse(explode('/', substr($Pdata, 0, 10))));
			if (isset($Pdata[11])) {
				$data_mysql .= substr($Pdata, 10, 9);
			}

			return $data_mysql;
		default:
			$data_mysql = @implode('-', array_reverse(explode('/', substr($Pdata, 0, 10))));
			if (isset($Pdata[11])) {
				$data_mysql .= substr($Pdata, 10, 9);
			} else {
				$data_mysql .= ' 00:00:00';
			}

			return $data_mysql;
	}
}

echo "-Lendo arquivo de dados...\n";
$aaInscricoes = parse_csv('Curso do Congresso - avaliação e indicadores.csv', ['delimiter'=>',']);
//var_dump($aaInscricoes[0]);exit();
$iCont = 1;
$iTam = count($aaInscricoes);
$iEventoID = 16;
//$iPerfilCobranca = 5;
//Maximo de 79 chars
$sEventoNome = 'Curso: Avaliação e indicadores em programas de qualidade de vida';
$sDescricaoDivida = "Inscrição em evento: $sEventoNome";
$iTipoDivida = 26;
$sDvaId = "(SELECT max(dva_id) FROM dva_divida)";
$sCbaId = "(SELECT max(cba_id) FROM cba_cobranca)";
$sPgoId = "(SELECT max(pgo_id) FROM pgo_pagamento)";

echo "-Montando arquivo SQL...\n";
$rSQL = fopen("migracao_sql/evento{$iEventoID}_participantes.sql", 'w+');
$sSQLPresenca = "";
$sSQL = "START TRANSACTION;\n\n";

foreach ($aaInscricoes as $aInscricao) {
	echo "Inscrição {$iCont}\n";
	
	//Monta o insert de eve_evento_sindicato_participante
	$sCPF = formatarCpf($aInscricao['CPF']);
	$sTelefone = formatarTelefone($aInscricao['Telefone Celular']);
	$iStatus = $aInscricao['Status'] == 'Confirmado' ? 1 : 2;
	$sDataDeletado = (!empty($aInscricao['Motivo Cancelamento']) && $aInscricao['Motivo Cancelamento'] == '-')
		? formatarData($aInscricao['Motivo Cancelamento'])
		: formatarData($aInscricao['Data Inscrição']);
	$sDataDeletado = $aInscricao['Status'] == 'Cancelada' ? "'" . $sDataDeletado . "'" : "null";
	$iInscricaoDeletada = $aInscricao['Status'] == 'Cancelada' ? 1 : 2;
	$sPsaId = "(SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = ";
	$sPsaId .= !empty($sCPF) ? "(SELECT flo_id FROM flo_filiado WHERE flo_cpf = '{$sCPF}'))" : "(SELECT flo_id FROM flo_filiado WHERE flo_nome = '{$aInscricao['Nome do Inscrito']}'))";
	
	$sSQL .= "INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)\n";
	$sSQL .= "VALUES (";
	$sSQL .= "{$aInscricao['Nº da Inscrição']},";
	$sSQL .= " {$iEventoID},";
	$sSQL .= !empty($sCPF) ? " (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '{$sCPF}')," : " (SELECT flo_id FROM flo_filiado WHERE flo_nome = '{$aInscricao['Nome do Inscrito']}'),";
	$sSQL .= " '{$aInscricao['Nome do Inscrito']}',";
	$sSQL .= " '{$sTelefone}',";
	$sSQL .= " '{$aInscricao['E-mail Principal']}',";
	$sSQL .= " '{$sCPF}',";
	if (!empty($aInscricao['Associado Vinculado']) && $aInscricao['Associado Vinculado'] != $aInscricao['Nome do Inscrito']) {
		$sCNPJ = !empty($aInscricao['CNPJ empresa em que trabalha']) ? formatarCnpj($aInscricao['CNPJ empresa em que trabalha']) : $aInscricao['Associado Vinculado'];
		$sSQL .= !empty($aInscricao['CNPJ empresa em que trabalha']) ? " (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '{$sCNPJ}')," : " (SELECT flo_id FROM flo_filiado WHERE flo_nome = '{$sCNPJ}'),";
	} else {
		$sSQL .= " null,";
	}
	$sSQL .= " $iStatus,";
	$sSQL .= " $sDataDeletado,";
	$sSQL .= " $iInscricaoDeletada";
	$sSQL .= ");\n";
	
	//Monta os inserts relacioniados a pagamento
	$sSQLDivida = "";
	$sSQLCobranca = "";
	$sSQLCobrancaEvento = "";
	$sSQLDesconto = "";
	$sSQLCbaDva = "";
	$sSQLPagamento = "";
	$sSQLPagamentoDivida = "";
	if ($aInscricao['Valor da Inscrição (Original)'] != 'R$ 0') {
		$tDataCadastro = formatarData($aInscricao['Data Inscrição']);
		$sDataVencimento = "'". (new DateTimeImmutable($tDataCadastro))->add(new DateInterval("P1D"))->format('Y-m-d') . "'";
		$sDataLimite = "'". (new DateTimeImmutable($tDataCadastro))->add(new DateInterval("P2D"))->format('Y-m-d') . "'";
		//$iPos = stripos($aInscricao['Valor da Inscrição (Original)'], ',');
		$iValorInscricao = substr($aInscricao['Valor da Inscrição (Original)'], 3);
		$iValorInscricao = strtr($iValorInscricao, ['.'=>'']);
		$sCompetencia = formatarData($aInscricao['Data Inscrição'], 'y') . formatarData($aInscricao['Data Inscrição'], 'm');
		$iSituacaoDivida = 1;
		$iValorPagamento = 0;
		$iValorDesconto = 0;
		$sCancelamentoCobranca = "null";
		$sDataIsencao = "null";
		$iSituacaoCobranca = 1;
		$sDataCancelamentoDivida = "null";
		$sMotivoCancelamentoDivida = "null";
		$iDividaCancelada = 0;
		$iTipoCancelamentoDivida = "null";
		
		$iTipoInscricao = substr($aInscricao['Tipo da Inscrição'], 0, 1);
		switch ($iValorInscricao) {
			case 180:
				$iPerfilCobranca = 6;
				break;
			case 300:
				$iPerfilCobranca = $iTipoInscricao == 2 ? 7 : 8;
				break;
			case 500:
				$iPerfilCobranca = 9;
				break;
			default:
				$iPerfilCobranca = 10;
		}
		
		$sSQLCbaDva = "INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ($sDvaId, $sCbaId);";
		$sSQLCobrancaEvento = "INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', $iPerfilCobranca, {$aInscricao['Nº da Inscrição']}, $iEventoID, $sDvaId);";
		$sSQLDivida .= "INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)\n";
		$sSQLCobranca .= "INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)\n";
		
		if (!empty($aInscricao['Data Pagamento'])) {
			$tDataPagamento = formatarData($aInscricao['Data Pagamento']);
			$iValorPagamento = $iValorInscricao;
			$iSituacaoDivida = 2;
			$iSituacaoCobranca = 3;
			$sSQLPagamento = "INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ($sCbaId, $sPsaId, $iValorPagamento, 1, '$tDataPagamento', '$tDataPagamento');";
			$sSQLPagamentoDivida = "INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ($sDvaId, $sPgoId, $iValorPagamento);";
		} elseif ($aInscricao['Status'] == 'Confirmado') {
			$sDataIsencao = (!empty($aInscricao['Motivo Cancelamento']) && $aInscricao['Motivo Cancelamento'] == '-')
				? formatarData($aInscricao['Motivo Cancelamento'])
				: formatarData($aInscricao['Data Inscrição']);
			$sDataIsencao = "'$sDataIsencao'";
			$iSituacaoDivida = 2;
			$iSituacaoCobranca = 4;
			$sCancelamentoCobranca = "'Concessão de isenção'";
			$iValorDesconto = $iValorInscricao;
			$sSQLDesconto = "INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ($sDvaId, $iValorDesconto, $sCancelamentoCobranca, $sDataIsencao);";
		} elseif ($aInscricao['Status'] == 'Cancelada') {
			$sSQLCobrancaEvento = "";
			$iSituacaoDivida = 1;
			$iSituacaoCobranca = 4;
			$sCancelamentoCobranca = "'Inscrição Cancelada'";
			$sDataIsencao = (!empty($aInscricao['Motivo Cancelamento']) && $aInscricao['Motivo Cancelamento'] == '-')
				? formatarData($aInscricao['Motivo Cancelamento'])
				: formatarData($aInscricao['Data Inscrição']);
			$sDataIsencao = "'$sDataIsencao'";
			$sDataCancelamentoDivida = $sDataIsencao;
			$sMotivoCancelamentoDivida = $sCancelamentoCobranca;
			$iDividaCancelada = 1;
			$iTipoCancelamentoDivida = 1;
		}
		
		$sSQLDivida .= "VALUES ($sPsaId, $sPsaId, $sCompetencia, $iSituacaoDivida, $iValorInscricao, $iValorPagamento, 0, $iValorDesconto, '$sDescricaoDivida', $iTipoDivida, $sDataVencimento, $sDataVencimento, $sDataLimite, $sDataCancelamentoDivida, $sMotivoCancelamentoDivida, $iDividaCancelada, $iTipoCancelamentoDivida);";
		$sSQLCobranca .= "VALUES ($iSituacaoCobranca, $iValorInscricao, '$tDataCadastro', $sDataVencimento, 99, $sPsaId, $sDataLimite, $sCancelamentoCobranca, $sDataIsencao);";
	}
	$sSQL .= !empty($sSQLDivida) ? "$sSQLDivida\n" : "";
	$sSQL .= !empty($sSQLCobranca) ? "$sSQLCobranca\n" : "";
	$sSQL .= !empty($sSQLCbaDva) ? "$sSQLCbaDva\n" : "";
	$sSQL .= !empty($sSQLDesconto) ? "$sSQLDesconto\n" : "";
	$sSQL .= !empty($sSQLCobrancaEvento) ? "$sSQLCobrancaEvento\n" : "";
	$sSQL .= !empty($sSQLPagamento) ? "$sSQLPagamento\n" : "";
	$sSQL .= !empty($sSQLPagamentoDivida) ? "$sSQLPagamentoDivida\n" : "";
	$sSQL .= "\n";
	
	//Monta o insert de eva_evento_sindicato_presenca
	if ($aInscricao['Registro de Presença'] == 'Presente') {
		$sSQLPresenca .= "INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE ({$aInscricao['Nº da Inscrição']});\n";
	}
	
	//$sSQL .= $iCont == $iTam ? ");" : "),\n";
	$iCont++;
}

$sSQL .= "$sSQLPresenca";
$sSQL .= "\nUPDATE eve_evento_sindicato_participante SET flo_id_responsavel = null WHERE flo_id_responsavel = flo_id;";
$sSQL .= "\n\nCOMMIT;";

fwrite($rSQL, $sSQL);
fclose($rSQL);
echo "-Arquivo gerado!\n";
		

/*
$rBash = fopen("migrar.sh", 'w+');
$sBash = "#!/bin/bash\n";
for ($i=3; $i<=40; $i++) {
	$sBash .= "echo \"evento{$i}_participantes.sql\" && \\\n";
	$sBash .= "mysql teste_abqv < evento{$i}_participantes.sql && \\\n";
}
$sBash .= "echo \"Dados migrados com sucesso!!!\"";
fwrite($rBash, $sBash);
fclose($rBash);
*/