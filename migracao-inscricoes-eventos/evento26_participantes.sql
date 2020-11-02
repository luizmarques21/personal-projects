START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41986, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'adriana.persechini@cevalogistics.com', '22764059884', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43597, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863'), 'Aline Andrade de Lima', '11992088311', 'aline.lima@galcorr.com.br', '22247867863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '70204870000168'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43570, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16931731823'), 'Andréa Tomanik de Azevedo', '1131497100', 'andreatomanik@hotmail.com', '16931731823', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42155, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879'), 'Andrea Xavier Todelo', '1131552880', 'andrea.toledo@sabara.com.br', '14015423879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), 201908, 2, 75, 0, 0, 75, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-27', '2019-08-27', '2019-08-28', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-08-26 15:19', '2019-08-27', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), '2019-08-28', 'Concessão de isenção', '2019-08-28');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-08-28');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 42155, 26, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41030, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12530669813'), 'Andreia Goncalves de Oliveira', '1123935020', 'andreia.oliveira@portoseguro.com.br', '12530669813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60198164000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43575, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819'), 'Anne Victoria de Souza Rodrigues Aleixo', '11976937912', 'avsraleixo@sompo.com.br', '29662831819', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61383493000180'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43780, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08921145842'), 'Avon Cosmeticos Ltda', '11982250842', 'meire.blumen@avon.com', '08921145842', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42760, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42904, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Claudinéia Zorzela', '1144462193', 'claudineiazorzela@natura.net', '27835032805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43629, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19268021870'), 'Cleia Marcia Ancelmo de Araujo Vilela de Lima', '11959940442', 'cmvilela@haoc.com.br', '19268021870', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41623, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Companhia Nitro Química Brasileira', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43626, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15158911860'), 'Cristiane Maria Talala Zogheib', '11987384008', 'cristiane.talala@haoc.com.br', '15158911860', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42897, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803'), 'Cynthia Oliveira', '11995123409', 'ocynthia@omint.com.br', '22983479803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '44673382000190'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-30', '2019-08-30', '2019-08-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-29 13:09', '2019-08-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), '2019-08-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 42897, 26, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), 75, 1, '2019-08-31', '2019-08-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42893, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '11982696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43711, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882'), 'Egly Camara', '11996200759', 'camaraegly@gmail.com', '13493494882', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39682, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11996664778', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43009, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863'), 'Ellen Cristina Bonni Fischer', '11985766594', 'efischer@elopar.com.br', '33840351863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41983, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33763841857'), 'Eurofarma Laboratórios S/a', '1141449549', 'bruna.costa@eurofarma.com.br', '33763841857', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42774, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37420319880'), 'Fernanda Alves de Souza', '11953434325', 'coordenacao@catividade.com.br', '37420319880', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43694, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22865991814'), 'Fernanda Kuroda', '11975478694', 'fernanda.kuroda@br.nestle.com', '22865991814', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60409075000152'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42892, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538383', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42845, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26772578821'), 'Gym-one', '55119505025', 'alexandre.soares@gym-one.com.br', '26772578821', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '25040144000100'), 2, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26772578821')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26772578821')), 201908, 1, 75, 0, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-30', '2019-08-30', '2019-08-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 75, '2019-08-29 10:15', '2019-08-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26772578821')), '2019-08-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 42845, 26, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43294, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47113003842'), 'Jackson Pereira de Carvalho', '11953489887', 'jackson.carvalho@celebrecorretora.com.br', '47113003842', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47113003842')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47113003842')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-31', '2019-08-31', '2019-09-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-30 17:11', '2019-08-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47113003842')), '2019-09-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 43294, 26, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47113003842')), 75, 1, '2019-08-31', '2019-08-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43302, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33146885808'), 'Janaina Augusto', '11988541883', 'enfermagem@celebrecorretora.com.br', '33146885808', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33146885808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33146885808')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-31', '2019-08-31', '2019-09-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-30 17:19', '2019-08-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33146885808')), '2019-09-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 43302, 26, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33146885808')), 75, 1, '2019-08-31', '2019-08-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42449, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43591, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43081, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865'), 'Joice Correia Teixeira', '11982652330', 'joice.teixeira@cptm.sp.gov.br', '32645907865', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71832679000123'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42687, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33627625811'), 'Karen Cristina Souza Belmiro', '11951736244', 'karen.belmiro@espm.br', '33627625811', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39113, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42747, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871'), 'Kátia Cristina Luz Barbosa de Oliveira', '11997898776', 'katia.oliveira@dataprev.gov.br', '01432387871', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '42422253001922'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42089, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32188917871'), 'Keila Silva de Andrade', '11980451839', 'keila.sv.andrade@gmail.com', '32188917871', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '56991441000157'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43147, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04077736650'), 'Leonardo Piovesan Mendonca', '11992181440', 'LEONARDO.MENDONCA@HAOC.COM.BR', '04077736650', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38409, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42346569844'), 'Luana Gama de Mouras', '11986246170', 'ppqv@vsegura.com.br', '42346569844', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '68472307000129'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42472, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869'), 'Luiz Fernando de Barros', '11996262950', 'peritomoto@gmail.com', '09609883869', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42793, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857'), 'Marcela Souza Dias', '11984013637', 'educathus@gmail.com', '34051209857', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20088008000169'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42762, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15752121884'), 'Marina Ferreira', '11997856000', 'marina.ferreira@br.zurich.com', '15752121884', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15752121884')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15752121884')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-29', '2019-08-29', '2019-08-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-28 17:44', '2019-08-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15752121884')), '2019-08-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 42762, 26, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15752121884')), 75, 1, '2019-08-28', '2019-08-28');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42909, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13142334831'), 'Marta Moreno', '1144462193', 'martamoreno@natura.net', '13142334831', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43750, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Melina Cury 26450113812', '1141979048', 'mhaddad@careplus.com.br', '26450113812', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02725347000'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42695, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 'Michelle Cons Andrades', '11987300069', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43735, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Chamma', '1199054797', 'Mona.chamma@hotmail.com', '04279419892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42836, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36850465864'), 'Nicolle Laffi', '11974375327', 'nicolle.laffi@gmail.com', '36850465864', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36850465864')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36850465864')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Desafios de se manter programas de qualidade de vida ao longo dos tempos', 36, '2019-08-30', '2019-08-30', '2019-08-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-29 09:30', '2019-08-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36850465864')), '2019-08-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 42836, 26, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36850465864')), 75, 1, '2019-08-31', '2019-08-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (42952, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patrícia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43752, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16238259892'), 'Rosana de Barros Marques', '13996056255', 'rosanabm.psi@gmail.com', '16238259892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41029, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09397179802'), 'Rosilene Arruda Meolo', '11946464571', 'rosilene.melo@portoseguro.com.br', '09397179802', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61198164000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37269, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41167, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43049, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30971650888'), 'Vanessa Ferreira', '11946670554', 'Vanessa.ferreira@bp.org.br', '30971650888', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41892, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93174527600'), 'Wagner Lima dos Santos Junior', '11983547765', 'wagner.lima@mindself.com.br', '93174527600', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31381164000130'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43760, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880'), 'Werther de Camargo Penteado Busato', '19996019767', 'wpbusato@mmm.com', '05907026880', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '459853710018'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43820, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33307731890'), 'Zilda Figueiredo Martins', '11968195467', 'zilda_martins@yahoo.com.br', '33307731890', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (43676, 26, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26956228807'), 'Viviane Oliveira de Araújo da Silva', '11986922843', 'viviane.araujo@segurosunimed.com.br', '26956228807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41986);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43570);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42155);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41030);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42904);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43629);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43626);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42897);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42893);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43711);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39682);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43009);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42774);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43694);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42892);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43294);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43302);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42449);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43591);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43081);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42687);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39113);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42747);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43147);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42472);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42793);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42762);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43750);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42695);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42836);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42952);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43752);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41029);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41167);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41892);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43760);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43820);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (43676);

COMMIT;