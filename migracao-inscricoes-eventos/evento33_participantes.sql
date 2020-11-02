START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61786, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'adriana.persechini@cevalogistics.com', '22764059884', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61249, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26918938800'), 'Adriana Martins de Oliveira', '11989298259', 'amoliveira@sompo.com.br', '26918938800', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61383493000180'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61551, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48100875812'), 'Alamys Rodrigues Matias', '11984647495', 'alamysmatias@gmail.com', '48100875812', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48100875812')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48100875812')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:11', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48100875812')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:11');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:11');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61551, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61416, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803'), 'Aldemir Natucci Rizzo', '11973100303', 'aldemir_rizzo@hotmail.com', '05451548803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-24', '2020-01-24', '2020-01-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-23 09:05', '2020-01-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), '2020-01-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61416, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 75, 1, '2020-01-23', '2020-01-23');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61753, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30470387831'), 'Alexandra Roberta', '11991573654', 'alerosilva@hotmail.com', '30470387831', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30470387831')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30470387831')), 202002, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-02', '2020-02-02', '2020-02-03', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-02-01 21:23', '2020-02-02', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30470387831')), '2020-02-03', 'Concessão de isenção', '2020-02-01 21:23');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-02-01 21:23');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61753, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61463, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810'), 'Aline Damarys de Oliveira', '11981804994', 'saudebemestar@intercement.com', '37458206810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62258884000136'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61816, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30274499827'), 'Amanda Guimarães Pereira', '11951001811', 'equilibrare-sp@equilibrare.com.br', '30274499827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61229, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610'), 'Ana Cristina Borges Pimenta', '11984034146', 'anacristinapimenta@hotmail.com', '05614812610', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-17', '2020-01-17', '2020-01-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-16 14:33', '2020-01-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), '2020-01-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61229, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 75, 1, '2020-01-16', '2020-01-16');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61222, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29678135833'), 'André Giovanni Benício Galvão', '11995912168', 'agois15+2@hotmail.com', '29678135833', null, 2, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29678135833')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29678135833')), 202001, 1, 75, 0, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-17', '2020-01-17', '2020-01-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 75, '2020-01-16 11:39', '2020-01-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29678135833')), '2020-01-18', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61222, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61377, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29662831819'), 'Anne Victoria de Souza Rodrigues Aleixo', '11976937912', 'avsraleixo@sompo.com.br', '29662831819', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61383493000180'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61827, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05577162840'), 'Antônio Marcelo Henrique Pinto', '11996352759', 'marcelo@mpassessoria.srv.br', '05577162840', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61230, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32188917871'), 'Avon Cosmeticos Ltda', '11980451839', 'meire.blumen@avon.com', '32188917871', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61787, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33100496809'), 'Camila Marina Maronez Tozi Caetano', '11967806320', 'Camilafisio2014@gmail.com', '33100496809', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33100496809')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33100496809')), 202002, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-04', '2020-02-04', '2020-02-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-02-03 11:36', '2020-02-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33100496809')), '2020-02-05', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61787, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33100496809')), 75, 1, '2020-02-04', '2020-02-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61815, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29852424874'), 'Camila Niedzielski Leite Martim', '11983648996', 'camilanlmartim1982@gmail.com', '29852424874', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61237, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26294220890'), 'Carolina Reis Oliveira', '11974858749', 'carolina@cgpbrasil.com', '26294220890', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61760, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800'), 'Christovam Paschoal Filho', '11999010844', 'paschoal@pasqualy.com.br', '04629556800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), 202002, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-03', '2020-02-03', '2020-02-04', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-02-02 18:21', '2020-02-03', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04629556800')), '2020-02-04', 'Concessão de isenção', '2020-02-02 18:21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-02-02 18:21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61760, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61698, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05230822660'), 'Claudia Andrea da Silva Tavares Marques', '3891947902', 'CLAUDIA-DEIA@HOTMAIL.COM', '05230822660', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61746, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08555530814'), 'Claudio Monteiro dos Santos', '11997142151', 'claudio@pompeia.sescsp.org.br', '08555530814', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61415, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04784675833'), 'Cleise Sólon Garjulli', '11991826018', 'Cleise@zoequalidadedevida.com.br', '04784675833', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61513, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27632823859'), 'Daniela Bonesso', '11991251232', 'dbonesso@intercement.com', '27632823859', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62258884000136'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61617, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31310204829'), 'Daniela de Souza Higa Ono', '11972669771', 'DSHONO@PREFEITURA.SP.GOV.BR', '31310204829', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31310204829')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31310204829')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-31', '2020-01-31', '2020-02-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-30 10:04', '2020-01-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31310204829')), '2020-02-01', 'Concessão de isenção', '2020-01-30 10:04');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-30 10:04');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61617, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61480, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36895400893'), 'Danilo Pastro', '11991675332', 'DANILO.PASTRO@sharecare.com', '36895400893', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08726829000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61307, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29773005895'), 'Danúbia Silveira Pestana', '11993064967', 'danubia.pestana@cgpbrasil.com', '29773005895', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61557, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49197108871'), 'Diego Ferreira dos Santos', '9961924211', 'diego_00ferreira@hotmail.com', '49197108871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49197108871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49197108871')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:21', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49197108871')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:21');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:21');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61557, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61766, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61825, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61414, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13763198881'), 'Egle Bertucci', '11972761054', 'egle@projump.com.br', '13763198881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03264125000117'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61555, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47912697802'), 'Elis Regina Santos Silva', '11952512510', 'reginaelis2001@gmail.com', '47912697802', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47912697802')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47912697802')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:18', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47912697802')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:18');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61555, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61565, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11996664778', 'betemartin@maratonaqv.com', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61252, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863'), 'Ellen Cristina Bonni Fischer', '11985766594', 'efischer@elopar.com.br', '33840351863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61759, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07601686876'), 'Ercy Paschoal', '11969125600', 'ercy@pasqualy.com.br', '07601686876', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61282, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26410724837'), 'Fabio@sthanke.com.br', '11996581664', 'fabio@sthanke.com.br', '26410724837', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26410724837')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26410724837')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-18', '2020-01-18', '2020-01-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-17 19:10', '2020-01-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26410724837')), '2020-01-19', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61282, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26410724837')), 75, 1, '2020-01-18', '2020-01-18');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61228, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21564528812'), 'Felipe Felipe de Guida', '11996333694', 'felipe@grupoposture.com.br', '21564528812', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '17310177000197'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61824, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61804, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698'), 'Fernanda Silveira de Rezende', '11963485598', 'FERNANDA.REZENDE@ACHE.COM.BR', '08244572698', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60659463000191'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61312, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11985875000', 'fer.bs@terra.com.br', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61504, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73395374734'), 'Giselda Maria de Carvalho', '12996006688', 'cialaboral@uol.com.br', '73395374734', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09237854000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61566, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32314024842'), 'Gisele Souza dos Santos', '11952881133', 'Gflg2012@hotmail.com', '32314024842', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32314024842')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32314024842')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 11:07', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32314024842')), '2020-01-31', 'Concessão de isenção', '2020-01-29 11:07');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 11:07');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61566, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61550, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08319239893'), 'Jane Ferreira da Silva', '11989661688', 'jane.fsilva@sp.senac.br', '08319239893', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08319239893')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08319239893')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 08:59', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08319239893')), '2020-01-31', 'Concessão de isenção', '2020-01-29 08:59');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 08:59');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61550, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61803, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31105557863'), 'Jean Felippe Kalil Makdissi', '11984732509', 'jean.felippe@vitalwork.com.br', '31105557863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08585538000117'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61376, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61660, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '11948920864', 'comunicacao@abqv.org.br', '40733690831', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61802, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00444084800'), 'José Antonio Marchetti', '11971529237', 'Jamarchetti@globo.com', '00444084800', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00444084800')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00444084800')), 202002, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-04', '2020-02-04', '2020-02-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-02-03 13:51', '2020-02-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00444084800')), '2020-02-05', 'Concessão de isenção', '2020-02-03 13:51');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-02-03 13:51');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61802, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61512, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104001812'), 'Juliana Rodrigues Toledo', '11947794926', 'juliana.toledo@chriscintos.com.br', '23104001812', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61830, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817'), 'Jussara Ferreira de Araújo', '11954519577', 'araujojussara@la-bridgestone.com', '26513416817', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '57497539000115'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61578, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28315091816'), 'Karen dos Santos de Boer', '1136726060', 'karen@safegroup.com.br', '28315091816', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09003258000116'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28315091816')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28315091816')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-29 15:04', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28315091816')), '2020-01-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61578, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28315091816')), 75, 1, '2020-01-30', '2020-01-30');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61037, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61442, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48518691850'), 'Larissa Melo Dias', '11933638764', 'larissa.dias@wedconsultoria.com.br', '48518691850', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48518691850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48518691850')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-24', '2020-01-24', '2020-01-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-23 19:51', '2020-01-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48518691850')), '2020-01-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61442, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48518691850')), 75, 1, '2020-01-24', '2020-01-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61220, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18857523853'), 'Leandro Raimundo da Mota(teste)', '11989021853', 'agois15@hotmail.com', '18857523853', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61793, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34936802875'), 'Luciana Rocha', '11971239927', 'luciana.rocha@marsh.com', '34936802875', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61038592000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61305, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15361333883'), 'Luiz Fernando de Souza Ignarra Nassif', '11995445242', 'luiz.nassif@go4active.com.br', '15361333883', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15361333883')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15361333883')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-21', '2020-01-21', '2020-01-22', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-20 10:41', '2020-01-21', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15361333883')), '2020-01-22', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61305, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15361333883')), 75, 1, '2020-01-21', '2020-01-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61556, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45999291828'), 'Maiara dos Santos Tomaz', '11931454486', 'Maiara.tomaz@outlook.com', '45999291828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45999291828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45999291828')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:20', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45999291828')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:20');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:20');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61556, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61553, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49552582806'), 'Maiara Magalli Pimentel', '11945418459', 'Magalli.senac@gmail.com', '49552582806', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49552582806')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49552582806')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:17', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49552582806')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:17');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61553, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61516, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24891103817'), 'Mairá Moreno Lima', '11981152626', 'maira@furnas.com.br', '24891103817', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24891103817')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24891103817')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-29', '2020-01-29', '2020-01-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-28 11:46', '2020-01-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24891103817')), '2020-01-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61516, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24891103817')), 75, 1, '2020-01-29', '2020-01-29');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61821, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27731129896'), 'Marcio Alves Belo', '1122284795', 'marcio.belo@gmail.com', '27731129896', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61819, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06852928861'), 'Maria Aparecida Rosa', '11991784209', 'cidarosa135@outlook.com', '06852928861', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61823, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27407404844'), 'Mariane Toledo', '11973672619', 'mariane@dellurieventos.com.br', '27407404844', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27407404844')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27407404844')), 202002, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-04', '2020-02-04', '2020-02-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-02-03 15:58', '2020-02-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27407404844')), '2020-02-05', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61823, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27407404844')), 75, 1, '2020-02-03', '2020-02-03');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61488, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72883618704'), 'Mario Jorge Ferreira dos Santos', '21970170841', 'mjsantos@furnas.com.br', '72883618704', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72883618704')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72883618704')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-28', '2020-01-28', '2020-01-29', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-27 12:37', '2020-01-28', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72883618704')), '2020-01-29', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61488, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72883618704')), 75, 1, '2020-01-27', '2020-01-27');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61281, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61763, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26833523878'), 'Maurem Aparecida Montes da Silveira', '11965634994', 'Maurem@starsaudavel.com.br', '26833523878', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61353, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26264503835'), 'Mellie Ane de Morais', '11972770263', 'mmorais@elopar.com.br', '26264503835', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61322, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 'Michelle Cons Andrades', '1150854614', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61832, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93174527600'), 'Mindself Desenvolvimento Humano Ltda.', '11983547765', 'wagner.lima@mindself.com.br', '93174527600', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31381164000130'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61715, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48515930668'), 'Miryam C Mazieiro V da Silva', '1155794919', 'mimazieiro@bol.com.br', '48515930668', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61627, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Chamma', '11999054797', 'Mona.chamma@hotmail.com', '04279419892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61489, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05495191811'), 'Nancy Eidith Pinilla Cortes', '11982923271', 'nanypinilla@hotmail.com', '05495191811', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61822, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11244242888'), 'Nidia Martinelli', '11951376909', 'dranidiamartinelli@gmail.com', '11244242888', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11244242888')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11244242888')), 202002, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-02-04', '2020-02-04', '2020-02-05', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-02-03 15:53', '2020-02-04', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11244242888')), '2020-02-05', 'Concessão de isenção', '2020-02-03 15:53');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-02-03 15:53');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61822, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61477, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29667080854'), 'Patricia de Jesus Miguel', '11997357763', 'patricia.miguel@sharecare.com', '29667080854', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08726829000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61552, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44628670846'), 'Patricia Dias do Nascimento', '11966742111', 'paty.nascimento.94@gmail.com', '44628670846', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44628670846')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44628670846')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:11', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44628670846')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:11');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:11');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61552, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61439, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36368619805'), 'Paula Fonseca de Matos', '12981231293', 'paula.matos@sesisp.org.br', '36368619805', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36368619805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36368619805')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-24', '2020-01-24', '2020-01-25', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-23 16:29', '2020-01-24', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36368619805')), '2020-01-25', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61439, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36368619805')), 75, 1, '2020-01-24', '2020-01-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61221, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75789034896'), 'Pietro Francisco Nascimento(teste)', '11992284148', 'agois15+1@hotmail.com', '75789034896', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '88794064000152'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61801, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61739, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61558, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16257571820'), 'Regina Pereira de Brito', '11988404124', 'tllmre@yahoo.com.br', '16257571820', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16257571820')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16257571820')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:31', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16257571820')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:31');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61558, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61481, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '52482650887'), 'Regina Steinas', '11945115898', 'rhbrasil@sharecare.com', '52482650887', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08726829000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61219, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10523665890'), 'Ricardo Mota', '11972226677', 'RICARDO.MOTA@SAADCOMPANY.COM.BR', '10523665890', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10523665890')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10523665890')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-17', '2020-01-17', '2020-01-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-16 11:18', '2020-01-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10523665890')), '2020-01-18', 'Concessão de isenção', '2020-01-16 11:18');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-16 11:18');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61219, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61133, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gmail.com', '35673478100', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61051, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Rosana Ribeiro Marques', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61150348000150'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61226, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13970895391'), 'Samia Simurro', '11972064476', 'samia@ser-psi.com.br', '13970895391', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '02052043000146'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61517, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25651433899'), 'Sheila Cristina Stach', '11969689212', 'sheila.cstach@sp.senac.br', '25651433899', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25651433899')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25651433899')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-29', '2020-01-29', '2020-01-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-28 12:20', '2020-01-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25651433899')), '2020-01-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61517, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25651433899')), 75, 1, '2020-01-30', '2020-01-30');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61577, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26306489827'), 'Sidney Keity Yokoyama', '1136726000', 'keity@safegroup.com.br', '26306489827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09003258000116'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26306489827')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26306489827')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-29 15:01', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26306489827')), '2020-01-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61577, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26306489827')), 75, 1, '2020-01-30', '2020-01-30');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61595, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35543634803'), 'Silmara Belinelli Turati', '11973876135', 'silturati.fisio@gmail.com', '35543634803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35543634803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35543634803')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-29 17:03', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35543634803')), '2020-01-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61595, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35543634803')), 75, 1, '2020-01-29', '2020-01-29');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61232, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823'), 'Solange Cristina Davino', '11984909085', 's.davino56@hotmail.com', '08446072823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61619, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45445628809'), 'Taiane Pereira dos Santos', '11971565843', 'tai.psantos@outlook.com', '45445628809', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45445628809')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45445628809')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-31', '2020-01-31', '2020-02-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-30 10:17', '2020-01-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45445628809')), '2020-02-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61619, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '45445628809')), 75, 1, '2020-02-04', '2020-02-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61300, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33715805803'), 'Talita Raponi Kanashiro', '11959092062', 'talita.kanashiro@mercermarshbeneficios.com', '33715805803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61038592000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61805, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08536448881'), 'Thais Matarazzo', '11999065196', 'smile36@uol.com.br', '08536448881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '58618661000165'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61465, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36643520843'), 'Tuane Aparecida Bernardo', '11993821508', 'tuane.bernardo@wedconsultoria.com.br', '36643520843', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36643520843')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36643520843')), 202001, 2, 75, 75, 0, 0, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-25', '2020-01-25', '2020-01-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2020-01-24 17:42', '2020-01-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36643520843')), '2020-01-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61465, 33, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36643520843')), 75, 1, '2020-01-24', '2020-01-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61223, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61196, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26956228807'), 'Viviane Oliveira de Araújo da Silva', '11986922843', 'viviane.araujo@segurosunimed.com.br', '26956228807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (61554, 33, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48445549804'), 'Wanessa Soares', '11962187152', 'Sowanessasoares1@hotmail.com', '48445549804', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48445549804')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48445549804')), 202001, 2, 75, 0, 0, 75, 'Inscrição em evento: A evolução dos Programas de Qualidade de Vida no Brasil: 22 anos de experiência', 43, '2020-01-30', '2020-01-30', '2020-01-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2020-01-29 09:17', '2020-01-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48445549804')), '2020-01-31', 'Concessão de isenção', '2020-01-29 09:17');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2020-01-29 09:17');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 61554, 33, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61786);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61249);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61416);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61463);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61816);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61229);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61377);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61827);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61787);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61815);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61760);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61617);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61480);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61766);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61825);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61414);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61555);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61565);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61282);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61228);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61804);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61566);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61550);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61803);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61376);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61660);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61802);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61512);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61830);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61578);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61442);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61553);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61516);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61823);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61488);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61763);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61715);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61489);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61822);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61477);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61552);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61439);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61739);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61558);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61481);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61133);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61226);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61517);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61232);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61300);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61805);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61465);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61223);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61196);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61554);

COMMIT;