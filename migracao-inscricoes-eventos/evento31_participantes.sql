START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55159, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'Adriana.persechini@cevalogistics.com', '22764059884', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (53912, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26918938800'), 'Adriana Oliveira', '11989298259', 'amoliveira@sompo.com.br', '26918938800', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61383493000180'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55027, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803'), 'Aldemir Natucci Rizzo', '11973100303', 'aldemir_rizzo@hotmail.com', '05451548803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-25', '2019-10-25', '2019-10-26', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-24 09:07', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), '2019-10-26', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55027, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 75, 1, '2019-10-24', '2019-10-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55188, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05676799854'), 'Alexandre Ayres', '11986899274', 'AYRES@MINDSELF.COM.BR', '05676799854', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31381164000130'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56202, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32761812824'), 'Alexandre de Castro Costa', '11953874644', 'dralexandre.costa@hotmail.com', '32761812824', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54342, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22247867863'), 'Aline Andrade de Lima', '11992088311', 'aline.lima@galcorr.com.br', '22247867863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '70204870000168'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54946, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810'), 'Aline Damarys de Oliveira', '11981804994', 'saudebemestar@intercement.com', '37458206810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62258884000136'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55268, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07699747836'), 'Ana Celia Rodriguez Gonzalez', '11986072386', 'ana.gonzalez@segurosunimed.com.br', '07699747836', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56645, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830'), 'Ana Claudia Favero', '11982950660', 'medclau77@yahoo.com.br', '25992369830', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), 201911, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-05', '2019-11-05', '2019-11-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-11-04 14:54', '2019-11-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), '2019-11-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56645, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25992369830')), 75, 1, '2019-11-04', '2019-11-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55906, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31303795841'), 'Ana Paula Duque Payá', '11997183927', 'ana.paya@br.indorama.net', '31303795841', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31303795841')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31303795841')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-30', '2019-10-30', '2019-10-31', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-29 15:39', '2019-10-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31303795841')), '2019-10-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55906, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31303795841')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56255, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32829897846'), 'Ana Paula Santos', '11992363845', 'anapaula.santos@optum.com.br', '32829897846', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56654, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16931731823'), 'Andréa Tomanik de Azevedo', '11974953786', 'andreatomanik@hotmail.com', '16931731823', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (48783, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12530669813'), 'Andreia Goncalves de Oliveira', '11984565224', 'andreia_goliveira@hotmail.com', '12530669813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60198164000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56521, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08412643844'), 'Angela Cristina Yano', '11982795992', 'angela.yano@conceitoasaude.com.br', '08412643844', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '12103819000163'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56373, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27567221896'), 'Angélica Cardoso Martins', '11975306409', 'angelicacardosomartins@gmail.com', '27567221896', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (48794, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23485057894'), 'Armelle Champetier', '11975997182', 'armelle@yogist.com.br', '23485057894', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28929791000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54823, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30030828848'), 'Arnaldo Gomes da Silva Neto', '11981435730', 'arnaldo.neto@cielo.com.br', '30030828848', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '01027058000191'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54174, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37855937838'), 'Arthur da Mata Alves Cerri', '11987736439', 'arthur@orienteme.com.br', '37855937838', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37855937838')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37855937838')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-17', '2019-10-17', '2019-10-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-16 12:55', '2019-10-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37855937838')), '2019-10-18', 'Concessão de isenção', '2019-10-16 12:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-16 12:55');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54174, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56259, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09692765750'), 'Beatriz Sales Loureiro Reyes', '11970473620', 'beatriz.loureiro@bp.org.br', '09692765750', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56709, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29852424874'), 'Camila Niedzielski Leite Martim', '11983648996', 'camila@equilibrare.com.br', '29852424874', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55640, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826'), 'Camilla Rada', '1132666497', 'crada@bloominbrands.com.br', '33722083826', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-28 14:55', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55640, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33722083826')), 75, 1, '2019-10-25', '2019-10-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55044, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Care Plus Medicina', '1141979048', 'mhaddad@careplus.com.br', '26450113812', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56635, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26294220890'), 'Carolina Reis Oliveira', '11974858749', 'carolina@cgpbrasil.com', '26294220890', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56561, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12659227802'), 'Celso da Encarnação', '11999503970', 'celso.encarnacao@alstomgroup.com', '12659227802', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '88309620000581'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56242, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08555530814'), 'Claudio Monteiro dos Santos', '11997142151', 'claudio@pompeia.sescsp.org.br', '08555530814', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08555530814')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08555530814')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-31 14:44', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08555530814')), '2019-11-02', 'Concessão de isenção', '2019-10-31 14:44');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-31 14:44');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56242, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56115, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04784675833'), 'Cleise Sólon Garjulli', '11991826018', 'Cleise@zoequalidadedevida.com.br', '04784675833', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55648, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39549225844'), 'Cristhiane Oliveira Buchholz', '11983029840', 'cristhiane.oliveiras@gmail.com', '39549225844', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39549225844')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39549225844')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-28 15:09', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39549225844')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55648, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39549225844')), 75, 1, '2019-11-01', '2019-11-01');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56543, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803'), 'Cynthia Oliveira', '11995123409', 'ocynthia@omint.com.br', '22983479803', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '44673382000190'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), 201911, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-05', '2019-11-05', '2019-11-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-11-04 10:58', '2019-11-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803')), '2019-11-06', 'Concessão de isenção', '2019-11-04 10:58');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-11-04 10:58');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56543, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54944, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27632823859'), 'Daniela Guimarães Araujo Miranda Bonesso', '11991251232', 'dbonesso@intercement.com', '27632823859', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '62258884000136'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54213, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35336918881'), 'Daniela S. Haidar Chohfi', '11994510877', 'daniela@orienteme.com.br', '35336918881', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35336918881')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35336918881')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-17', '2019-10-17', '2019-10-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-16 16:33', '2019-10-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35336918881')), '2019-10-18', 'Concessão de isenção', '2019-10-16 16:33');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-16 16:33');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54213, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56253, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38011099841'), 'Daniela Toledo Pandopho', '11943481652', 'daniela.rodrigues@optum.com.br', '38011099841', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56644, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29773005895'), 'Danúbia Silveira Pestana', '11993064967', 'danubia.pestana@cgpbrasil.com', '29773005895', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55132, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833'), 'Debora Cristina Inglesi', '11949846353', 'deborainglesi@uol.com.br', '28348727833', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56098, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808'), 'Edna Ramos', '11997811782', 'EDNARAMOS099@GMAIL.COM', '02203569808', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-31', '2019-10-31', '2019-11-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-30 14:19', '2019-10-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02203569808')), '2019-11-01', 'Concessão de isenção', '2019-10-30 14:19');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-30 14:19');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56098, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (48655, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27763926805'), 'Edriano Martins', '11981069566', 'edriano77@gmail.com', '27763926805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56513, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54654, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54377, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17779333825'), 'Edward Toshiyuki Midorikawa', '11996941652', 'editm@uol.com.br', '17779333825', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17779333825')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17779333825')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-18', '2019-10-18', '2019-10-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-17 20:31', '2019-10-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17779333825')), '2019-10-19', 'Concessão de isenção', '2019-10-17 20:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-17 20:31');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54377, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (52207, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13493494882'), 'Egly Camara', '11996200759', 'camaraegly@gmail.com', '13493494882', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54624, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30228491843'), 'Eliane Midori Miyata', '11972592387', 'financeiro@abqv.org.br', '30228491843', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (51781, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33840351863'), 'Ellen Cristina Bonni Fischer', '11985766594', 'efischer@elopar.com.br', '33840351863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '09227099000133'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56519, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26603054809'), 'Erica Cristina Lazarini Novaes', '1130772000', 'daycristinenascimento@gmail.com', '26603054809', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07376661000165'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56250, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26283277837'), 'Fábia Lopez Uccelli dos Santos', '11981162085', 'fabia.santos@sescsp.org.br', '26283277837', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55271, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25096759822'), 'Fabiana de Jesus Mariza Martos', '1197648986', 'fabiana.martos@segurosunimed.com.br', '25096759822', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56655, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870'), 'Fabio Sato', '11997752542', 'Fabio@vitalk.com.br', '35716775870', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), 201911, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-05', '2019-11-05', '2019-11-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-11-04 15:28', '2019-11-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), '2019-11-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56655, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35716775870')), 75, 1, '2019-11-04', '2019-11-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56204, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32639632876'), 'Fernanda Kawaguti Fujimura de Andrade', '11986809151', 'fernandafujimura@yahoo.com.br', '32639632876', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54653, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55619, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16233184835'), 'Fernando Andrade de Oliveira', '1134676752', 'fernando4067@gmail.com', '16233184835', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (47590, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11984909085', 'fer.bs@terra.com.br', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (47593, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11985875000', 'fernando@corporatewellness.com.br', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 2, '2019-09-17 15:01', 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (47592, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11985875000', 'reccofit@gmail.com', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 2, '2019-09-17 15:01', 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54900, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850'), 'Flavia Leite Chicao', '11943880633', 'flchicao@suzano.com.br', '43689986850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '16404287003332'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54355, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02038255865'), 'Grácia Fragalá', '11999988564', 'graciafragala@tpasaude.com.br', '02038255865', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54333, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38671920810'), 'Iramaia de Almeida Gonçalves', '11975485238', 'iramaia@cielo.com.br', '38671920810', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '01027058000191'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54835, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (47499, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '11948920864', 'comunicacao@abqv.org.br', '40733690831', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56697, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400'), 'Jose Bernardete de Souza', '11963913529', 'JBERNAR3@YAHOO.COM.BR', '17027462400', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400')), 201911, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-05', '2019-11-05', '2019-11-06', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-11-04 17:24', '2019-11-05', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400')), '2019-11-06', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56697, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400')), 75, 1, '2019-11-04', '2019-11-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56702, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21669748804'), 'Julia Bedolo', '11955522135', 'julia.bedolo@optum.com.br', '21669748804', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55638, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841'), 'Juliana Kobayashi', '1132666497', 'juliana.kobayashi@citi.com', '33752155841', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-28 14:45', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55638, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33752155841')), 75, 1, '2019-10-25', '2019-10-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (48883, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56698, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27756435826'), 'Leandra Cavalcante de França Mrainho', '11973289586', 'leandra.marinho@optum.com.br', '27756435826', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '18522213000149'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56254, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36870320861'), 'Leonardo Rigoleto Soares', '19997128009', 'LEONARDO.RIGOLETO_SOARES@SIEMENS.COM', '36870320861', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36870320861')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36870320861')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-31 15:39', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36870320861')), '2019-11-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56254, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36870320861')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54721, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27814707838'), 'Lilian Barros Tomita', '11988501731', 'contato@liliantomita.com.br', '27814707838', null, 2, '2019-10-22 10:22', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27814707838')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27814707838')), 201910, 1, 75, 0, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-23', '2019-10-23', '2019-10-24', '2019-10-22 10:22', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-22 10:22', '2019-10-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27814707838')), '2019-10-24', 'Inscrição Cancelada', '2019-10-22 10:22');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56317, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20001221833'), 'Lincoln Lima', '11995946040', 'lincoln@presentedesaude.com.br', '20001221833', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '15512522000140'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20001221833')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20001221833')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-31 21:03', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20001221833')), '2019-11-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56317, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '20001221833')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56271, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36593772879'), 'Livia Ribeiro Viana', '11977239363', 'livia.ribeiroviana.ext@siemens.com', '36593772879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36593772879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36593772879')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-31 16:23', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36593772879')), '2019-11-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56271, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36593772879')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56203, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17610124877'), 'Luciana Vinhas de Britto', '11983528501', 'vinhasbritto@gmail.com', '17610124877', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17610124877')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17610124877')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-31 09:51', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17610124877')), '2019-11-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56203, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17610124877')), 75, 1, '2019-11-05', '2019-11-05');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54627, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869'), 'Luiz Fernando de Barros', '11996262950', 'peritomoto@gmail.com', '09609883869', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56708, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85240087849'), 'Maria Aparecida da Cruz Constantino', '11991747371', 'macconstan@gmail.com', '85240087849', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '73080426000176'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55082, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06852928861'), 'Maria Aparecida Rosa', '11991784209', 'ceschelli@gmail.com', '06852928861', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55576, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421298869'), 'Maria Diva Garcia Comin', '11999449240', 'mdcomin@santander.com.br', '06421298869', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421298869')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421298869')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-28 09:52', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06421298869')), '2019-10-30', 'Concessão de isenção', '2019-10-28 09:52');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-28 09:52');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55576, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56648, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33716882836'), 'Maria Fernanda Andrucioli', '11975602154', 'maria.Andrucioli@cgpbrasil.com', '33716882836', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54421, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11036156702'), 'Mariana Alves Vasconcellos', '21998999045', 'mariana.vasconcellos@technipfmc.com', '11036156702', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11036156702')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11036156702')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-19', '2019-10-19', '2019-10-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-18 10:50', '2019-10-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11036156702')), '2019-10-20', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54421, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11036156702')), 75, 1, '2019-10-26', '2019-10-26');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54394, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55274, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '97866245800'), 'Milena de Araújo Castro', '1182112040', 'milena.castro.t@segurosunimed.com.br', '97866245800', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55112, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26034694876'), 'Monica Torquato', '11976030853', 'Monica.TORQUATO@sodexo.com', '26034694876', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '69034668000156'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54626, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05495191811'), 'Nancy Edith Pinilla Cortes', '11982923271', 'nanypinilla@hotmail.com', '05495191811', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55212, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16425238879'), 'Pedro Alberto Martins Correa Leite', '11985156206', 'Pedroalbertoleite@gmail.com', '16425238879', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56258, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38483112833'), 'Priscila de Leon', '11968327142', 'priscila.leon@bp.org.br', '38483112833', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (53828, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56097, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46314684838'), 'Rafaela Nunes Santos', '11953355399', 'RafaelaNS@insper.edu.br', '46314684838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '06070152000147'), 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46314684838')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46314684838')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-31', '2019-10-31', '2019-11-01', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-30 14:19', '2019-10-31', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46314684838')), '2019-11-01', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56097, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '46314684838')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56278, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33884321803'), 'Raquel Silva', '11980141194', 'raquel.apsilva@dorconsultoria.com.br', '33884321803', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33884321803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33884321803')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-31 16:25', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33884321803')), '2019-11-02', 'Concessão de isenção', '2019-10-31 16:25');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-31 16:25');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56278, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56696, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54228, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10103193880'), 'Renata Tavolaro', '11997708484', 'renata@orienteme.com', '10103193880', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10103193880')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10103193880')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-17', '2019-10-17', '2019-10-18', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-16 18:39', '2019-10-17', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10103193880')), '2019-10-18', 'Concessão de isenção', '2019-10-16 18:39');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-16 18:39');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54228, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56606, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24528307553'), 'Rita Laert Cotrim Passos', '11946082108', 'ritalcpassos@gmail.com', '24528307553', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55040, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21646479807'), 'Roberta Pereira', '11981376167', 'roberta.pereira@avon.com', '21646479807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '56991441000157'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55171, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gmail.com', '35673478100', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (53736, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Rosana Ribeiro Marques', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61150348000150'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55290, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26128515851'), 'Rose Elaine Tomaz Mendes', '11982403728', 'rose.mendes@claro.com.br', '26128515851', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26128515851')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26128515851')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-26', '2019-10-26', '2019-10-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-25 16:42', '2019-10-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26128515851')), '2019-10-27', 'Concessão de isenção', '2019-10-25 16:42');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-25 16:42');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55290, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56516, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55578, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16476935860'), 'Sandra Adelaide P da Silva', '11998655770', 'sandra.pereira@santander.com.br', '16476935860', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16476935860')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16476935860')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-28 09:55', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16476935860')), '2019-10-30', 'Concessão de isenção', '2019-10-28 09:55');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-28 09:55');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55578, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55764, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30982811896'), 'Shelli Cristina Monteiro de Souza Faria', '1141449549', 'shelli.Faria@eurofarma.com.br', '30982811896', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56233, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31256980811'), 'Shenifer Lauana Bertasso', '11995866663', 'slbertasso@haoc.com.br', '31256980811', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (47588, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823'), 'Solange Davino', '11984909085', 's.davino56@hotmail.com', '08446072823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54344, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42646388870'), 'Stefany Castro Rodrigues', '11987300268', 'stefany.rodrigues@galcorr.com.br', '42646388870', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '70204870000168'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54352, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29628089803'), 'Stella Bolibio', '1123729092', 'stella.bolibio@hotmail.com', '29628089803', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55636, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70131406191'), 'Thais Costa', '1132666497', 'thais.costa@citi.com', '70131406191', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70131406191')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70131406191')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-29', '2019-10-29', '2019-10-30', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-28 14:43', '2019-10-29', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70131406191')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55636, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70131406191')), 75, 1, '2019-10-25', '2019-10-25');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54618, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07513018847'), 'Thelma Raya Dalla Nora', '19997202385', 'Thelma.nora@unilever.com', '07513018847', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07513018847')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07513018847')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-22', '2019-10-22', '2019-10-23', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-21 10:01', '2019-10-22', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07513018847')), '2019-10-23', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 54618, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07513018847')), 75, 1, '2019-10-21', '2019-10-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55307, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12319492879'), 'Valéria Matias da Silva', '11993328821', 'valeria.msilva@claro.com.br', '12319492879', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12319492879')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12319492879')), 201910, 2, 75, 0, 0, 75, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-26', '2019-10-26', '2019-10-27', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-25 17:45', '2019-10-26', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12319492879')), '2019-10-27', 'Concessão de isenção', '2019-10-25 17:45');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-10-25 17:45');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 55307, 31, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56257, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30971650888'), 'Vanessa Ferreira dos Santos', '11998745842', 'sustentabilidade.bp@bp.org.br', '30971650888', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56252, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36346103873'), 'Vanessa Mioto', '11965679355', 'vanessa.mioto@siemens.com', '36346103873', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36346103873')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36346103873')), 201910, 2, 75, 75, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-11-01', '2019-11-01', '2019-11-02', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-10-31 15:36', '2019-11-01', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36346103873')), '2019-11-02', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 56252, 31, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36346103873')), 75, 1, '2019-10-31', '2019-10-31');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55266, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26956228807'), 'Viviane Oliveira de Araújo', '11986922843', 'viviane.araujo@segurosunimed.com.br', '26956228807', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04487255000181'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (55740, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34120064832'), 'Viviane Rosa Santos Morais', '11992354347', 'viviane.morais@alperseguros.com.br', '34120064832', null, 2, '2019-10-29 09:32', 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34120064832')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34120064832')), 201910, 1, 75, 0, 0, 0, 'Inscrição em evento: Saúde Mental: Novas possibilidades para o equilíbrio emocional nas empresas', 41, '2019-10-30', '2019-10-30', '2019-10-31', '2019-10-29 09:32', 'Inscrição Cancelada', 1, 1);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-10-29 09:32', '2019-10-30', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34120064832')), '2019-10-31', 'Inscrição Cancelada', '2019-10-29 09:32');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (54318, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880'), 'Werther de Camargo Penteado Busato', '19996019767', 'wcpbusato1@uol.com.br', '05907026880', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56059, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00939850885'), 'Angelo Rozalen', '11984432908', 'angelo.rozalen@cptm.sp.gov.br', '00939850885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71832679000123'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (56060, 31, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37047992898'), 'Talita Sakurai', '11996832253', 'talita.sakurai@cptm.sp.gov.br', '37047992898', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71832679000123'), 1, null, 2);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55159);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55188);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54342);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55268);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56645);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55906);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56255);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56654);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (48783);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54823);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54174);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56259);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56635);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56561);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56242);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55648);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56543);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54944);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54213);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56253);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56644);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56098);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54377);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (52207);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56519);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56250);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55271);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56655);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55619);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (47499);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56697);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56702);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (48883);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56698);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56254);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56317);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56203);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54627);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56708);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55576);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56648);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54421);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54626);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55212);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56258);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53828);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56097);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56278);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56606);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55040);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55171);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55290);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56516);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55578);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55764);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56233);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55636);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54618);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55307);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56257);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56252);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54318);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56059);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56060);

COMMIT;