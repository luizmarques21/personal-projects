START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39179, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06017090801'), 'A.c.camargo Câncer Center', '11991017576', 'valdinete.barreto@accamargo.org.br', '06017090801', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40400, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801'), 'Adilson Gomes', '11999701773', 'adilson.doc@gmail.com', '02699488801', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40021, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '94819696904'), 'Alexander Buarque', '11945637070', 'alexanderbuarque@yahoo.com.br', '94819696904', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '94819696904')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '94819696904')), 201908, 2, 75, 0, 0, 75, 'Inscrição em evento: Encontro Mensal Agosto: O trabalhador: protagonista ou coadjuvante de sua vida?', 33, '2019-08-13', '2019-08-13', '2019-08-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-08-12 17:24', '2019-08-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '94819696904')), '2019-08-14', 'Concessão de isenção', '2019-08-12 17:24');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-08-12 17:24');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 60, 40021, 23, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40674, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01165194872'), 'Alexandre Francisco Margarido Lourenço', '11982883003', 'anaisabel.baccetti@gmail.com', '01165194872', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62476676000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34125, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '1141443332', 'anapaula@libertyseguros.com.br', '11227464827', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40289, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15603773804'), 'Andre Luiz Bini', '1141449500', 'Andre.Beni@eurofarma.com.br', '15603773804', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39226, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879'), 'Andrea Xavier Toledo', '1131552821', 'andrea.toledo@sabara.com.br', '14015423879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Encontro Mensal Agosto: O trabalhador: protagonista ou coadjuvante de sua vida?', 33, '2019-08-07', '2019-08-07', '2019-08-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-06 12:39', '2019-08-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), '2019-08-08', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 60, 39226, 23, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), 75, 1, '2019-08-21', '2019-08-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35209, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12530669813'), 'Andreia Goncalves de Oliveira', '11984565224', 'andreia.oliveira@portoseguro.com.br', '12530669813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60198164000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37186, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819'), 'Anne Victoria de Souza Rodrigues Aleixo', '11976937912', 'anne-vic@hotmail.com', '29662831819', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61383493000180'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39259, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36107, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841'), 'Camila Petit dos Santos', '11961128230', 'camila.petit@unnimax.com.br', '36865988841', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '05827314000186'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39180, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23450980823'), 'Camile Cavalcante Enomoto', '11984391406', 'camile.enomoto@brasilprev.com.br', '23450980823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '27665207000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40680, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27336832849'), 'Cecilia Shibuya', '1150170315', 'cecilia@shibuyapratica.com.br', '27336832849', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '01152567000146'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40275, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05230822660'), 'Claudia Andrea da Silva Tavares Marques', '3891947902', 'CLAUDIA-DEIA@HOTMAIL.COM', '05230822660', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37688, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828'), 'Claudia Zanicheli', '11984373781', 'claudia.zanicheli@jdecoffee.com', '28327825828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02333707000145'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35660, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Companhia Nitro Química Brasileira', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39804, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08223805871'), 'Darlene Regina Henriques Sanchez Garrido', '11997685523', 'darlene.garrido@sesisp.org.br', '08223805871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08223805871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08223805871')), 201908, 2, 75, 0, 0, 75, 'Inscrição em evento: Encontro Mensal Agosto: O trabalhador: protagonista ou coadjuvante de sua vida?', 33, '2019-08-10', '2019-08-10', '2019-08-11', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-08-09 14:01', '2019-08-10', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08223805871')), '2019-08-11', 'Concessão de isenção', '2019-08-09 14:01');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-08-09 14:01');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 60, 39804, 23, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40669, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104182850'), 'Demétrio do Ó Carvalho', '1130509043', 'demetrio.carvalho@hotmail.com', '23104182850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '43721026000131'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104182850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104182850')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Encontro Mensal Agosto: O trabalhador: protagonista ou coadjuvante de sua vida?', 33, '2019-08-17', '2019-08-17', '2019-08-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-16 12:23', '2019-08-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104182850')), '2019-08-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 60, 40669, 23, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104182850')), 75, 1, '2019-08-16', '2019-08-16');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39851, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39666, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40676, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86690647820'), 'Ernst Ludwig Schneider', '11993022777', 'ernstsch@gmail.com', '86690647820', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39850, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39485, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850'), 'Flavia Leite Chicao', '11943880633', 'flchicao@suzano.com.br', '43689986850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '16404287003332'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39753, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11802191801'), 'Gabriela Amanda Silva', '1145738772', 'gabriela.silva@iamspe.sp.gov.br', '11802191801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60747318000162'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40684, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12758977893'), 'Gisele Alves Souza Chinelato', '1132659002', 'gisele.chinelato@segurosunimed.com.br', '12758977893', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41082, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao.abqv@gmail.com', '40733690831', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40162, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368'), 'José Lindoval Aragão Matos', '85999259323', 'jlaragao@bnb.gov.br', '25942212368', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37730, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34478, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803'), 'Leonardo Calix Soares', '11999321712', 'leonardo.calix@sescsp.org.br', '34994120803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40552, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47280876897'), 'Leonardo Souza Nascimento', '11953752565', 'daycristinenascimento@gmail.com', '47280876897', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07376661000165'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40679, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87537559872'), 'Liliana Wakim', '11994344482', 'liliana.wakim@gmail.com', '87537559872', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40174, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07104572511'), 'Lorena de Azevedo Fernandes', '71983280830', 'b868507@bnb.gov.br', '07104572511', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38399, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42346569844'), 'Luana Gama de Mouras', '11986246170', 'ppqv@vsegura.com.br', '42346569844', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '68472307000129'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40681, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30427775884'), 'Luiz Eduardo Rodrigues Coelho', '16991567552', 'luizcoelho@sescsp.org.br', '30427775884', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40078, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32266372823'), 'Marcella Wittner Neto', '11999100483', 'ma.wittner@gmail.com', '32266372823', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32266372823')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32266372823')), 201908, 2, 75, 75, 0, 0, 'Inscrição em evento: Encontro Mensal Agosto: O trabalhador: protagonista ou coadjuvante de sua vida?', 33, '2019-08-13', '2019-08-13', '2019-08-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-08-12 21:46', '2019-08-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32266372823')), '2019-08-14', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 60, 40078, 23, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32266372823')), 75, 1, '2019-08-14', '2019-08-14');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40173, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00946005540'), 'Maria Jacinta de Souza Cardoso', '79998249521', 'mariajacintasc@bnb.gov.br', '00946005540', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39010, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39099, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Melina Cury Haddad', '1141979048', 'mhaddad@careplus.com.br', '26450113812', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '027253470001'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39013, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 'Michelle Cons Andrades', '11987300096', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39382, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15502290875'), 'Mirian Damaris Benaglia', '16982504634', 'mirian.benaglia@hotmail.com', '15502290875', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40678, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Abdelnur Chamma', '11999054797', 'mona.chamma@hotmail.com', '04279419892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40675, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05495191811'), 'Nancy Edith Pinilla Cortes', '11982923271', 'nanypinilla@hotmail.com', '05495191811', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40171, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03619855412'), 'Osoria Maria Soares da Costa', '79991555797', 'OSORIAMSCOSTA@BNB.GOV.BR', '03619855412', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39245, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866'), 'Osvaldo Stevano', '11999333632', 'stevano@maratonaqv.com.br', '04209423866', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20730561000153'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40204, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05852798452'), 'Pollyana Lima Amaral Silva Torres', '82998100078', 'pollyanalamaralst@bnb.gov.br', '05852798452', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40199, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05298149430'), 'Priscila de Araujo Bastos Lima Bahia Vilela', '82999327181', 'priscilablbv@bnb.gov.br', '05298149430', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40889, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31634040813'), 'Rafael Correa Piacenti', '11980610866', 'rafael@ergonomos.com.br', '31634040813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '15447255000174'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39796, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40672, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gnail.com', '35673478100', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39893, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39173, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421248845'), 'Rosiney Ramos Acosta', '11941779793', 'rosiney.acosta@brasilprev.com.br', '06421248845', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '27665207000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40673, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04293580832'), 'Silvia Marchetti', '11971529104', 'silvia.marchetti@globo.com', '04293580832', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37268, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37717, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39449, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880'), 'Werther de Camargo Penteado Busato', '19996019767', 'wpbusato@mmm.com', '05907026880', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '45985371000108'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38093, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01165194872'), 'Alexandre Lourenço', '11982883003', 'lourenco@intermedici.com.br', '01165194872', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62476676000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40553, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Claudineia Zorzela', '11999575059', 'claudineiazorzela@natura.net', '27835032805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39949, 23, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26956228807'), 'Viviane Araújo', '11986922843', 'viviane.araujo@segurosunimed.com.br', '26956228807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40674);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40289);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37186);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40680);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40275);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39804);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40669);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39851);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39666);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40676);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39850);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39753);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40684);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41082);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37730);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40552);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40679);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40681);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40078);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39382);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40678);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40675);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40199);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40889);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40672);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39893);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40673);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40553);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39949);

COMMIT;