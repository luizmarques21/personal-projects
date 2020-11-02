START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23790, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03678831710'), 'Adeliane Guimaraes Abrao', '21979596382', 'adeliane@equilibrare.com.br', '03678831710', null, 2, '2019-05-14 15:58', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03678831710')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03678831710')), 201905, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-15', '2019-05-15', '2019-05-16', '2019-05-14 15:58', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-14 15:58', '2019-05-15', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03678831710')), '2019-05-16', 'Inscrição Cancelada', '2019-05-14 15:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32006, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801'), 'Adilson Gomes', '11999701773', 'adilson@clm-med.com.br', '02699488801', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801')), 201906, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-06-19 17:36', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32006, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02699488801')), 1500, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33178, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06831286801'), 'Adriana Almeida Braz Galtaroça', '01194791525', 'adriana.galtaroca@bradesco.com.br', '06831286801', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06831286801')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06831286801')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 14:54', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06831286801')), '2019-06-29', 'Concessão de isenção', '2019-06-27 14:54');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 14:54');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33178, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30693, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808'), 'Adriana Coelho Camillo Zanella', '11986167730', 'adriana.zanella@eurofarma.com.br', '34414651808', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-13 08:30', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808')), '2019-06-15', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 30693, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808')), 1485, 1, '2019-08-21', '2019-08-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26327, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17658135810'), 'Adriana de Cassia Gomas', '11996127895', 'adriana@socialconsultoria.com.br', '17658135810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02316802000130'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17658135810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17658135810')), 201905, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-27 10:58', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17658135810')), '2019-05-29', 'Concessão de isenção', '2019-05-27 10:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-05-27 10:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 26327, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (14467, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03028923971'), 'Adriana Fugazza', '4732314570', 'adriana.fugazza@ailos.coop.br', '03028923971', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03028923971')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03028923971')), 201903, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-03-12', '2019-03-12', '2019-03-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-03-11 15:07', '2019-03-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03028923971')), '2019-03-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 14467, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03028923971')), 2475, 1, '2019-05-28', '2019-05-28');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32558, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99117290953'), 'Adriana Schoenhenr', '49991121273', 'ADRIANA@HOTMAIL.COM', '99117290953', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99117290953')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99117290953')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:04', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99117290953')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32558, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33257, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37603293812'), 'Adriane de Almeida Botassio', '1132659688', 'adriane.botassio@segurosunimed.com.br', '37603293812', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37603293812')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37603293812')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:58', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37603293812')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33257, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31831, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08623234790'), 'Alan Carvalho de Lima', '21971388924', 'alandlima1@hotmail.com', '08623234790', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08623234790')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08623234790')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-19 11:01', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08623234790')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 31831, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08623234790')), 750, 1, '2019-06-23', '2019-06-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29704, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36936770851'), 'Alessandra Belickas Carreiro', '11996378259', 'alenutricaoesaude@hotmail.com', '36936770851', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36936770851')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36936770851')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-10', '2019-06-10', '2019-06-11', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-09 20:28', '2019-06-10', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36936770851')), '2019-06-11', 'Concessão de isenção', '2019-06-09 20:28');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-09 20:28');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 29704, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31822, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '61604313315'), 'Alexander Gaya', '11989302434', 'Alexander.gaya@resmed.com', '61604313315', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '61604313315')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '61604313315')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 10:43', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '61604313315')), '2019-06-21', 'Concessão de isenção', '2019-06-19 10:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 10:43');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31822, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33180, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863'), 'Aline Andrade de Lima', '11992088311', 'aline.lima@galcorr.com.br', '22247867863', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 14:55', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863')), '2019-06-29', 'Concessão de isenção', '2019-06-27 14:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 14:55');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33180, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25158, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93812710030'), 'Aline Calefi Lima', '41984280778', 'aline.lima@ssitemafiep.org.br', '93812710030', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93812710030')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93812710030')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-21 13:38', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93812710030')), '2019-05-23', 'Concessão de isenção', '2019-05-21 13:38');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-21 13:38');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25158, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31983, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40104407832'), 'Aline da Silva Pereira', '11992604012', 'aline.pereira@acsc.org.br', '40104407832', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60922168000771'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40104407832')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40104407832')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-19 16:44', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40104407832')), '2019-06-21', 'Concessão de isenção', '2019-06-19 16:44');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-19 16:44');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31983, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29396, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810'), 'Aline Damarys de Oliveira', '11981804994', 'saudebemestar@intercement.com', '37458206810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62258884000136'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-07 14:13', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810')), '2019-06-09', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 29396, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810')), 1485, 1, '2019-07-23', '2019-07-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34086, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Aline Novelli'), 'Aline Novelli', '1132666497', 'alinenovelli@itsseg.com', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32805, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33299580817'), 'Aline Viana da Silva', '11962571778', 'ALINE.VIANA@BABCOCKINTERNATIONAL.COM.BR', '33299580817', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33299580817')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33299580817')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:48', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33299580817')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:48');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:48');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32805, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31442, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41640180893'), 'Amanda Cristina de Lima da Cunha', '11949640972', 'amanda.cunha@ossantacatarina.org.br', '41640180893', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60922168000186'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41640180893')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41640180893')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-17 17:22', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41640180893')), '2019-06-19', 'Concessão de isenção', '2019-06-17 17:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-17 17:22');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31442, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32552, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35160316892'), 'Amanda Figueiredo Bittencourt', '13997760910', 'AMANDA@TPASAUDE.COM.BR', '35160316892', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35160316892')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35160316892')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:58', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35160316892')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32552, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34200, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Amanda Martins'), 'Amanda Martins', '1150170315', 'AMANDA@shibuyapratica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33181, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24548899863'), 'Amélia Nogueira Dequech', '11959185323', 'area.medica@euroseg.com.br', '24548899863', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24548899863')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24548899863')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 14:56', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24548899863')), '2019-06-29', 'Concessão de isenção', '2019-06-27 14:56');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 14:56');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33181, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27136, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830'), 'Ana Cláudia Fávero', '11982950660', 'medclau77@yahoo.com.br', '25992369830', null, 2, '2019-05-29 11:19', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), 201905, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-30', '2019-05-30', '2019-05-31', '2019-05-29 11:19', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-29 11:19', '2019-05-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), '2019-05-31', 'Inscrição Cancelada', '2019-05-29 11:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24277, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03598156774'), 'Ana Cláudia Murillo Maciel', '21981639316', 'ana.maciel.tst@gmail.com', '03598156774', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03598156774')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03598156774')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-16 15:37', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03598156774')), '2019-05-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 24277, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03598156774')), 2750, 1, '2019-09-26', '2019-09-26');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24545, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89286197772'), 'Ana Lucia da Silva Correa', '21996348871', 'alscorrea@hotmail.com', '89286197772', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89286197772')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89286197772')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-18', '2019-05-18', '2019-05-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-17 11:46', '2019-05-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89286197772')), '2019-05-19', 'Concessão de isenção', '2019-05-17 11:46');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-17 11:46');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 24545, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34097, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ana Lucia de Castro Rizzi'), 'Ana Lucia de Castro Rizzi', '11941662769', 'arizzi@qualicorp.com.br', '', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ana Lucia de Castro Rizzi')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ana Lucia de Castro Rizzi')), 201907, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-03', '2019-07-03', '2019-07-04', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-07-02 10:47', '2019-07-03', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ana Lucia de Castro Rizzi')), '2019-07-04', 'Concessão de isenção', '2019-07-02 10:47');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-07-02 10:47');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 34097, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30532, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16996820898'), 'Ana Maria de Souza', '1131654811', 'amso@euroseg.com.br', '16996820898', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '65822546000173'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16996820898')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16996820898')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-13', '2019-06-13', '2019-06-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-12 14:47', '2019-06-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16996820898')), '2019-06-14', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 30532, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16996820898')), 1485, 1, '2019-06-14', '2019-06-14');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31985, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32554105847'), 'Ana Paula Acacio de Arruda', '11998488865', 'anapaula.arrudaa@yahoo.com', '32554105847', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32554105847')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32554105847')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-19 16:50', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32554105847')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 31985, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32554105847')), 750, 1, '2019-06-24', '2019-06-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32655, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28434500809'), 'Ana Paula Cordeiro Bastos dos Reis', '11976684820', 'ANA.REIS@ACCAMARGO.ORG.BR', '28434500809', null, 2, '2019-06-25 12:08', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28434500809')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28434500809')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', '2019-06-25 12:08', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 12:08', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28434500809')), '2019-06-27', 'Inscrição Cancelada', '2019-06-25 12:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26088, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '11994071835', 'apgcake2003@libertyseguros.com.br', '11227464827', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827')), 201905, 2, 450, 0, 0, 450, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 450, '2019-05-24 15:31', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827')), '2019-05-26', 'Concessão de isenção', '2019-05-24 15:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 450, 'Concessão de isenção', '2019-05-24 15:31');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 54, 26088, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32465, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24643098856'), 'Ana Paula Lucchesi Nucci', '11993061170', 'NUCCI.AP.CONSULTORIA@GMAIL.COM', '24643098856', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24643098856')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24643098856')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 17:19', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24643098856')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 17:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32465, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28231, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861'), 'Ana Paula Martins Vicentin', '11975004685', 'hanamar@gmail.com', '28325947861', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 2, '2019-06-03 17:54', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861')), 201906, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-04', '2019-06-04', '2019-06-05', '2019-06-03 17:54', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-03 17:54', '2019-06-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861')), '2019-06-05', 'Inscrição Cancelada', '2019-06-03 17:54');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32531, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26894078840'), 'Anderson Souza Barros', '11994053155', 'ANDERSON.BARROS@EUROFARMA.COM.BR', '26894078840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '6119009000869'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26894078840')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26894078840')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-25 09:16', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26894078840')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:16');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-25 09:16');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32531, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24683, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62123629049'), 'Andrea dos Santos', '11998183377', 'DEIADUSINHA@HOTMAIL.COM', '62123629049', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62123629049')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62123629049')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-18', '2019-05-18', '2019-05-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-17 17:04', '2019-05-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62123629049')), '2019-05-19', 'Concessão de isenção', '2019-05-17 17:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-17 17:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 24683, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33182, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28880461800'), 'Andrea Medea', '01198079791', 'adrea.medea@bradesco.com.br', '28880461800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28880461800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28880461800')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 14:57', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28880461800')), '2019-06-29', 'Concessão de isenção', '2019-06-27 14:57');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 14:57');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33182, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33184, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00820009725'), 'Andrea Medici Bastos Rizzette', '11965180794', 'andreamedici@ig.com.br', '00820009725', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00820009725')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00820009725')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 14:59', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00820009725')), '2019-06-29', 'Concessão de isenção', '2019-06-27 14:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 14:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33184, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27666, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01755732988'), 'Andrea Palma Lopes da Silva', '48991560103', 'deapalma2004@gmail.com', '01755732988', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01755732988')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01755732988')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-01', '2019-06-01', '2019-06-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-31 09:40', '2019-06-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01755732988')), '2019-06-02', 'Concessão de isenção', '2019-05-31 09:40');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-31 09:40');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 27666, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34689, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Andréa Tomanik de Azevedo'), 'Andréa Tomanik de Azevedo', '11974953786', 'andreatomasnk@hotmail.com', '', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Andréa Tomanik de Azevedo')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Andréa Tomanik de Azevedo')), 201907, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-05', '2019-07-05', '2019-07-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-07-04 15:10', '2019-07-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Andréa Tomanik de Azevedo')), '2019-07-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 34689, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Andréa Tomanik de Azevedo')), 900, 1, '2019-06-24', '2019-06-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24860, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879'), 'Andrea Xavier Toledo', '1131552821', 'andrea.toledo@sabara.com.br', '14015423879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-21', '2019-05-21', '2019-05-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-20 10:57', '2019-05-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), '2019-05-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 24860, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14015423879')), 2475, 1, '2019-05-28', '2019-05-28');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33258, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13317112824'), 'Andreia Veloso Osti', '11503396995', 'andreia.osti@grupofleury.com.br', '13317112824', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13317112824')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13317112824')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:59', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13317112824')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33258, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29826, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25994629839'), 'Andreza Aparecida Miranda dos Santos', '11957579198', 'andreza.miranda@hc.fm.usp.br', '25994629839', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25994629839')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25994629839')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-11', '2019-06-11', '2019-06-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-10 11:43', '2019-06-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25994629839')), '2019-06-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 29826, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25994629839')), 750, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32456, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844'), 'Angela Cristina Yano', '1130677135', 'ANGELAYANO@CONCEITOASAUDE.COM.BR', '08412643844', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '12103819000163'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-24 17:00', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844')), '2019-06-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32456, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844')), 1485, 1, '2019-06-24', '2019-06-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34406, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Angelica Marques'), 'Angelica Marques', '1150170315', 'ANGELICA@SHIBUYAPRATICA.COM.BR', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28953, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85856720806'), 'Anna Mehoudar', '11984737478', 'anna_mehoudar@gamp21.com.br', '85856720806', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85856720806')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85856720806')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-07', '2019-06-07', '2019-06-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-06 09:49', '2019-06-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85856720806')), '2019-06-08', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 28953, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85856720806')), 750, 1, '2019-06-07', '2019-06-07');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30516, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819'), 'Anne Victoria de Souza Rodrigues Aleixo', '11976937912', 'anne-vic@hotmail.com', '29662831819', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-13', '2019-06-13', '2019-06-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-12 14:13', '2019-06-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819')), '2019-06-14', 'Concessão de isenção', '2019-06-12 14:13');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-12 14:13');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 30516, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27179, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '57863806887'), 'Antonio Giraldes', '11982219733', 'giraldes@terra.com.br', '57863806887', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '57863806887')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '57863806887')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-30', '2019-05-30', '2019-05-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-29 12:04', '2019-05-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '57863806887')), '2019-05-31', 'Concessão de isenção', '2019-05-29 12:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-29 12:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 27179, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34405, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ariadne Brum'), 'Ariadne Brum', '1150170315', 'ariadne@shibuyapratica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34087, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Barbara Souza'), 'Barbara Souza', '1132666497', 'barbarasouza@itsseg.com', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25998, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37333590895'), 'Beny Jose Finkelstein', '11932186301', 'beny.fink@resmed.com', '37333590895', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37333590895')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37333590895')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-24 11:12', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37333590895')), '2019-05-26', 'Concessão de isenção', '2019-05-24 11:12');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-24 11:12');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25998, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24652, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00504350781'), 'Bianca Marques Cardoso do Prado', '21967040735', 'biancap@petrobras.com.br', '00504350781', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00504350781')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00504350781')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-18', '2019-05-18', '2019-05-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-17 15:36', '2019-05-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00504350781')), '2019-05-19', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 24652, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00504350781')), 2750, 1, '2019-09-24', '2019-09-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33260, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31955146802'), 'Bruna Faria Ribeiro de Carvalho', '1133945660', 'bruna.frcarvalho@hsl.org.br', '31955146802', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31955146802')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31955146802')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:00', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31955146802')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:00');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:00');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33260, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33186, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810'), 'Bruna Pinheiro Oliveira', '11980982095', 'bruna@jamudei.com.br', '39142123810', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:00', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:00');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:00');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33186, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23904, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185'), 'Bruna Rodrigues Feitosa', '61984625046', 'bruna.feitosa@caubr.gov.br', '02217313185', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-15 10:31', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 23904, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185')), 2750, 1, '2019-07-04', '2019-07-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29275, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08853648724'), 'Brunno Vieira Teixeira de Carvalho', '21999057598', 'secretaria.riodejaneiro@qualirede.com.br', '08853648724', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08853648724')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08853648724')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-07 09:49', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08853648724')), '2019-06-09', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 29275, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08853648724')), 2475, 1, '2019-06-14', '2019-06-14');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25738, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99571617172'), 'Bruno de Araújo Godinho', '62999491243', 'bruno@sistemafieg.org.br', '99571617172', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99571617172')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99571617172')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:23', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99571617172')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25738, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99571617172')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32532, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22642159841'), 'Bruno Matsuyana Biazio Dario', '11988000660', 'brunodario1@hotmail.com', '22642159841', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Bruno Dario'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22642159841')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22642159841')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-25 09:18', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22642159841')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-25 09:18');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 32532, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24299, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53514238553'), 'Cacilda do Espírito Santo Silva', '61985077328', 'cacilda.silva@ebc.com.br', '53514238553', null, 2, '2019-05-16 16:46', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53514238553')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53514238553')), 201905, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', '2019-05-16 16:46', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-16 16:46', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53514238553')), '2019-05-18', 'Inscrição Cancelada', '2019-05-16 16:46');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32529, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36965288892'), 'Camila de Souza Pereira', '11999216999', 'CAMILA.PEREIRA@AON.COM', '36965288892', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36965288892')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36965288892')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:09', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36965288892')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:09');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:09');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32529, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31900, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841'), 'Camila Petit dos Santos', '11961128230', 'camila.petit@unnimax.com.br', '36865988841', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '05827314000186'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-19 14:24', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31900, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36865988841')), 1485, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33187, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23450980823'), 'Camile Cavalcante Enomoto', '11984391406', 'camile.enomoto@brasilprev.com.br', '23450980823', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23450980823')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23450980823')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:01', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23450980823')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:01');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:01');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33187, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32643, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826'), 'Camilla Assuncao Dias Bueno Rada', '11998130043', 'CRADA@BLOOMINBRANDS.COM.BR', '33722083826', null, 2, '2019-06-25 11:46', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', '2019-06-25 11:46', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:46', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), '2019-06-27', 'Inscrição Cancelada', '2019-06-25 11:46');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25488, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti', '81995290606', 'carinas@saojoseagroinustrial.com.br', '04905771480', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-22 16:07', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480')), '2019-05-24', 'Concessão de isenção', '2019-05-22 16:07');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-22 16:07');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 25488, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32578, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25618976803'), 'Carla Albuquerque Fiori', '11976127827', 'carla.fiori@tokiomarine.com.br', '25618976803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25618976803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25618976803')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:40', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25618976803')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:40');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:40');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32578, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32364, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08483894840'), 'Carla I L Mazzucco', '11996482589', 'MAZZUCCO@GMAIL.COM', '08483894840', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08483894840')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08483894840')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 11:43', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08483894840')), '2019-06-26', 'Concessão de isenção', '2019-06-24 11:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 11:43');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32364, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32642, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07547235859'), 'Carlos Eduardo Mazzucco Fontes', '19992123485', 'DANO@LABONFIT.COM.BR', '07547235859', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07547235859')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07547235859')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:41', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07547235859')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:41');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:41');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32642, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (13383, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09238869669'), 'Carolina Espindola Martins', '35988558898', 'carol_espindola_1111@hotmail.com', '09238869669', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09238869669')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09238869669')), 201902, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-02-22', '2019-02-22', '2019-02-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-02-21 12:04', '2019-02-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09238869669')), '2019-02-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 13383, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09238869669')), 900, 1, '2019-02-22', '2019-02-22');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32376, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25762720888'), 'Carolina Junqueira', '11983837774', 'CAROLINAJUNQUEIRA@IG.COM.BR', '25762720888', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25762720888')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25762720888')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 12:22', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25762720888')), '2019-06-26', 'Concessão de isenção', '2019-06-24 12:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 12:22');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32376, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23929, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60002841363'), 'Caroline Diniz Figueiredo', '85999505585', 'CAROLDINIZ.F@HOTMAIL.COM', '60002841363', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60002841363')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60002841363')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-15 11:46', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60002841363')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 23929, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60002841363')), 1500, 1, '2019-05-15', '2019-05-15');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26036, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11320356788'), 'Cassia Caroline Figueiredo Costa', '21981634795', 'cassiac@br.ibm.com', '11320356788', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11320356788')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11320356788')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-24 12:16', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11320356788')), '2019-05-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26036, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11320356788')), 1500, 1, '2019-05-24', '2019-05-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33266, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24815568871'), 'Cassia Roberta de Oliveira', '1133945660', 'cassia.roliveira@hsl.org.br', '24815568871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24815568871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24815568871')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:04', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24815568871')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33266, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31995, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12307956859'), 'Celia Cristiane Granata Cirino dos Santos', '11974089531', 'celiac@bauducco.com.br', '12307956859', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12307956859')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12307956859')), 201906, 2, 450, 450, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 450, '2019-06-19 17:02', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12307956859')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 54, 31995, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12307956859')), 450, 1, '2019-06-24', '2019-06-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 450);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33190, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14385115826'), 'Celso Gondo', '11983936111', 'cmgondo@gmail.com', '14385115826', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14385115826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14385115826')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:02', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14385115826')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:02');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33190, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32468, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800'), 'Christovan Paschoal Filho', '1122326558', 'PASCHOALFILHO@TERRA.COM.BR', '04629556800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 17:23', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 17:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32468, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33191, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22818592828'), 'Clarissa Stella Betanin', '19992561896', 'clarissa.betanin@dhl.com', '22818592828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22818592828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22818592828')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:04', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22818592828')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33191, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23891, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14389387804'), 'Cláudia de Paula Teixeira', '11996184115', 'paulateixeiraclaudia@gmail.com', '14389387804', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14389387804')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14389387804')), 201905, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-05-15 09:41', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14389387804')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 23891, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14389387804')), 900, 1, '2019-05-16', '2019-05-16');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30274, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828'), 'Claudia Zanicheli', '11984373781', 'claudia.zanicheli@jdecoffee.com', '28327825828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-11 16:42', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828')), '2019-06-13', 'Concessão de isenção', '2019-06-11 16:42');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-11 16:42');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30274, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33268, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12883983879'), 'Cleonice Reis Santana', '1133945660', 'cleonice.med.trabalho@hgg.or.br', '12883983879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12883983879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12883983879')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:05', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12883983879')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:05');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:05');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33268, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26001, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05124423471'), 'Cleoniceia Catherine Batista da Silva', '84996019146', 'cleocathe@yahoo.com.br', '05124423471', null, 2, '2019-05-24 11:16', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05124423471')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05124423471')), 201905, 1, 1650, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', '2019-05-24 11:16', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1650, '2019-05-24 11:16', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05124423471')), '2019-05-26', 'Inscrição Cancelada', '2019-05-24 11:16');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33287, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15158911860'), 'Cristiane Maria Talala Zogheib', '1135490473', 'leonardo.mendonca@haoc.com.br', '15158911860', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15158911860')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15158911860')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:23', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15158911860')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33287, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33263, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26001435804'), 'Cristiane Werner Alasmar', '1133945660', 'cristiane.alasmar@hsl.org.br', '26001435804', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26001435804')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26001435804')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:02', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26001435804')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:02');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33263, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25265, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04138882901'), 'Cristiane Zocatelli Ribeiro', '41999654076', 'cristiane.ribeiro@sistemafiep.org.br', '04138882901', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04138882901')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04138882901')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-21 20:44', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04138882901')), '2019-05-23', 'Concessão de isenção', '2019-05-21 20:44');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-21 20:44');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25265, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23213, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33300569249'), 'Daniel Jose Maia Junior', '11900000000', 'equipetec.administrativa-DRHD@cptm.sp.gov.br', '33300569249', null, 2, '2019-05-10 09:52', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33300569249')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33300569249')), 201905, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-11', '2019-05-11', '2019-05-12', '2019-05-10 09:52', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-10 09:52', '2019-05-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33300569249')), '2019-05-12', 'Inscrição Cancelada', '2019-05-10 09:52');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32536, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40987164880'), 'Daniel Pereira Arcaido', '11984373875', 'daniel.arcaide@sesisp.org.br', '40987164880', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40987164880')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40987164880')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:25', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40987164880')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:25');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:25');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32536, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30479, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29086429807'), 'Dante Palazzo', '11969192192', 'dante.palazzo@kof.com.mx', '29086429807', null, 2, '2019-06-12 12:28', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29086429807')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29086429807')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-13', '2019-06-13', '2019-06-14', '2019-06-12 12:28', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-12 12:28', '2019-06-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29086429807')), '2019-06-14', 'Inscrição Cancelada', '2019-06-12 12:28');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27252, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07667243794'), 'Darien Manhaes Caldas', '21985857137', 'darien.manhaescaldas@petrobras.com.br', '07667243794', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07667243794')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07667243794')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-30', '2019-05-30', '2019-05-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-29 15:49', '2019-05-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07667243794')), '2019-05-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 27252, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07667243794')), 2750, 1, '2019-09-24', '2019-09-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33251, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31248465830'), 'David de Mário Porto', '11992357059', 'maiscoluna.brasil@gmail.com', '31248465830', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31248465830')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31248465830')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:47', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31248465830')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:47');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:47');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33251, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25205, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91272610772'), 'Débora Coelho Lucas', '21994750044', 'debora.lucas@rfb.gov.br', '91272610772', null, 2, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91272610772')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91272610772')), 201905, 1, 2750, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 2750, '2019-05-21 16:00', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91272610772')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 25205, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32527, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833'), 'Debora Cristina Inglesi', '11949846353', 'DINGLESI@SESINAISP.ORG.BR', '28348727833', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:02', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:02');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32527, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27671, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99977362734'), 'Debora Martins Erthal Camara', '21994868202', 'dcamara@firjan.com.br', '99977362734', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99977362734')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99977362734')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-01', '2019-06-01', '2019-06-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-31 09:49', '2019-06-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99977362734')), '2019-06-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 27671, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99977362734')), 2475, 1, '2019-06-27', '2019-06-27');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26600, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05070106988'), 'Deborah Gariba Nunes', '41988168115', 'deborah.nunes@sistemafiep.org.br', '05070106988', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05070106988')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05070106988')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-28 09:54', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05070106988')), '2019-05-30', 'Concessão de isenção', '2019-05-28 09:54');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-28 09:54');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26600, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (14572, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33271692840'), 'Denise Cássia Bonamin', '11941447972', 'de07.bonamin@gmail.com', '33271692840', null, 2, '2019-03-12 13:03', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33271692840')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33271692840')), 201903, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-03-13', '2019-03-13', '2019-03-14', '2019-03-12 13:03', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-03-12 13:03', '2019-03-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33271692840')), '2019-03-14', 'Inscrição Cancelada', '2019-03-12 13:03');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33192, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27568058824'), 'Denise Cristiane Oliveira', '11960725313', 'denioliveira@deloitte.com', '27568058824', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27568058824')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27568058824')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:05', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27568058824')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:05');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:05');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33192, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29853, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93886055868'), 'Denise Freire Pereira', '11996181126', 'denisefpereira5@gmail.com', '93886055868', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93886055868')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93886055868')), 201906, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-11', '2019-06-11', '2019-06-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-06-10 13:11', '2019-06-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93886055868')), '2019-06-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 29853, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93886055868')), 2750, 1, '2019-08-02', '2019-08-02');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27565, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415'), 'Denise Telles Cordeiro', '21998642532', 'treinam@eletronuclear.gov.br', '23167564415', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-31', '2019-05-31', '2019-06-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-30 16:39', '2019-05-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415')), '2019-06-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 27565, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415')), 2475, 1, '2019-06-18', '2019-06-18');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32810, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32414262893'), 'Diana de Melo Amarante Rocha', '1196353167', 'DIANA.ROCHA@DIEBOLDNIKDONT.COM', '32414262893', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32414262893')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32414262893')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:53', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32414262893')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:53');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:53');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32810, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30067, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80572707053'), 'Diana Indiara Ferreira Jardim da Rocha', '51991755084', 'diana.rocha@sesirs.org.br', '80572707053', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80572707053')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80572707053')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-11 09:08', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80572707053')), '2019-06-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30067, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80572707053')), 2475, 1, '2019-06-17', '2019-06-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28291, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31670015858'), 'Diego Toniolo do Prado', '11998948310', 'diegotdoprado@hotmail.com', '31670015858', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31670015858')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31670015858')), 201906, 2, 750, 0, 0, 750, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-05', '2019-06-05', '2019-06-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 750, '2019-06-04 06:32', '2019-06-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31670015858')), '2019-06-06', 'Concessão de isenção', '2019-06-04 06:32');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 750, 'Concessão de isenção', '2019-06-04 06:32');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 28291, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31425, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11920998187'), 'Doralice da Silva Boaventura', '61999655119', 'doraliceboaventura@in.gov.br', '11920998187', null, 2, '2019-06-17 16:23', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11920998187')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11920998187')), 201906, 1, 2750, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', '2019-06-17 16:23', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2750, '2019-06-17 16:23', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11920998187')), '2019-06-19', 'Inscrição Cancelada', '2019-06-17 16:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33194, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11858493862'), 'Ed Carlos Pereira da Silva', '11970627697', 'ed.pereira@camil.com.br', '11858493862', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11858493862')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11858493862')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:06', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11858493862')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:06');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:06');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33194, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34404, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Edileusa Silva'), 'Edileusa Silva', '1150170315', 'EDELUESA@SHIBUYAPRATICA.COM.BR', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32462, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808'), 'Edna Ramos', '11997811782', 'EDNARAMOS099@GMAIL.COM', '02203569808', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 17:15', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 17:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32462, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23847, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-15', '2019-05-15', '2019-05-16', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-14 17:43', '2019-05-15', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768')), '2019-05-16', 'Concessão de isenção', '2019-05-14 17:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-14 17:43');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 23847, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27080, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882'), 'Egly Camara', '11997716538', 'ecamara@rd.com.br', '13493494882', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-30', '2019-05-30', '2019-05-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-29 09:49', '2019-05-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882')), '2019-05-31', 'Concessão de isenção', '2019-05-29 09:49');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-29 09:49');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 27080, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32789, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '76823393734'), 'Eliane Nunes', '1155052676', 'ELIANENUNES@TPASAUDE.COM.BR', '76823393734', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '76823393734')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '76823393734')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:03', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '76823393734')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:03');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:03');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32789, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31834, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13256710883'), 'Elisabete Maia de Carvalho', '11999703937', 'fabiamaia76@gmail.com', '13256710883', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13256710883')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13256710883')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 11:10', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13256710883')), '2019-06-21', 'Concessão de isenção', '2019-06-19 11:10');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 11:10');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31834, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31961, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20730561000153'), 2, '2019-06-19 16:09', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864')), 201906, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', '2019-06-19 16:09', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-19 16:09', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864')), '2019-06-21', 'Inscrição Cancelada', '2019-06-19 16:09');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32556, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29367787863'), 'Elissandra Patricia Melo', '11975728454', 'ELISSANDRA.MELO@DORCONSULTORIA.COM.BR', '29367787863', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29367787863')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29367787863')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:02', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29367787863')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:02');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32556, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24214, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58584331549'), 'Elizabeth Felipe de Melo', '71988112049', 'Elizabethfelipe@petrobras.com.br', '58584331549', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58584331549')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58584331549')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-16 13:32', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58584331549')), '2019-05-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 24214, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58584331549')), 2750, 1, '2019-09-24', '2019-09-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25002, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60123338700'), 'Elizete Pires Maggessi', '21996923600', 'elizetemaggessi@petrobras.com.br', '60123338700', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60123338700')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60123338700')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-21', '2019-05-21', '2019-05-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-20 22:00', '2019-05-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60123338700')), '2019-05-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 25002, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '60123338700')), 2750, 1, '2019-09-26', '2019-09-26');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25495, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863'), 'Ellen Cristina Bonni Fischer', '11985766594', 'efischer@elopar.com.br', '33840351863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-22 16:19', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863')), '2019-05-24', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 25495, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863')), 1485, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25240, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38649152953'), 'Eloir Simm', '48991898492', 'eloir.simm.qv@gmail.com', '38649152953', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38649152953')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38649152953')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-21 17:02', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38649152953')), '2019-05-23', 'Concessão de isenção', '2019-05-21 17:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-21 17:02');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 25240, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25498, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04346251919'), 'Eloiza Pereira Esser Bochnia', '41988521542', 'aline.bandeira@unimedcuritiba.com.br', '04346251919', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04346251919')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04346251919')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-22 16:19', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04346251919')), '2019-05-24', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25498, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04346251919')), 1500, 1, '2019-05-30', '2019-05-30');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30113, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10535139845'), 'Erika Rossi', '11995066778', 'ERIKAAROSSI@YAHOO.COM.BR', '10535139845', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10535139845')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10535139845')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-11 10:41', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10535139845')), '2019-06-13', 'Concessão de isenção', '2019-06-11 10:41');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-11 10:41');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30113, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29097, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48590355853'), 'Eva Wongtschowski', '11974371084', 'evawongtschowski5@gmail.com', '48590355853', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48590355853')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48590355853')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-07', '2019-06-07', '2019-06-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-06 15:54', '2019-06-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48590355853')), '2019-06-08', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 29097, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48590355853')), 750, 1, '2019-06-13', '2019-06-13');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32611, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34494211826'), 'Fabiane Midori Tonikawa', '11981190319', 'ANE.TONIKAWA@GMAIL.COM', '34494211826', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34494211826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34494211826')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:17', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34494211826')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:17');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32611, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32393, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38490118876'), 'Fabiane Silva Richimin', '1125642722', 'FPICHININ@OCELTIC.COM.BR', '38490118876', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38490118876')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38490118876')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 13:04', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38490118876')), '2019-06-26', 'Concessão de isenção', '2019-06-24 13:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 13:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32393, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33298, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29253572884'), 'Fabio de Oliveira dos Santos', '11999556173', 'fabio.santos@dorconsultoria.com.br', '29253572884', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29253572884')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29253572884')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:34', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29253572884')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:34');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:34');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33298, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30285, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870'), 'Fábio Yoshio Sato', '11997752542', 'fabio@tnh.health', '35716775870', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), 201906, 2, 2475, 0, 0, 2475, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-11 17:07', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), '2019-06-13', 'Concessão de isenção', '2019-06-11 17:07');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 2475, 'Concessão de isenção', '2019-06-11 17:07');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30285, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29110, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03968500652'), 'Fabrício Morais Salgado', '31984281633', 'fabricio_morais.salgado@daimler.com', '03968500652', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03968500652')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03968500652')), 201906, 2, 2475, 0, 0, 2475, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-07', '2019-06-07', '2019-06-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-06 16:14', '2019-06-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03968500652')), '2019-06-08', 'Concessão de isenção', '2019-06-06 16:14');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 2475, 'Concessão de isenção', '2019-06-06 16:14');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 29110, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34587, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Fatima Cristina Macedo'), 'Fatima Cristina Macedo', '11991145672', 'fatima.macedo@mentalclean.com.br', '', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176')), 201907, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-05', '2019-07-05', '2019-07-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-07-04 10:33', '2019-07-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176')), '2019-07-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 34587, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176')), 1485, 1, '2019-06-23', '2019-06-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33197, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44065394848'), 'Fernanda Cristina Grilletti', '11973526574', 'fernanda.grilletti@basf.com', '44065394848', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44065394848')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44065394848')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:11', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44065394848')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:11');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:11');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33197, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26097, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876'), 'Fernanda Kawaguti Fujimura de Andrade', '11986809151', 'fernandafujimura@yahoo.com.br', '32639632876', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876')), 201905, 2, 450, 450, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 450, '2019-05-24 15:50', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876')), '2019-05-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 54, 26097, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876')), 450, 1, '2019-05-28', '2019-05-28');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 450);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32803, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32537350871'), 'Fernanda Micchi', '11989438998', 'FERNANDA.MICCHI@TOKIOMARINE.COM.BR', '32537350871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32537350871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32537350871')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:45', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32537350871')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:45');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:45');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32803, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32588, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698'), 'Fernanda Silveira de Rezende', '11963485598', 'FERNANDA.REZENDE@ACHE.COM.BR', '08244572698', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:55', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:55');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32588, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26998, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16233184835'), 'Fernando Andrade de Oliveira', '11991738679', 'fernando@pompeia.sescsp.org.br', '16233184835', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16233184835')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16233184835')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-28 21:04', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16233184835')), '2019-05-30', 'Concessão de isenção', '2019-05-28 21:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-28 21:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 26998, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33202, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26796157869'), 'Fernando Jose de Carvalho Rocha', '11984129979', 'fcrocha@haoc.com.br', '26796157869', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26796157869')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26796157869')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:13', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26796157869')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:13');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:13');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33202, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25732, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11985875000', 'fer.bs@terra.com.br', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 2, '2019-05-23 15:05', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818')), 201905, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', '2019-05-23 15:05', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-23 15:05', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818')), '2019-05-25', 'Inscrição Cancelada', '2019-05-23 15:05');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31568, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850'), 'Flavia Leite Chicao', '11943880633', 'flchicao@suzano.com.br', '43689986850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '16404287003332'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-18 11:53', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850')), '2019-06-20', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31568, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850')), 1485, 1, '2019-07-10', '2019-07-10');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30852, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07700565716'), 'Flavio Gustavo Rodrigues', '2733345983', 'fgrodrigues@findes.org.br', '07700565716', null, 2, '2019-06-13 17:54', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07700565716')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07700565716')), 201906, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', '2019-06-13 17:54', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-13 17:54', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07700565716')), '2019-06-15', 'Inscrição Cancelada', '2019-06-13 17:54');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30815, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35999497515'), 'Floriza de Jesus Mendes Santana', '11949350006', 'floriza.mendes@cejam.org.br', '35999497515', null, 2, '2019-06-13 15:44', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35999497515')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35999497515')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', '2019-06-13 15:44', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-13 15:44', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35999497515')), '2019-06-15', 'Inscrição Cancelada', '2019-06-13 15:44');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24264, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04168409902'), 'Francielli A. Vitali Martins', '41984226717', 'fernanda.siqueira@grupoimplus.com.br', '04168409902', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04168409902')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04168409902')), 201905, 2, 2475, 0, 0, 2475, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-05-16 14:56', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04168409902')), '2019-05-18', 'Concessão de isenção', '2019-05-16 14:56');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 2475, 'Concessão de isenção', '2019-05-16 14:56');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 24264, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30193, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11439709777'), 'Gabriela Magalhães de Oliveira', '21969866978', 'gmaga@br.ibm.com', '11439709777', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11439709777')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11439709777')), 201906, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-06-11 13:49', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11439709777')), '2019-06-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30193, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11439709777')), 1500, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33270, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30155171801'), 'Gabriela Moutinho Florez', '1133945660', 'gabriela.mflorez@hsl.org.br', '30155171801', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30155171801')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30155171801')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:06', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30155171801')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:06');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:06');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33270, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26602, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02941326944'), 'Gerson Tulio Menezes', '41999174051', 'gerson.menezes@sistemafiep.org.br', '02941326944', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02941326944')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02941326944')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-28 09:58', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02941326944')), '2019-05-30', 'Concessão de isenção', '2019-05-28 09:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-28 09:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26602, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (22154, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03167775955'), 'Gilvania Vilvert', '47996056118', 'gilvania.vilvert@viacredi.coop.br', '03167775955', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03167775955')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03167775955')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-07', '2019-05-07', '2019-05-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-06 13:12', '2019-05-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03167775955')), '2019-05-08', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 22154, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03167775955')), 2475, 1, '2019-05-10', '2019-05-10');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30851, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84091673791'), 'Gisele Ramos Friggi', '27323217282', 'gfrigi@findes.org.br', '84091673791', null, 2, '2019-06-13 17:52', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84091673791')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84091673791')), 201906, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', '2019-06-13 17:52', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-13 17:52', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84091673791')), '2019-06-15', 'Inscrição Cancelada', '2019-06-13 17:52');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28659, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34041225850'), 'Glauciele Filgueira Andrade', '11954929463', 'glauciele@yahoo.com.br', '34041225850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34041225850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34041225850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-06', '2019-06-06', '2019-06-07', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-05 09:40', '2019-06-06', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34041225850')), '2019-06-07', 'Concessão de isenção', '2019-06-05 09:40');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-05 09:40');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 28659, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31818, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03699185842'), 'Goldete Priszkulnik', '11991012424', 'goldete.consulte@gmail.com', '03699185842', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03699185842')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03699185842')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 10:32', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03699185842')), '2019-06-21', 'Concessão de isenção', '2019-06-19 10:32');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 10:32');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31818, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31753, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02038255865'), 'Gracia Elisabeth Fragalá', '11999988564', 'graciael@gmail.com', '02038255865', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02038255865')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02038255865')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-18 20:19', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02038255865')), '2019-06-20', 'Concessão de isenção', '2019-06-18 20:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-18 20:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 31753, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (19743, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07646093432'), 'Grazielle Lima da Rocha Barros', '82998294664', 'Ergofisios@gmail.com', '07646093432', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07646093432')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07646093432')), 201904, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-23', '2019-04-23', '2019-04-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-04-22 13:53', '2019-04-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07646093432')), '2019-04-24', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 19743, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07646093432')), 1500, 1, '2019-05-15', '2019-05-15');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24209, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26964008810'), 'Gustavo de Quadros Ribeiro', '11967401991', 'gusquadros@yahoo.com.br', '26964008810', null, 2, '2019-05-16 12:32', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26964008810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26964008810')), 201905, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', '2019-05-16 12:32', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-16 12:32', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26964008810')), '2019-05-18', 'Inscrição Cancelada', '2019-05-16 12:32');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34088, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Hélio Moreira'), 'Hélio Moreira', '1132666497', 'helio.moreira@mbsseguros.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33203, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10448072882'), 'Heloiza dos Santos Errera Aires', '01199975660', 'heloiza.aires@bradesco.com.br', '10448072882', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10448072882')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10448072882')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:15', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10448072882')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33203, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25617, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268'), 'Henrique Brito Angelim', '96981244963', 'henrique.angelim@edu.ap.sesi.org.br', '83953191268', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 09:57', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25617, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268')), 2475, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25710, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69422451272'), 'Igor do Nascimento Pessoa', '96991515787', 'igor.pessoa@ap.sesi.org.br', '69422451272', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69422451272')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69422451272')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 13:53', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69422451272')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25710, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69422451272')), 2475, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31976, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23470028800'), 'Ines Hungerbuhler', '11977944987', 'ines@tnh.health', '23470028800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23470028800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23470028800')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 16:34', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23470028800')), '2019-06-21', 'Concessão de isenção', '2019-06-19 16:34');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 16:34');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31976, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31939, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38671920810'), 'Iramaia de Almeida Gonçalves', '11975485238', 'goncalvesiramaia@gmail.com', '38671920810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '01027058000191'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38671920810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38671920810')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-19 15:39', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38671920810')), '2019-06-21', 'Concessão de isenção', '2019-06-19 15:39');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-19 15:39');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31939, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32178, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30120605880'), 'Irineu Rezende', '11976392118', 'irineu.rezende@pirelli.com', '30120605880', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30120605880')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30120605880')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-21', '2019-06-21', '2019-06-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-20 22:01', '2019-06-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30120605880')), '2019-06-22', 'Concessão de isenção', '2019-06-20 22:01');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-20 22:01');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32178, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26453, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70251142787'), 'Isabela de Freitas Costa Vasconcellos Pyrlo', '2733347600', 'isabela.pyrlo@tce.es.gov.br', '70251142787', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70251142787')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70251142787')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-27 16:47', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70251142787')), '2019-05-29', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 26453, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70251142787')), 2750, 1, '2019-07-11', '2019-07-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28402, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02637916370'), 'Isanete dos Santos de Sousa', '11963493093', 'isanete8890@gmail.com', '02637916370', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02637916370')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02637916370')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-05', '2019-06-05', '2019-06-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-04 12:59', '2019-06-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02637916370')), '2019-06-06', 'Concessão de isenção', '2019-06-04 12:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-04 12:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 28402, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33205, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27340801847'), 'Ivonilde Oliveira Dias', '11998302757', 'ivonilde.dias@ache.com.br', '27340801847', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27340801847')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27340801847')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:16', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27340801847')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:16');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:16');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33205, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27426, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17959754829'), 'Jacques Jose Gomes de Souza', '11981231943', 'jjgsouza@live.com', '17959754829', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17959754829')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17959754829')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-31', '2019-05-31', '2019-06-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-30 11:06', '2019-05-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17959754829')), '2019-06-01', 'Concessão de isenção', '2019-05-30 11:06');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-30 11:06');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 27426, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33295, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33790384828'), 'Jaqueline Abreu Ricci', '11960757834', 'RicciJaqueline@la-bridgestone.com', '33790384828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33790384828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33790384828')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:30', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33790384828')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:30');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:30');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33295, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33207, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37939322818'), 'Jéssica Rafaela Baraçal Rebelato', '01195130805', 'jessica.rafaela@totvs.com.br', '37939322818', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37939322818')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37939322818')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:17', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37939322818')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:17');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33207, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33209, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31418298883'), 'João Barbosa Neto', '11984229709', 'joao@ergonomos.com.br', '31418298883', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31418298883')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31418298883')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:18', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31418298883')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:18');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33209, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (20616, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05453886943'), 'Jocilaine Fernanda Ferreira de Carvalho', '41997745043', 'jferreira@clinipam.com.br', '05453886943', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05453886943')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05453886943')), 201904, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-30', '2019-04-30', '2019-05-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-04-29 13:17', '2019-04-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05453886943')), '2019-05-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 20616, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05453886943')), 1500, 1, '2019-06-24', '2019-06-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37549, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao.abqv@gmail.com', '40733690831', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), 201907, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-23', '2019-07-23', '2019-07-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-07-22 10:22', '2019-07-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), '2019-07-24', 'Concessão de isenção', '2019-07-22 10:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-07-22 10:22');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 37549, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23228, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865'), 'Joice Correia Teixeira', '11900000000', 'gabriella.pereira@cptm.sp.gov.br', '32645907865', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-11', '2019-05-11', '2019-05-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-10 11:24', '2019-05-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865')), '2019-05-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 23228, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865')), 1485, 1, '2019-06-04', '2019-06-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30834, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26667604800'), 'Joice Cristina Cardoso da Silva', '11970430777', 'joices@sompo.com.br', '26667604800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26667604800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26667604800')), 201906, 2, 2475, 0, 0, 2475, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-13 16:58', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26667604800')), '2019-06-15', 'Concessão de isenção', '2019-06-13 16:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 2475, 'Concessão de isenção', '2019-06-13 16:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30834, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (22687, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88168034791'), 'Jonas Matos da Silva', '21993840548', 'valeriasilva@cnc.org.br', '88168034791', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88168034791')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88168034791')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-09', '2019-05-09', '2019-05-10', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-08 12:37', '2019-05-09', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88168034791')), '2019-05-10', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 22687, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88168034791')), 2475, 1, '2019-05-24', '2019-05-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31549, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18127738700'), 'Jorgete Lemos', '11996066588', 'jorgete.lemos@terra.com.br', '18127738700', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18127738700')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18127738700')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-18 11:13', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18127738700')), '2019-06-20', 'Concessão de isenção', '2019-06-18 11:13');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-18 11:13');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31549, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24306, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04579351380'), 'José Diogo Tavares Pedrosa', '9820168119', 'diogo.tavares17@gmail.com', '04579351380', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04579351380')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04579351380')), 201905, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-05-16 16:55', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04579351380')), '2019-05-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 24306, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04579351380')), 900, 1, '2019-06-10', '2019-06-10');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32369, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368'), 'Jose Lindoval Aragao Matos', '8599959323', 'JLARAGAO@BRBGOV.BR', '25942212368', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-24 11:56', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368')), '2019-06-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32369, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368')), 1485, 1, '2019-08-08', '2019-08-08');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32579, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44803426805'), 'Jose Matheus Olivera Estivaleti', '11975620291', 'JMO.ESTIVALETI@GMAIL.COM', '44803426805', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44803426805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44803426805')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:44', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44803426805')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:44');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:44');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32579, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32406, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08977165660'), 'Jose Miranda', '11987806542', 'JOSE.MIRANDA@SESISENHISP.ORG.BR', '08977165660', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08977165660')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08977165660')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 14:08', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08977165660')), '2019-06-26', 'Concessão de isenção', '2019-06-24 14:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 14:08');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32406, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26444, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85033200704'), 'Joselita Barroso Santos', '2733347600', 'joselita.santos@tce.es.gov.br', '85033200704', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85033200704')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85033200704')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-27 16:30', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85033200704')), '2019-05-29', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 26444, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85033200704')), 2750, 1, '2019-07-11', '2019-07-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26109, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40625269802'), 'Joyce Aparecida Gonçalves Barbosa', '11940089314', 'JOYCE.BARBOSA@BANCOBMG.COM.BR', '40625269802', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61186680000174'), 2, '2019-05-24 16:17', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40625269802')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40625269802')), 201905, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', '2019-05-24 16:17', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-24 16:17', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40625269802')), '2019-05-26', 'Inscrição Cancelada', '2019-05-24 16:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33210, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35376804810'), 'Joyce Emerich Dias Medeiros', '11995499229', 'joyce.medeiros@allergan.com', '35376804810', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35376804810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35376804810')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:19', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35376804810')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33210, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31497, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907'), 'Joyce Marina Caon Orador', '42991585895', 'joyce.orador@klabin.com.br', '05424987907', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), 201906, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-06-18 08:29', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), '2019-06-20', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31497, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), 1500, 1, '2019-06-18', '2019-06-18');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31087, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907'), 'Joyce Marina Caon Orador', '0499158589', 'japcorrea@klabin.com.br', '05424987907', null, 2, '2019-06-14 16:35', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), 201906, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-15', '2019-06-15', '2019-06-16', '2019-06-14 16:35', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-14 16:35', '2019-06-15', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05424987907')), '2019-06-16', 'Inscrição Cancelada', '2019-06-14 16:35');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33212, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09665581708'), 'Julia Gongora Rodrigues', '1145210308', 'jgongora@uhgbrasil.com.br', '09665581708', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09665581708')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09665581708')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:20', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09665581708')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:20');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:20');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33212, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32528, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24566397823'), 'Juliana Arantes Silva', '1131467389', 'JULIANA.ARANTES@SESINAISP.ORG.BR', '24566397823', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24566397823')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24566397823')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:08', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24566397823')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:08');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32528, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27673, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04174491941'), 'Juliana Fontanezi de Moraes Fabrica', '21999224289', 'JFABRICA@firjan.com.br', '04174491941', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04174491941')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04174491941')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-01', '2019-06-01', '2019-06-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-31 09:56', '2019-06-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04174491941')), '2019-06-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 27673, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04174491941')), 2475, 1, '2019-06-27', '2019-06-27');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33216, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841'), 'Juliana Kobayashi', '11982383638', 'juliana.kobayashi@citi.com', '33752155841', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:22', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:22');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33216, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26606, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03609268948'), 'Juliana Nadal', '46999152949', 'juliana.nadal@sistemafiep.org.br', '03609268948', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03609268948')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03609268948')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-28 10:03', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03609268948')), '2019-05-30', 'Concessão de isenção', '2019-05-28 10:03');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-28 10:03');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26606, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34147, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Juliana Paula Santos Macieira'), 'Juliana Paula Santos Macieira', '1132666497', 'juliana_macieira@jltbrasil.com', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26110, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36686637858'), 'Juliana Romão Vera Cruz', '19998394468', 'juliromao_@hotmail.com', '36686637858', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36686637858')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36686637858')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-24 16:22', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36686637858')), '2019-05-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26110, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36686637858')), 1500, 1, '2019-05-24', '2019-05-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28791, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42652256831'), 'Juliana Teixeira', '11980321761', 'Teixeira.julianaa@gmail.com', '42652256831', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42652256831')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42652256831')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-06', '2019-06-06', '2019-06-07', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-05 15:22', '2019-06-06', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42652256831')), '2019-06-07', 'Concessão de isenção', '2019-06-05 15:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-05 15:22');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 28791, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24951, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33379303879'), 'Julianna Martins Costa Castro', '11994989913', 'julianna.castro@portoseguro.com.br', '33379303879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33379303879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33379303879')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-21', '2019-05-21', '2019-05-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-20 16:25', '2019-05-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33379303879')), '2019-05-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 24951, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33379303879')), 1500, 1, '2019-05-25', '2019-05-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25742, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02015834109'), 'Jullyanna Karoliny Silva', '62985795554', 'jullyanna.sesi@sistemafieg.org.br', '02015834109', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02015834109')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02015834109')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:30', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02015834109')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25742, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02015834109')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (21768, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04448248984'), 'Julyana Andrade Vieira Caporal', '41988345002', 'julyana.vieira@impluscare.com.br', '04448248984', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04448248984')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04448248984')), 201905, 2, 2475, 0, 0, 2475, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-04', '2019-05-04', '2019-05-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-05-03 09:50', '2019-05-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04448248984')), '2019-05-05', 'Concessão de isenção', '2019-05-03 09:50');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 2475, 'Concessão de isenção', '2019-05-03 09:50');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 21768, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33218, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817'), 'Jussara Ferreira de Araújo', '11954519577', 'araujojussara@la-bridgestone.com', '26513416817', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:23', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33218, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33272, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29768021810'), 'Karen Fernanda Yamaguchi', '11944783767', 'kayamaguchi@google.com', '29768021810', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29768021810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29768021810')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:08', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29768021810')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:08');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33272, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29063, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800'), 'Karina Stryjer', '11981871171', 'kari_stryjer@hotmail.com', '25285384800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800')), 201906, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-07', '2019-06-07', '2019-06-08', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-06-06 14:44', '2019-06-07', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800')), '2019-06-08', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 29063, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800')), 900, 1, '2019-06-06', '2019-06-06');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25623, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86896288272'), 'Kat Kalissa Barbosa Barroso', '96991547197', 'kat.barroso@ap.sesi.org.br', '86896288272', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86896288272')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86896288272')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 10:12', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86896288272')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25623, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '86896288272')), 2475, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33273, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871'), 'Kátia Cristina Luz Barbosa de Oliveira', '1125405142', 'katiaoliveira@google.com', '01432387871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:09', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:09');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:09');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33273, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32799, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15678058843'), 'Katia de Paulo', '11975009513', 'KATIA.PAULO@AON.COM', '15678058843', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15678058843')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15678058843')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:39', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15678058843')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:39');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:39');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32799, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25191, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04609715902'), 'Katia Maria de Souza Ferreira', '41999652325', 'katia.ferreira@sistemafiep.org.br', '04609715902', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04609715902')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04609715902')), 201905, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-21 15:15', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04609715902')), '2019-05-23', 'Concessão de isenção', '2019-05-21 15:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-05-21 15:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 25191, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25263, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98920570906'), 'Katia Rodrigues Ferreira', '4733318523', 'rakelli.krauss@unimedblumenau.com.br', '98920570906', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98920570906')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98920570906')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-21 20:25', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98920570906')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25263, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98920570906')), 1500, 1, '2019-05-29', '2019-05-29');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33220, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25318364896'), 'Keila Pacini', '11994995421', 'keila.pacini@resmed.com', '25318364896', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25318364896')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25318364896')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:24', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25318364896')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:24');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:24');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33220, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32648, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22089679840'), 'Keli Tiburcio', '11947043437', 'KTIBURCIO@GMAIL.COM', '22089679840', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22089679840')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22089679840')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:51', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22089679840')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32648, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32534, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25114594850'), 'Kelly Ildefonso', '11994730548', 'KELLY.ILDEFONSO@HSL.ORG.BR', '25114594850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25114594850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25114594850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:21', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25114594850')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32534, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25264, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072'), 'Kely de Vargas da Rosa', '4733318523', 'rakellik@hotmail.com', '99974800072', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-21 20:31', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25264, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072')), 1500, 1, '2019-05-29', '2019-05-29');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23226, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32204074802'), 'Larissa Morales Bizutti', '1190000000', 'daniel.junior@cptm.sp.gov.br', '32204074802', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32204074802')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32204074802')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-11', '2019-05-11', '2019-05-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-10 11:19', '2019-05-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32204074802')), '2019-05-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 23226, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32204074802')), 1485, 1, '2019-06-04', '2019-06-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32550, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11098860713'), 'Layla Bleasby Bendia', '11944519032', 'layla.b.bendia@gmail.com', '11098860713', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11098860713')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11098860713')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:51', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11098860713')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32550, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32460, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27756435826'), 'Leandra C Franca Marinho', '11973289586', 'LEANDRA.MARINHO@OPTUM.COM.BR', '27756435826', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27756435826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27756435826')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-24 17:12', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27756435826')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:12');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-24 17:12');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32460, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31674, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11890145807'), 'Leandro Buso', '11999056910', 'leo@spacoquality.com.br', '11890145807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '05911180000187'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11890145807')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11890145807')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-18 15:24', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11890145807')), '2019-06-20', 'Concessão de isenção', '2019-06-18 15:24');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-18 15:24');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31674, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33222, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05594382810'), 'Leão de Almeida', '11991989803', 'leao@assertiv.com.br', '05594382810', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05594382810')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05594382810')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:25', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05594382810')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:25');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:25');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33222, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28176, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803'), 'Leonardo Calix Soares', '11999321712', 'leonardo.calix@sescsp.org.br', '34994120803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-04', '2019-06-04', '2019-06-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-03 16:06', '2019-06-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803')), '2019-06-05', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 28176, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34994120803')), 1485, 1, '2019-06-20', '2019-06-20');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30072, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79168078072'), 'Leticia Lessa da Silva', '51999999999', 'leticia.silveira@sesirs.org.br', '79168078072', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79168078072')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79168078072')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-11 09:14', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79168078072')), '2019-06-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30072, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79168078072')), 2475, 1, '2019-06-17', '2019-06-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33224, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36886125826'), 'Leticia Lima de Oliveira', '41997672554', 'leticia.oliveira@impluscare.com.br', '36886125826', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36886125826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36886125826')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:26', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36886125826')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:26');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:26');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33224, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34423, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ligia Antunes Ferreira'), 'Ligia Antunes Ferreira', '1144204200', 'LIGIA@CGPBRASIL.COM.BR', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (19716, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02072941431'), 'Ligia Patricia Leao Ramos', '82999109609', 'Ligia@asabranca.ind.br', '02072941431', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02072941431')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02072941431')), 201904, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-23', '2019-04-23', '2019-04-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-04-22 10:55', '2019-04-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02072941431')), '2019-04-24', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 19716, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02072941431')), 1500, 1, '2019-05-15', '2019-05-15');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (22347, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892'), 'Lilian Conceição Cantanhede Santos', '11991120298', 'lilian.csantos@grupofleury.com.br', '28392525892', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-08', '2019-05-08', '2019-05-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-07 08:45', '2019-05-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892')), '2019-05-09', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 22347, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892')), 1500, 1, '2019-05-07', '2019-05-07');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30243, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20066532884'), 'Lilian Nunes Silva', '11994026730', 'lilian.nsilva@claro.com.br', '20066532884', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20066532884')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20066532884')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-11 15:26', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20066532884')), '2019-06-13', 'Concessão de isenção', '2019-06-11 15:26');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-11 15:26');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30243, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24168, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84913355368'), 'Lilyanne Mendes Barros Lobato', '98996082567', 'fernandamendes@fiema.org.br', '84913355368', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84913355368')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84913355368')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-16 10:21', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84913355368')), '2019-05-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 24168, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84913355368')), 2475, 1, '2019-06-03', '2019-06-03');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30058, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66269628091'), 'Lisiane Borda Mendonça', '51992128050', 'lisiane.mendonca@sesirs.org.br', '66269628091', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66269628091')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66269628091')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-11 08:48', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66269628091')), '2019-06-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30058, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66269628091')), 2475, 1, '2019-06-17', '2019-06-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33316, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25279653772'), 'Louis Anthony Servizio', '11941977100', 'lservizio@cgpbrasil.com', '25279653772', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25279653772')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25279653772')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 18:51', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25279653772')), '2019-06-29', 'Concessão de isenção', '2019-06-27 18:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 18:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33316, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32798, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45875124865'), 'Lucas de Franca Silva', '11945806615', 'LUCASFRANCA.SILVA@BRADESCCO.COM.BR', '45875124865', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45875124865')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45875124865')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:35', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45875124865')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:35');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:35');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32798, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23505, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07230746400'), 'Lucélia Jamilla Pereira da Silva', '84999380348', 'luceliajamilla@gmail.com', '07230746400', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07230746400')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07230746400')), 201905, 2, 1650, 1650, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-14', '2019-05-14', '2019-05-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1650, '2019-05-13 11:52', '2019-05-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07230746400')), '2019-05-15', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 23505, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07230746400')), 1650, 1, '2019-11-07', '2019-11-07');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1650);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37274, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Lucia Harumi Muramatu'), 'Lucia Harumi Muramatu', '11983453355', 'luciamuramatu@uol.com.br', '', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Lucia Harumi Muramatu')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Lucia Harumi Muramatu')), 201907, 2, 450, 0, 0, 450, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-19', '2019-07-19', '2019-07-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 450, '2019-07-18 10:33', '2019-07-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Lucia Harumi Muramatu')), '2019-07-20', 'Concessão de isenção', '2019-07-18 10:33');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 450, 'Concessão de isenção', '2019-07-18 10:33');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 54, 37274, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31693, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27303394850'), 'Luciana Donato de Souza', '11999056910', 'comercial@spacoquality.com.br', '27303394850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '05911180000187'), 2, '2019-06-18 16:06', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27303394850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27303394850')), 201906, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', '2019-06-18 16:06', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-18 16:06', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27303394850')), '2019-06-20', 'Inscrição Cancelada', '2019-06-18 16:06');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31094, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28616322833'), 'Luciana Maranguelo', '11989740217', 'maranguelo_luciana@allergan.com', '28616322833', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '43426626000924'), 2, '2019-06-14 16:55', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28616322833')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28616322833')), 201906, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-15', '2019-06-15', '2019-06-16', '2019-06-14 16:55', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-14 16:55', '2019-06-15', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28616322833')), '2019-06-16', 'Inscrição Cancelada', '2019-06-14 16:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33227, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34936802875'), 'Luciana Rocha', '11971239927', 'luciana.rocha@marsh.com', '34936802875', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34936802875')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34936802875')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:27', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34936802875')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:27');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:27');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33227, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26451, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10742374718'), 'Luciana Thaís Nunes Lima', '21981297804', 'Lucianalima84@gmail.com', '10742374718', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10742374718')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10742374718')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-27 16:44', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10742374718')), '2019-05-29', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 26451, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10742374718')), 2750, 1, '2019-09-26', '2019-09-26');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34089, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Luciane Silveira'), 'Luciane Silveira', '1132666497', 'luciane@hotmail.com', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33230, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26679632889'), 'Luciane Xavier Santos', '11966232626', 'lucianesantos@deloitte.com', '26679632889', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26679632889')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26679632889')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:28', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26679632889')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:28');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:28');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33230, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23223, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26988092803'), 'Luciano Augusto Madid Rosa', '11900000000', 'equipetec.administrativa-DRHD@cptm.sp.gov.br', '26988092803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26988092803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26988092803')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-11', '2019-05-11', '2019-05-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-10 11:14', '2019-05-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26988092803')), '2019-05-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 23223, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26988092803')), 1485, 1, '2019-06-04', '2019-06-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29786, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14913612808'), 'Luciano Dacio Gallo', '1199593332', 'luciano_dacio.gallo@daimler.com', '14913612808', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14913612808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14913612808')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-11', '2019-06-11', '2019-06-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-10 10:14', '2019-06-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14913612808')), '2019-06-12', 'Concessão de isenção', '2019-06-10 10:14');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-10 10:14');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 29786, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32530, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90509161715'), 'Ludmilla de SA Moraes Telles Silva', '11999625545', 'LMORAES@SESICONI.COM.BR', '90509161715', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90509161715')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90509161715')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:12', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90509161715')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:12');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:12');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32530, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (19941, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21641374349'), 'Luis Álvaro dos Santos Correa', '98999728257', 'luisfapead@gmail.com', '21641374349', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21641374349')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21641374349')), 201904, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-24', '2019-04-24', '2019-04-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-04-23 13:50', '2019-04-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21641374349')), '2019-04-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 19941, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21641374349')), 900, 1, '2019-04-29', '2019-04-29');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29590, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12125462885'), 'Luiz Claudio Mendes Carvalho', '13992081785', 'luizclaudio@luizclaudio.med.br', '12125462885', null, 2, '2019-06-08 13:16', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12125462885')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12125462885')), 201906, 1, 900, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-09', '2019-06-09', '2019-06-10', '2019-06-08 13:16', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-08 13:16', '2019-06-09', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12125462885')), '2019-06-10', 'Inscrição Cancelada', '2019-06-08 13:16');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23278, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869'), 'Luiz Fernando de Barros', '11996262950', 'peritomoto@gmail.com', '09609883869', null, 2, '2019-05-10 14:31', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869')), 201905, 2, 900, 900, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-11', '2019-05-11', '2019-05-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 900, '2019-05-10 14:31', '2019-05-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869')), '2019-05-12', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 23278, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869')), 900, 1, '2019-06-07', '2019-06-07');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 900);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30075, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02700880161'), 'Luiza Freire de Carvalho', '61981789229', 'luiza.carvalho@ielcni.com.br', '02700880161', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '33665126000134'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02700880161')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02700880161')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-11 09:18', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02700880161')), '2019-06-13', 'Concessão de isenção', '2019-06-11 09:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-11 09:18');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 30075, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31443, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23269992823'), 'Lygia Palomino Bernardo', '11987883681', 'lygia.bernardo@acsc.org.br', '23269992823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60922168000186'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23269992823')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23269992823')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-17 17:23', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23269992823')), '2019-06-19', 'Concessão de isenção', '2019-06-17 17:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-17 17:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31443, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33232, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46507173886'), 'Maisa Cardoso Piza', '01198915684', 'maisa.piza@bradeesco.com.br', '46507173886', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46507173886')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46507173886')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:29', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46507173886')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:29');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:29');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33232, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32813, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11517366607'), 'Maluh Gabriela Pereira Fortunato', '35988522097', 'MALUHFORTUNATO@HOTMAIL.COM', '11517366607', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11517366607')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11517366607')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:55', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11517366607')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:55');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32813, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30733, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31937113817'), 'Maraísa Nunes Theodoro', '11963636351', 'maraisanunes@gmail.com', '31937113817', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31937113817')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31937113817')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-13 10:43', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31937113817')), '2019-06-15', 'Concessão de isenção', '2019-06-13 10:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-13 10:43');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30733, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30527, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857'), 'Marcela de Souza Dias', '11989217186', 'marcela.dias@ituran.com.br', '34051209857', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857')), 201906, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-13', '2019-06-13', '2019-06-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-06-12 14:36', '2019-06-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857')), '2019-06-14', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30527, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857')), 1500, 1, '2019-06-20', '2019-06-20');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30276, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22003984844'), 'Marcelo Teles', '11999819038', 'marcelo.teles@jdecoffee.com', '22003984844', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22003984844')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22003984844')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-11 16:47', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22003984844')), '2019-06-13', 'Concessão de isenção', '2019-06-11 16:47');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-11 16:47');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30276, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33233, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07615430828'), 'Marcia Toth Akashi', '01199992137', 'marcia.akashi@bradesco.com.br', '07615430828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07615430828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07615430828')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:30', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07615430828')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:30');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:30');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33233, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25745, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88438090168'), 'Marcio Soares Viana', '62982005128', 'marciosoares.sesi@sistemafieg.org.br', '88438090168', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88438090168')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88438090168')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:33', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88438090168')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25745, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '88438090168')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26424, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28226671876'), 'Marco Rogério Lopes Bariani', '11941568782', 'lilian.batista@grupomast.com.br', '28226671876', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28226671876')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28226671876')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-27 15:59', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28226671876')), '2019-05-29', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26424, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28226671876')), 1500, 1, '2019-05-31', '2019-05-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25829, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996'), 'Marcos Vinicius Kaminski Filho', '4188425745', 'aline_bbandeira@hotmail.com', '04171070996', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-23 16:56', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25829, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), 1500, 1, '2019-05-31', '2019-05-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25508, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996'), 'Marcos Vinicius Kaminski Filho', '41988425745', 'marcos.kaminski@unimedcuritiba.com.br', '04171070996', null, 2, '2019-05-22 16:31', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), 201905, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', '2019-05-22 16:31', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-22 16:31', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04171070996')), '2019-05-24', 'Inscrição Cancelada', '2019-05-22 16:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32582, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82900272653'), 'Marcus Paulo G de Souza', '11982136144', 'marcus0912@gmail.com', '82900272653', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82900272653')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82900272653')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:50', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82900272653')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:50');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:50');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32582, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31340, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03294670850'), 'Maria Angelica Maximo de Carvalho Lima', '1199784844', 'angelica.lima@engelsconsulte.com.br', '03294670850', null, 2, '2019-06-17 12:42', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03294670850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03294670850')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', '2019-06-17 12:42', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-17 12:42', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03294670850')), '2019-06-19', 'Inscrição Cancelada', '2019-06-17 12:42');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28161, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05071729814'), 'Maria Cristina B. Villalva Guedes', '11987200068', 'educathus@gmail.com', '05071729814', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20088008000169'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05071729814')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05071729814')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-04', '2019-06-04', '2019-06-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-03 15:13', '2019-06-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05071729814')), '2019-06-05', 'Concessão de isenção', '2019-06-03 15:13');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-03 15:13');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 28161, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27526, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02206395827'), 'Maria Cristina Cinopolli Gomas', '11992264230', 'cristinagomas@socialconsultoria.com.br', '02206395827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02316802000130'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02206395827')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02206395827')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-31', '2019-05-31', '2019-06-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-30 15:47', '2019-05-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02206395827')), '2019-06-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 27526, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02206395827')), 1485, 1, '2019-06-15', '2019-06-15');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26433, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725'), 'Maria de Fátima Ribeiro Mendonca', '21996308031', 'mfrmendonca@petrobras.com.br', '33059730725', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-27 16:17', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725')), '2019-05-29', 'Concessão de isenção', '2019-05-27 16:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-27 16:17');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26433, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24273, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30707382491'), 'Maria Goretti de França', '21999248828', 'gorettifranca@petrobras.com.br', '30707382491', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30707382491')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30707382491')), 201905, 2, 2750, 2750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2750, '2019-05-16 15:23', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30707382491')), '2019-05-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 24273, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30707382491')), 2750, 1, '2019-09-24', '2019-09-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34421, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Maria Helena Zonzini'), 'Maria Helena Zonzini', '11984537888', 'MARIA@CGPBRASIL.COM.BR', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32604, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32125555808'), 'Mariana Afarelli do Prado', '11971128904', 'MARIANA.AFARELLI@DECA.COM.BR', '32125555808', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32125555808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32125555808')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:11', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32125555808')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:11');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:11');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32604, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31959, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25218776890'), 'Mariana Klopfer', '11981756287', 'mariana@nutricius.com.br', '25218776890', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25218776890')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25218776890')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 16:09', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25218776890')), '2019-06-21', 'Concessão de isenção', '2019-06-19 16:09');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 16:09');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31959, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (20041, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02750338301'), 'Marília Fernandes Campos de Azevedo', '98981958571', 'mfcdea@hotmail.com', '02750338301', null, 2, '2019-04-23 21:29', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02750338301')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02750338301')), 201904, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-24', '2019-04-24', '2019-04-25', '2019-04-23 21:29', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-04-23 21:29', '2019-04-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02750338301')), '2019-04-25', 'Inscrição Cancelada', '2019-04-23 21:29');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32179, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06640756650'), 'Marina Pinheiro Alves da Silva', '11992871846', 'msilva92@its.jnj.com', '06640756650', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06640756650')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06640756650')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-21', '2019-06-21', '2019-06-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-20 22:05', '2019-06-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06640756650')), '2019-06-22', 'Concessão de isenção', '2019-06-20 22:05');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-20 22:05');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32179, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (19174, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05616964468'), 'Mário Varela Amorim', '84991079883', 'mario@consulte.eng.br', '05616964468', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05616964468')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05616964468')), 201904, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-18', '2019-04-18', '2019-04-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-04-17 09:44', '2019-04-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05616964468')), '2019-04-19', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 19174, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05616964468')), 1500, 1, '2019-04-23', '2019-04-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31590, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '1130854590', 'msantos@espm.br', '11566074851', null, 2, '2019-06-18 12:33', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851')), 201906, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', '2019-06-18 12:33', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-18 12:33', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851')), '2019-06-20', 'Inscrição Cancelada', '2019-06-18 12:33');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26212, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26833523878'), 'Maurem Aparecida Montes da Silveira', '11965634994', 'MAUREM@STARSAUDAVEL.COM.BR', '26833523878', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26833523878')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26833523878')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-26', '2019-05-26', '2019-05-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-25 16:23', '2019-05-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26833523878')), '2019-05-27', 'Concessão de isenção', '2019-05-25 16:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-25 16:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 26212, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31974, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09796839806'), 'Mauricio dos Santos', '11947476031', 'celafiscs.mauricio@gmail.com', '09796839806', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09796839806')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09796839806')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 16:30', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09796839806')), '2019-06-21', 'Concessão de isenção', '2019-06-19 16:30');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 16:30');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31974, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33235, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31265181845'), 'Maurizio Chieco Ribeiro', '11984000244', 'maurizio@assertiv.com.br', '31265181845', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31265181845')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31265181845')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:31', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31265181845')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:31');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33235, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30478, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13607726779'), 'Mayara Costa da Silva', '21965316711', 'mayara.costa@tvglobo.com.br', '13607726779', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13607726779')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13607726779')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-13', '2019-06-13', '2019-06-14', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-12 12:28', '2019-06-13', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13607726779')), '2019-06-14', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30478, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13607726779')), 2475, 1, '2019-06-25', '2019-06-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29452, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26375436800'), 'Melissa Biazotto Spagnol', '19998296307', 'melissa_biazotto@br.ajinomoto.com', '26375436800', null, 2, '2019-06-07 15:59', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26375436800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26375436800')), 201906, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', '2019-06-07 15:59', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-06-07 15:59', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26375436800')), '2019-06-09', 'Inscrição Cancelada', '2019-06-07 15:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32553, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '55187196049'), 'Melissa Pasquel Peterson', '11989013933', 'MELISSAPETERSON@GLOBO.COM', '55187196049', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '55187196049')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '55187196049')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:00', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '55187196049')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:00');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:00');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32553, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25503, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835'), 'Mellie Ane de Morais Dias', '11972770263', 'MMORAIS@ELOPAR.COM.BR', '26264503835', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-22 16:25', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835')), '2019-05-24', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 25503, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835')), 1485, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25748, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83152962134'), 'Michele Fernandes de Araújo', '6232191399', 'michelearaujo.sesi@sistemafieg.org.br', '83152962134', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83152962134')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83152962134')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:36', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83152962134')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25748, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83152962134')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25148, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53426169991'), 'Mirian Possamai', '47991554197', 'mirian@ipreville.sc.gov.br', '53426169991', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53426169991')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53426169991')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-21 12:31', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53426169991')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25148, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53426169991')), 2475, 1, '2019-05-23', '2019-05-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34694, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668'), 'Miryam C Mazieiro V da Silva', '1155794919', 'mimazieiro@bol.com.br', '48515930668', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000179'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668')), 201907, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-05', '2019-07-05', '2019-07-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-07-04 15:22', '2019-07-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668')), '2019-07-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 34694, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668')), 1485, 1, '2019-06-25', '2019-06-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23931, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87581841715'), 'Mônica Machado Martins Ferreira Werneck', '21984763117', 'monica.werneck@vale.com', '87581841715', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87581841715')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87581841715')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-15 11:47', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87581841715')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 23931, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87581841715')), 2475, 1, '2019-05-21', '2019-05-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32650, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35192679850'), 'Monique Batista de Lima', '1198625337', 'MBLINA@LEROYMERLIN.COM.BR', '35192679850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35192679850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35192679850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:54', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35192679850')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:54');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:54');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32650, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25217, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69100365734'), 'Nair Monteiro da Silva', '21998026230', 'nizamonteiro@gmail.com', '69100365734', null, 2, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69100365734')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69100365734')), 201905, 1, 2750, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 2750, '2019-05-21 16:33', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69100365734')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 25217, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32609, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47382494870'), 'Natalia Cinopolli Gomas', '11940662112', 'NATI-GOMAS@HOTMAIL.COM', '47382494870', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47382494870')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47382494870')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:15', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47382494870')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32609, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25947, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11775406733'), 'Natalia Coutinho de Oliveira', '2421027079', 'flavio.junior@unimedvr.com.br', '11775406733', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11775406733')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11775406733')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-25', '2019-05-25', '2019-05-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-24 09:32', '2019-05-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11775406733')), '2019-05-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25947, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11775406733')), 2475, 1, '2019-06-06', '2019-06-06');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33236, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23072209847'), 'Natalia Franco', '11976968602', 'ferreiranatalia@la-bridgestone.com', '23072209847', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23072209847')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23072209847')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:32', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23072209847')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:32');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:32');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33236, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29442, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36921324842'), 'Nathalia de Mira Theodoro Arnoni', '19992110289', 'nathalia_silva@br.ajinomoto.com', '36921324842', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36921324842')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36921324842')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-07 15:41', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36921324842')), '2019-06-09', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 29442, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36921324842')), 2475, 1, '2019-08-13', '2019-08-13');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29430, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69157596891'), 'Nelson de Souza Guedes', '11984013637', 'nelson@educathus.com.br', '69157596891', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20088008000169'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69157596891')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69157596891')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-07 15:04', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69157596891')), '2019-06-09', 'Concessão de isenção', '2019-06-07 15:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-07 15:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 29430, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33275, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22421981816'), 'Octavio Augusto Camilo de Oliveira', '1133945660', 'octavio.acoliveira@hsl.org.br', '22421981816', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22421981816')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22421981816')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:10', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22421981816')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:10');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:10');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33275, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31837, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866'), 'Osvaldo Stevano', '11999333632', 'stevano@maratonaqv.com.br', '04209423866', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20730561000153'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-19 11:15', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866')), '2019-06-21', 'Concessão de isenção', '2019-06-19 11:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-19 11:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31837, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33237, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35061342801'), 'Patricia Beloto', '11964007294', 'patricia.rego@portoseguro.com.br', '35061342801', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35061342801')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35061342801')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:33', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35061342801')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:33');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:33');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33237, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24810, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56370636134'), 'Patrícia Cássia de Almeida Pereira', '61982506603', 'patricia.pereira@uniceub.br', '56370636134', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56370636134')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56370636134')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-21', '2019-05-21', '2019-05-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-20 08:14', '2019-05-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56370636134')), '2019-05-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 24810, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56370636134')), 2475, 1, '2019-06-14', '2019-06-14');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25468, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patricia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-23', '2019-05-23', '2019-05-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-22 15:24', '2019-05-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855')), '2019-05-24', 'Concessão de isenção', '2019-05-22 15:24');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-22 15:24');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 25468, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33238, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26265317822'), 'Patricia Milan', '01199431403', 'patricia.milan@bradeco.com.br', '26265317822', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26265317822')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26265317822')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:34', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26265317822')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:34');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:34');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33238, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25750, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02380414173'), 'Patrícia Pereira Tinoco', '6232191399', 'patriciatinoco.sesi@sistemafieg.org.br', '02380414173', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02380414173')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02380414173')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:38', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02380414173')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25750, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02380414173')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31307, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14547440816'), 'Patricia Piquera Vianna', '11997298152', 'patricia.piquera@sescsp.org.br', '14547440816', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 2, '2019-06-17 11:02', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14547440816')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14547440816')), 201906, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', '2019-06-17 11:02', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-17 11:02', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14547440816')), '2019-06-19', 'Inscrição Cancelada', '2019-06-17 11:02');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34102, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Paula da Silva Kioroglo Reine'), 'Paula da Silva Kioroglo Reine', '1133945660', 'paula.skioroglo@hsl.org.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23475, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48174840478'), 'Paula Francinete Silva de Araujo', '84981831730', 'paullamangabeira@gmail.com', '48174840478', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48174840478')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48174840478')), 201905, 2, 1650, 1650, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-14', '2019-05-14', '2019-05-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1650, '2019-05-13 11:14', '2019-05-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48174840478')), '2019-05-15', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 23475, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48174840478')), 1650, 1, '2019-11-07', '2019-11-07');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1650);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32791, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '64047369853'), 'Paulo Marino Marchina', '19981847528', 'PAULO.MARCHINA@ALESCOPR.COM.BR', '64047369853', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '64047369853')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '64047369853')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:10', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '64047369853')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:10');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:10');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32791, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32535, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40498472809'), 'Pedro Paulo Oliveira Moda', '11965467930', 'PEDRO.PAULOLIVEIRA@HOTMAIL.COM', '40498472809', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40498472809')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40498472809')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 09:23', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40498472809')), '2019-06-27', 'Concessão de isenção', '2019-06-25 09:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 09:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32535, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31441, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17928917840'), 'Pricila Santos Capanema', '11980785446', 'pricila.capanema@acsc.org.br', '17928917840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60922168000186'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17928917840')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17928917840')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-17 17:19', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17928917840')), '2019-06-19', 'Concessão de isenção', '2019-06-17 17:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-17 17:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31441, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28482, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11915271827'), 'Rachel Zausner Skarbinik', '11972064478', 'rachelzs@hotmail.com', '11915271827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02052043000146'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11915271827')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11915271827')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-05', '2019-06-05', '2019-06-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-04 15:19', '2019-06-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11915271827')), '2019-06-06', 'Concessão de isenção', '2019-06-04 15:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-04 15:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 28482, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24061, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04978735599'), 'Rafael dos Reis Cardoso Passos', '71991484698', 'rafaelrcpassos@gmail.com', '04978735599', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04978735599')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04978735599')), 201905, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-05-15 17:45', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04978735599')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 24061, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04978735599')), 1500, 1, '2019-05-22', '2019-05-22');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33288, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34602384889'), 'Raquel de Souza Aurélio', '11980658607', 'raurelio@haoc.com.br', '34602384889', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34602384889')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34602384889')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:25', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34602384889')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:25');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:25');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33288, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25751, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02762550114'), 'Rebeca Daher França', '62992793617', 'rebecafranca.sesi@sistemafieg.org.br', '02762550114', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02762550114')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02762550114')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 15:40', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02762550114')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25751, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02762550114')), 2475, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28750, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-06', '2019-06-06', '2019-06-07', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-05 13:26', '2019-06-06', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801')), '2019-06-07', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 28750, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801')), 1485, 1, '2019-06-11', '2019-06-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32591, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15522657812'), 'Rejane de Andrade Filgueiras', '11966244000', 'REJANEFILGUEIRAS@GMAIL.COM', '15522657812', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15522657812')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15522657812')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:00', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15522657812')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:00');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:00');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32591, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32808, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16614571850'), 'Renata Gali Silva Kassawara', '11987069127', 'RENATA.KASSAWARA@BABCOKINTERNIONAL.COM.BRAC', '16614571850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16614571850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16614571850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 16:51', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16614571850')), '2019-06-27', 'Concessão de isenção', '2019-06-25 16:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 16:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32808, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (18548, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01048424588'), 'Renata Lima Araujo', '71982380423', 'renatala4@gmail.com', '01048424588', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01048424588')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01048424588')), 201904, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-12', '2019-04-12', '2019-04-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-04-11 07:24', '2019-04-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01048424588')), '2019-04-13', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 18548, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01048424588')), 2475, 1, '2019-04-30', '2019-04-30');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31357, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07918573790'), 'Renata Mirela Gaburro Teixeira', '11981620225', 'renata.teixeira@am.umicore.com', '07918573790', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07918573790')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07918573790')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-17 13:46', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07918573790')), '2019-06-19', 'Concessão de isenção', '2019-06-17 13:46');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-17 13:46');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31357, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34091, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Renata Parolini'), 'Renata Parolini', '1132666497', 'reanata.parolini@mbsseguros.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29464, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44714897802'), 'Renata Rodrigues Bispo', '11953442488', 'renatabispo2014@outlook.com', '44714897802', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44714897802')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44714897802')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-07 16:03', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44714897802')), '2019-06-09', 'Concessão de isenção', '2019-06-07 16:03');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-07 16:03');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 29464, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26670, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00781182980'), 'Ricardo Correa Cunha', '41991170590', 'ricardoccunha@gmail.com', '00781182980', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00781182980')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00781182980')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-28 11:59', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00781182980')), '2019-05-30', 'Concessão de isenção', '2019-05-28 11:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-28 11:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26670, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34096, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ricardo de Marchi'), 'Ricardo de Marchi', '11996029624', 'rdmarchi@cpm.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31499, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04331720969'), 'Richeli Terezinha Simone', '4232712423', 'richeli.simone@klabin.com.br', '04331720969', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04331720969')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04331720969')), 201906, 2, 1500, 1500, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1500, '2019-06-18 08:40', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04331720969')), '2019-06-20', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31499, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04331720969')), 1500, 1, '2019-06-18', '2019-06-18');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1500);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31280, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gmail.com', '35673478100', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100')), 201906, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-17 10:13', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100')), '2019-06-19', 'Concessão de isenção', '2019-06-17 10:13');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-06-17 10:13');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 31280, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (28328, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16624698888'), 'Roberto Brasil Lima', '11996673953', 'robrali@gmail.com', '16624698888', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16624698888')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16624698888')), 201906, 2, 750, 750, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-05', '2019-06-05', '2019-06-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 750, '2019-06-04 09:36', '2019-06-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16624698888')), '2019-06-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 55, 28328, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16624698888')), 750, 1, '2019-06-12', '2019-06-12');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 750);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29451, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33011759880'), 'Rodrigo Cadima Corradi', '11941611100', 'rocadima@hotmail.com', '33011759880', null, 2, '2019-06-07 15:57', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33011759880')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33011759880')), 201906, 1, 900, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-08', '2019-06-08', '2019-06-09', '2019-06-07 15:57', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-06-07 15:57', '2019-06-08', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33011759880')), '2019-06-09', 'Inscrição Cancelada', '2019-06-07 15:57');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34198, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Rodrigo Jose'), 'Rodrigo Jose', '1150170315', 'rodrigo@shibuyapratica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32559, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08443451998'), 'Rodrigo Lopes Silva', '48984381010', 'Rodrigo@somoslive360.com.br', '08443451998', null, 2, '2019-06-25 10:04', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08443451998')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08443451998')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', '2019-06-25 10:04', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:04', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08443451998')), '2019-06-27', 'Inscrição Cancelada', '2019-06-25 10:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33240, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02706663979'), 'Rodrigo Malucelli Martins', '41988056512', 'rodrigo.malucelli@impluscare.com.br', '02706663979', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02706663979')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02706663979')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:35', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02706663979')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:35');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:35');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33240, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31963, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30264822854'), 'Rodrigo Shibuya', '11997576116', 'suporte@nutricius.com.br', '30264822854', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30264822854')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30264822854')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-19 16:15', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30264822854')), '2019-06-21', 'Concessão de isenção', '2019-06-19 16:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-19 16:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31963, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26422, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953'), 'Rony Tschoeke', '41991968484', 'rony@promovesaude.com.br', '98809636953', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-28', '2019-05-28', '2019-05-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-27 15:59', '2019-05-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953')), '2019-05-29', 'Concessão de isenção', '2019-05-27 15:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-27 15:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 26422, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25629, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04107881806'), 'Rosa Maria Domingues', '19998510072', 'rosa@mediarh.com.br', '04107881806', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '10923561000116'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04107881806')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04107881806')), 201905, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-23 10:19', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04107881806')), '2019-05-25', 'Concessão de isenção', '2019-05-23 10:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-05-23 10:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 25629, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33279, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21512354830'), 'Sabrina Gonçalves Manga de Lima', '1135536081', 'alinmelo@santander.com.br', '21512354830', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21512354830')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21512354830')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 16:14', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21512354830')), '2019-06-29', 'Concessão de isenção', '2019-06-27 16:14');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 16:14');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33279, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25633, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33001359234'), 'Sandra do Socorro Oliveira Santos', '96984099703', 'sandra.santos@ap.sesi.org.br', '33001359234', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33001359234')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33001359234')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-23 10:22', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33001359234')), '2019-05-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 25633, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33001359234')), 2475, 1, '2019-06-19', '2019-06-19');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25102, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '50345389468'), 'Sandra Regina de Queiroz', '84988994549', 'sandrinhaqvst@yahoo.com.br', '50345389468', null, 2, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '50345389468')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '50345389468')), 201905, 1, 1650, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-22', '2019-05-22', '2019-05-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 1650, '2019-05-21 10:47', '2019-05-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '50345389468')), '2019-05-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 56, 25102, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (17693, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02988588430'), 'Sarah Jambo Lessa de Medeiros', '82999834500', 'SARAH.LESSA@SISTEMAFIEA.COM.BR', '02988588430', null, 2, '2019-04-01 15:18', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02988588430')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02988588430')), 201904, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-04-02', '2019-04-02', '2019-04-03', '2019-04-01 15:18', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-04-01 15:18', '2019-04-02', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02988588430')), '2019-04-03', 'Inscrição Cancelada', '2019-04-01 15:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31393, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453'), 'Sebastião José da Rocha Neto', '61981896706', 'sebastiaoneto@in.gov.br', '53591488453', null, 2, '2019-06-17 14:59', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), 201906, 1, 1500, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', '2019-06-17 14:59', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-17 14:59', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), '2019-06-19', 'Inscrição Cancelada', '2019-06-17 14:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31687, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453'), 'Sebastião José da Rocha Neto', '61981896706', 'sebastiaoneto@in.gov.br', '53591488453', null, 2, '2019-06-18 15:47', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), 201906, 1, 2750, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', '2019-06-18 15:47', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2750, '2019-06-18 15:47', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '53591488453')), '2019-06-20', 'Inscrição Cancelada', '2019-06-18 15:47');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26811, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03382546922'), 'Sheila Melnick', '11985678737', 'melnick.sheila@gmail.com', '03382546922', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03382546922')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03382546922')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-28 14:21', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03382546922')), '2019-05-30', 'Concessão de isenção', '2019-05-28 14:21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-28 14:21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 26811, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33241, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11167284860'), 'Shirlei Teixeira', '12981229963', 'shirlei.teixeira@basf.com', '11167284860', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11167284860')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11167284860')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:36', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11167284860')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:36');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:36');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33241, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (26611, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70598274987'), 'Silvia Pessoa Teuber', '41984340724', 'silvia.teuber@sistemafiep.org.br', '70598274987', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70598274987')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70598274987')), 201905, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-29', '2019-05-29', '2019-05-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-05-28 10:08', '2019-05-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70598274987')), '2019-05-30', 'Concessão de isenção', '2019-05-28 10:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-05-28 10:08');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 26611, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (24198, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41781139768'), 'Sílvia Regina Gonçalves', '21993396023', 'casimatha@ig.com.br', '41781139768', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41781139768')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41781139768')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-17', '2019-05-17', '2019-05-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-16 12:15', '2019-05-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41781139768')), '2019-05-18', 'Concessão de isenção', '2019-05-16 12:15');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-16 12:15');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 24198, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (27646, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04293580832'), 'Silvia T. S. S. Marchetti', '11971529104', 'silvia.marchetti@globo.com', '04293580832', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04293580832')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04293580832')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-01', '2019-06-01', '2019-06-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-31 08:49', '2019-06-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04293580832')), '2019-06-02', 'Concessão de isenção', '2019-05-31 08:49');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-31 08:49');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 27646, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25736, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823'), 'Solange Davino', '11984909085', 's.davino56@hotmail.com', '08446072823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 2, '2019-05-23 15:18', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823')), 201905, 1, 1485, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', '2019-05-23 15:18', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-05-23 15:18', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823')), '2019-05-25', 'Inscrição Cancelada', '2019-05-23 15:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (22723, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73565075791'), 'Sônia Maria Muniz Machado Ferreira', '02198087659', 'sferreira@sesc.com.br', '73565075791', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73565075791')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73565075791')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-09', '2019-05-09', '2019-05-10', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-08 14:29', '2019-05-09', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73565075791')), '2019-05-10', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 22723, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73565075791')), 2475, 1, '2019-07-02', '2019-07-02');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30267, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89442385887'), 'Sonia Regina Silva Contro', '11993503110', 'soniareginasc21@gmail.com', '89442385887', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89442385887')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89442385887')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-12', '2019-06-12', '2019-06-13', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-11 16:20', '2019-06-12', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89442385887')), '2019-06-13', 'Concessão de isenção', '2019-06-11 16:20');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-11 16:20');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 30267, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34403, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Soraya Miranda'), 'Soraya Miranda', '1150170315', 'soraya@shibuyapratica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32596, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07751803860'), 'Sueli Soares Silva', '11983600808', 'SUELI.SILVA@AON.COM', '07751803860', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07751803860')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07751803860')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:05', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07751803860')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:05');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:05');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32596, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32392, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10380107805'), 'Suely dos Santos Cardoso', '11999767699', 'SUELY.CARDOSO@DATAPREV.GOV.BR', '10380107805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '42422253000284'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10380107805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10380107805')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-24 13:01', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10380107805')), '2019-06-26', 'Concessão de isenção', '2019-06-24 13:01');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-24 13:01');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32392, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33243, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41565132890'), 'Tácila Rodrigues da Silva', '11958819796', 'tacilarodrigues.silva@portoseguro.com.br', '41565132890', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41565132890')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41565132890')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:37', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41565132890')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:37');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:37');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33243, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34098, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Taiza Mata Martin Dias'), 'Taiza Mata Martin Dias', '11963405640', 'TAIZATH@YAHOO.COM.BR', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32459, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30921904835'), 'Talita Arago do Nascimento Alonso', '11992876993', 'TALITA.ALONSO@OPTUM.COM.BR', '30921904835', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30921904835')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30921904835')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-24 17:09', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30921904835')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:09');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-24 17:09');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 32459, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31385, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39532028803'), 'Talita de Souza Teixeira', '11974351593', 'talita.teixeira@cielo.com.br', '39532028803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '01027058000191'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39532028803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39532028803')), 201906, 2, 1485, 0, 0, 1485, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-18', '2019-06-18', '2019-06-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1485, '2019-06-17 14:40', '2019-06-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39532028803')), '2019-06-19', 'Concessão de isenção', '2019-06-17 14:40');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1485, 'Concessão de isenção', '2019-06-17 14:40');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31385, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33244, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27808641847'), 'Talita Franco Motta de Almeida', '11198410977', 'talita.almeida@bradesco.com.br', '27808641847', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27808641847')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27808641847')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:38', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27808641847')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:38');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:38');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33244, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32647, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30107957850'), 'Tatiana de Souza Martins', '11970114769', 'TMARTINS@QUALICORP.COM.BR', '30107957850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30107957850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30107957850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:49', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30107957850')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:49');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:49');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32647, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34101, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Tatiane de Oliveira Damasceno Ramos'), 'Tatiane de Oliveira Damasceno Ramos', '1133945660', 'tatiane.damasceno@hsl.org.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34196, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Tatiane Zilio'), 'Tatiane Zilio', '1150170315', 'tatiane@shibuyapratica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33246, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40553483803'), 'Taynã Alves', '11971917435', 'tayna.alves@mercermarshbeneficios.com', '40553483803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40553483803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40553483803')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:39', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40553483803')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:39');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:39');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33246, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25752, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91976693187'), 'Tays Almeida de Souza', '64999435525', 'tays.senai@sistemafieg.org.br', '91976693187', null, 2, '2019-05-23 15:43', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91976693187')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91976693187')), 201905, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', '2019-05-23 15:43', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-05-23 15:43', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91976693187')), '2019-05-25', 'Inscrição Cancelada', '2019-05-23 15:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23444, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06080990741'), 'Thais Conceição Almeida da Silva', '21985560081', 'thais.almeida@vale.com', '06080990741', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06080990741')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06080990741')), 201905, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-14', '2019-05-14', '2019-05-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-05-13 09:16', '2019-05-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06080990741')), '2019-05-15', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 23444, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06080990741')), 2475, 1, '2019-05-17', '2019-05-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34092, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Thais Costa'), 'Thais Costa', '70131406191', 'thais.costa@citi.com', '', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Thais Costa')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Thais Costa')), 201907, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-03', '2019-07-03', '2019-07-04', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-07-02 10:41', '2019-07-03', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Thais Costa')), '2019-07-04', 'Concessão de isenção', '2019-07-02 10:41');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-07-02 10:41');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 34092, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33248, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:40', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:40');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:40');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33248, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (23989, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38548040831'), 'Thales Rodrigues da Costa', '11995254430', 'tcosta@ncare.com.br', '38548040831', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38548040831')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38548040831')), 201905, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-16', '2019-05-16', '2019-05-17', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-05-15 14:37', '2019-05-16', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38548040831')), '2019-05-17', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 23989, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38548040831')), 1485, 1, '2019-05-23', '2019-05-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25754, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '97064505053'), 'Thiago Vieira Ferri', '62984054298', 'thiago.senai@sistemafieg.org.br', '97064505053', null, 2, '2019-05-23 15:45', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '97064505053')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '97064505053')), 201905, 1, 2475, 0, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', '2019-05-23 15:45', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 2475, '2019-05-23 15:45', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '97064505053')), '2019-05-25', 'Inscrição Cancelada', '2019-05-23 15:45');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (25634, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817')), 201905, 2, 900, 0, 0, 900, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-05-24', '2019-05-24', '2019-05-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 900, '2019-05-23 10:24', '2019-05-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817')), '2019-05-25', 'Concessão de isenção', '2019-05-23 10:24');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 900, 'Concessão de isenção', '2019-05-23 10:24');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 50, 25634, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30938, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06566135804'), 'Valéria Cristiane Galvão Vallesquino', '19989104021', 'valeria_vallesquino@br.ajinomoto.com', '06566135804', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06566135804')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06566135804')), 201906, 2, 2475, 2475, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-15', '2019-06-15', '2019-06-16', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 2475, '2019-06-14 10:28', '2019-06-15', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06566135804')), '2019-06-16', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 53, 30938, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06566135804')), 2475, 1, '2019-08-13', '2019-08-13');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 2475);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (29955, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08605555858'), 'Valquíria de Lima', '11996423354', 'valquiria@abgl.org.br', '08605555858', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08605555858')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08605555858')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-11', '2019-06-11', '2019-06-12', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-10 18:29', '2019-06-11', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08605555858')), '2019-06-12', 'Concessão de isenção', '2019-06-10 18:29');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-10 18:29');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 29955, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34095, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Carolina Gallo Baptistella'), 'Vanessa Carolina Gallo Baptistella', '1139081942', 'vanessa.carolina-galo-ext@siemens.COM', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34093, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Cristina Barbosa'), 'Vanessa Cristina Barbosa', '1132666497', 'alves.vanessa@uhgbrasil.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34094, 20, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Mioto'), 'Vanessa Mioto', '36346103873', 'Vanessa.mioto@siemens.com', '', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Mioto')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Mioto')), 201907, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-07-03', '2019-07-03', '2019-07-04', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-07-02 10:42', '2019-07-03', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vanessa Mioto')), '2019-07-04', 'Concessão de isenção', '2019-07-02 10:42');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-07-02 10:42');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 34094, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31623, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10118623877'), 'Vera Lucia Zaher-rutherford', '11996299065', 'zaher@usp.br', '10118623877', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10118623877')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10118623877')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-19', '2019-06-19', '2019-06-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-18 13:51', '2019-06-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10118623877')), '2019-06-20', 'Concessão de isenção', '2019-06-18 13:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-18 13:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 31623, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33250, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36885647829'), 'Victória Otero Favoretto da Cal', '11981122345', 'victoria.cal@edenred.com', '36885647829', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36885647829')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36885647829')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-28', '2019-06-28', '2019-06-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-27 15:41', '2019-06-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36885647829')), '2019-06-29', 'Concessão de isenção', '2019-06-27 15:41');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-27 15:41');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 33250, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32572, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09024872723'), 'Viviane Dias Ribeiro', '2733345657', 'vribeiro@findes.org.br', '09024872723', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09024872723')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09024872723')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 10:34', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09024872723')), '2019-06-27', 'Concessão de isenção', '2019-06-25 10:34');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 10:34');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32572, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (30773, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880'), 'Werther de Camargo Penteado Busato', '19996019767', 'wpbusato@mmm.com', '05907026880', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '45985371000108'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-14', '2019-06-14', '2019-06-15', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-13 12:44', '2019-06-14', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880')), '2019-06-15', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 30773, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880')), 1485, 1, '2019-06-17', '2019-06-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31850, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Claudinéia Zorzela', '11999575059', 'claudineiazorzela@natura.net', '27835032805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805')), 201906, 2, 1485, 1485, 0, 0, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-20', '2019-06-20', '2019-06-21', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 1485, '2019-06-19 11:53', '2019-06-20', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805')), '2019-06-21', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 52, 31850, 20, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805')), 1485, 1, '2019-09-12', '2019-09-12');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 1485);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32470, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34538561800'), 'Gabriel Ogata', '11998487767', 'GABRIEL.OGATA@MAPESOLUTIONS.COM', '34538561800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34538561800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34538561800')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 17:43', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34538561800')), '2019-06-26', 'Concessão de isenção', '2019-06-24 17:43');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 17:43');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32470, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32391, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22572633833'), 'Jose Mateus Alves', '1131467498', 'JALVES@SESISENAISP.ORG.BR', '22572633833', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22572633833')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22572633833')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-25', '2019-06-25', '2019-06-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-24 12:57', '2019-06-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22572633833')), '2019-06-26', 'Concessão de isenção', '2019-06-24 12:57');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-24 12:57');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32391, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (32598, 20, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35115896818'), 'Patricia Mariana COCUZZA Pereira', '11996101533', 'PATRICIA.PEREIRA@DORCONSULTORIA.COM.BR', '35115896818', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35115896818')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35115896818')), 201906, 2, 1500, 0, 0, 1500, 'Inscrição em evento: 18º Congresso Brasileiro de Qualidade de Vida', 30, '2019-06-26', '2019-06-26', '2019-06-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 1500, '2019-06-25 11:08', '2019-06-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35115896818')), '2019-06-27', 'Concessão de isenção', '2019-06-25 11:08');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 1500, 'Concessão de isenção', '2019-06-25 11:08');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 51, 32598, 20, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32006);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33178);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26327);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (14467);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32558);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33257);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31831);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29704);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31822);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33180);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25158);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31983);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29396);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34086);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32805);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31442);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32552);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34200);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33181);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24545);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34097);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30532);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31985);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26088);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32465);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32531);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24683);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33182);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33184);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27666);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34689);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24860);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33258);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29826);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34406);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28953);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30516);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27179);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34405);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34087);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25998);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33260);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33186);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23904);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29275);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25738);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32532);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32529);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31900);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33187);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25488);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32578);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32364);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32642);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (13383);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32376);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23929);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26036);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33266);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31995);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33190);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32468);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33191);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23891);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30274);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33268);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33287);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33263);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25265);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32536);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33251);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32527);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27671);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26600);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33192);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27565);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32810);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30067);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28291);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33194);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34404);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32462);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23847);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27080);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32789);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31834);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32556);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25495);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25240);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25498);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30113);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29097);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32611);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32393);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33298);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30285);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29110);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34587);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33197);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26097);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32803);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32588);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26998);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33202);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31568);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24264);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30193);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33270);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26602);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (22154);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28659);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31818);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31753);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19743);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34088);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33203);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25617);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25710);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31976);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31939);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32178);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26453);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28402);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33205);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27426);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33295);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33207);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33209);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (20616);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37549);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23228);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30834);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (22687);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31549);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24306);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32369);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32579);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32406);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26444);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33210);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31497);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33212);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32528);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27673);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33216);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26606);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34147);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26110);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28791);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24951);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25742);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (21768);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33218);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33272);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29063);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25623);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33273);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32799);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25191);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25263);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33220);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32648);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32534);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25264);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23226);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32550);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32460);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31674);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33222);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28176);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30072);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33224);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34423);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19716);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (22347);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30243);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24168);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30058);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33316);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32798);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37274);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33227);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34089);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33230);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23223);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29786);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32530);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19941);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30075);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31443);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33232);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32813);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30733);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30527);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30276);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33233);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25745);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26424);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25829);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32582);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28161);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27526);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26433);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34421);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32604);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31959);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32179);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19174);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26212);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33235);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30478);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32553);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25503);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25748);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25148);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34694);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23931);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32650);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32609);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25947);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33236);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29442);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29430);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33275);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31837);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33237);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24810);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25468);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33238);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25750);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34102);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32791);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32535);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31441);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28482);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24061);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33288);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25751);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28750);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32591);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32808);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18548);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31357);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34091);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29464);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26670);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34096);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31499);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31280);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (28328);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34198);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33240);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31963);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26422);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25629);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33279);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25633);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26811);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33241);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26611);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24198);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (27646);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (22723);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30267);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34403);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32596);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32392);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33243);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34098);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32459);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31385);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33244);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32647);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34101);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34196);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33246);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23444);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34092);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33248);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23989);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25634);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30938);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (29955);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34095);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34093);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34094);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (31623);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33250);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32572);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (30773);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32470);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32391);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (32598);

COMMIT;