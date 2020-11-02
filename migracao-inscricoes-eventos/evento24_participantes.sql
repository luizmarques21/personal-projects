START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40283, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'Adriana.persechini@cevalogistics.com', '22764059884', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41103, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803'), 'Aldemir Natucci Rizzo', '11973100303', 'aldemir_rizzo@hotmail.com', '05451548803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 201908, 2, 40, 40, 0, 0, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-21', '2019-08-21', '2019-08-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-08-20 11:27', '2019-08-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), '2019-08-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 41103, 24, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 40, 1, '2019-08-20', '2019-08-20');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41188, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25042497803'), 'Alessandra Pinatti Kinjo', '11994875307', 'Alessandra.kinjo@vetorefitora.com.br', '25042497803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25042497803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25042497803')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-21', '2019-08-21', '2019-08-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-20 17:24', '2019-08-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25042497803')), '2019-08-22', 'Concessão de isenção', '2019-08-21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 41188, 24, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40923, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '71732772134'), 'Alinne Ferreira da Silva de Santana', '6139668300', 'alinne.santana@e-vida.org.br', '71732772134', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '11828089000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39890, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '1141443332', 'anapaula@libertyseguros.com.br', '11227464827', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41208, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14397158827'), 'Andréa Zalotti', '11983893381', 'andrea.zalotti@vetoreditora.com.br', '14397158827', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14397158827')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14397158827')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-21', '2019-08-21', '2019-08-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-20 18:43', '2019-08-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14397158827')), '2019-08-22', 'Concessão de isenção', '2019-08-21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 41208, 24, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41087, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85931870997'), 'Antonio Carlos Ribeiro de Almeida Júnior', '11994613374', 'carlos.wurtz@hotmail.com', '85931870997', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40110, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37003492890'), 'Bruna Pereira Maciel', '11995678301', 'bruna.maciel@vitalwork.com.br', '37003492890', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08585538000117'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38891, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810'), 'Bruna Pinheiro', '11980982095', 'bruna@jamudei.com.br', '39142123810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08585538000117'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38950, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39097, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Care Plus Medicina', '1141979048', 'mhaddad@careplus.com.br', '26450113812', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41110, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti Santos', '81995290606', 'carinas@sjagro.com.br', '04905771480', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41061, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22809302855'), 'Cintia Menezes Carneiro', '11969267997', 'relacionamento@catividade.com.br', '22809302855', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37689, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828'), 'Claudia Zanicheli', '11984373781', 'claudia.zanicheli@jdecoffee.com', '28327825828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02333707000145'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39090, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833'), 'Debora Cristina Inglesi', '11949846353', 'DINGLESI@SESINAISP.ORG.BR', '28348727833', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41189, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39670, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41168, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '95243585068'), 'Felipe Ruschel Trasel', '51998058819', 'felipe.trasel@yahoo.com.br', '95243585068', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41173, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00111469074'), 'Felipe Scuciatto dos Santos', '51997672043', 'felipe@beetouch.com.br', '00111469074', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00111469074')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00111469074')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-21', '2019-08-21', '2019-08-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-20 15:55', '2019-08-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00111469074')), '2019-08-22', 'Concessão de isenção', '2019-08-20');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-20');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 41173, 24, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39663, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41126, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850'), 'Flavia Leite Chicao', '11943880633', 'flchicao@suzano.com.br', '43689986850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '16404287003332'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40108, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863'), 'Galcorr Corretora de Seguros.', '11987576021', 'aline.lima@galcorr.com.br', '22247867863', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41249, 24, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Jocimara Gomes de Assis'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao.abqv@gmail.com', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40694, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865'), 'Joice Correia Teixeira', '11982652330', 'joice.teixeira@cptm.sp.gov.br', '32645907865', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71832679000123'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40271, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817'), 'Jussara Ferreira de Araújo', '11954519577', 'araujojussara@la-bridgestone.com', '26513416817', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '57497539000115'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39110, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40695, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30263503895'), 'Marcela Bianca Rezende Fernandes', '11983468012', 'treinamento@graacc.org.br', '30263503895', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '67185694000150'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40880, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00503254002'), 'Marcos Vinícius Serafim', '5132165256', 'marcossv@sebrars.com.br', '00503254002', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '87112736000130'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39014, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39016, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 'Michelle Cons Andrades', '11987300069', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40006, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15502290875'), 'Mirian Damaris Benaglia', '16982504634', 'mirian.benaglia@hotmail.com', '15502290875', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40109, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Chamma', '11999054797', 'Mona.chamma@hotmail.com', '04279419892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40218, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04230378971'), 'Natali Carol Fritzen', '41999980361', 'natali.fritzen@energienutricao.com.br', '04230378971', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18883888000113'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40099, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Natura Cosméticos S/a', '11999575059', 'claudineiazorzela@natura.net', '27835032805', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41238, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patricia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41194, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patricia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null, 2, '2019-08-21 08:28:42', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), 201908, 1, 40, 0, 0, 0, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-21', '2019-08-21', '2019-08-22', '2019-08-21 08:28:42', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-20 17:47', '2019-08-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), '2019-08-22', 'Inscrição Cancelada', '2019-08-21 08:28:42');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40341, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35292435821'), 'Rafaela Maganhott', '15996062256', 'rm_nutri@yahoo.com.br', '35292435821', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40939, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07684333631'), 'Renata Nayane Nunes Pacheco', '6139668900', 'renata.pacheco@e-vida.org.br', '07684333631', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '11828089000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41183, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953'), 'Rony Tschoeke', '41991968484', 'rony@promovesaude.com.br', '98809636953', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (38987, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39000, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421248845'), 'Rosiney Ramos Acosta', '11941779793', 'rosiney.acosta@brasilprev.com.br', '06421248845', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '27665207000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40100, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32031531816'), 'Sabrina Katsumata de Oliveira', '11999636047', 'sabrinakatsumata@natura.net', '32031531816', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41247, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83006877004'), 'Sibele Faller', '51993262962', 'Sifaller@gmail.com', '83006877004', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83006877004')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83006877004')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-22', '2019-08-22', '2019-08-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-21 09:02', '2019-08-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83006877004')), '2019-08-23', 'Concessão de isenção', '2019-08-21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 41247, 24, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40427, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07245383723'), 'Tais Assis', '21968999975', 'tais.assis@loreal.com', '07245383723', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07245383723')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07245383723')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento: Como favorecer a adesão e garantir resultados positivos em Programa de Saúde', 34, '2019-08-16', '2019-08-16', '2019-08-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-15 08:18', '2019-08-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07245383723')), '2019-08-17', 'Concessão de isenção', '2019-08-15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 58, 40427, 24, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40937, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85793590153'), 'Tatyane de Camargo Aranha Borges', '6139668900', 'tatyane.borges@e-vida.org.br', '85793590153', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '11828089000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39953, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41241, 24, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Tiago Santos'), 'Tiago Santos', '11916967240', 'tiago.santos@workwell.pt', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (41196, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21580470890'), 'Unimed Seguros', '11992160849', 'ligia.meirelles@segurosunimed.com.br', '21580470890', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39954, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26956228807'), 'Unimed Seguros', '11986922843', 'viviane.araujo@segurosunimed.com.br', '26956228807', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (40912, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (39632, 24, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10331095840'), 'Viviane Sanches', '1151848517', 'vssanches@dow.com', '10331095840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60435351000157'), 1, null, 2);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40283);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41103);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41208);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (38891);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41110);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41173);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41249);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40694);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39110);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40006);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40109);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41183);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (38987);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (40100);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41241);

COMMIT;