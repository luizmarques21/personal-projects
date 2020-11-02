START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (40883, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06017090801'), 'A.c.camargo Câncer Center', '11991017576', 'valdinete.barreto@accamargo.org.br', '06017090801', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41642, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808'), 'Adriana Coelho Camillo Zanella', '1150908794', 'adriana.zanella@eurofarma.com.br', '34414651808', 207713, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41985, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'adriana.persechini@cevalogistics.com', '22764059884', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (42420, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187'), 'Alessandra Moraes de Morais Ottoni', '6181552908', 'alessandra.ottoni@fisiotrauma.com.br', '78499283187', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187')), 201908, 2, 40, 0, 0, 40, 'Inscrição em evento:O Programa de Qualidade de Vida da Bridgestone', 35, '2019-07-30', '2019-07-30', '2019-07-31');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 40, '2019-08-27 14:34:00', '2019-07-30', 1, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187')), '2019-07-31', 'Concessão de isenção', '19-08-27');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 40, 'Concessão de isenção', '2019-08-27');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 42420, 25, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41426, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85931870997'), 'Antonio Ribeiro', '11994613374', 'carlos.wurtz@hotmail.com', '85931870997', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41334, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Hospital Alemão Oswaldo Cruz'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41431, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti', '81995290606', 'carinas@saojoseagroinustrial.com.br', '04905771480', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41618, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Companhia Nitro Química Brasileira', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (39680, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', 170030, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (34185, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '95243585068'), 'Felipe Ruschel Trasel', '51998058819', 'felipe.trasel@yahoo.com.br', '95243585068', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41626, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Azevedonetto Consultoria E Gestão Em Saúde Laboral'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41634, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805'), 'Fulvia Carina de Souza Marques', '48999065663', 'fucamarques25@gmail.com', '30797456805', null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), 201908, 1, 40, 0, 0, 0, 'Inscrição em evento:O Programa de Qualidade de Vida da Bridgestone', 35, '2019-07-30', '2019-07-30', '2019-07-31');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 40, '2019-08-23 10:20', '2019-07-30', 1, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), '2019-07-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 41634, 25, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41456, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11802191801'), 'Gabriela Amanda Silva', '1145739311', 'gabriela.silva@iamspe.sp.gov.br', '11802191801', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Iamspe'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (42354, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45193, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao.abqv@gmail.com', '40733690831', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (39111, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41430, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606'), 'Leonardo Trivellato Andrade', '31993124817', 'ltrivellato@bwell.com.br', '01377761606', null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), 201908, 1, 40, 0, 0, 0, 'Inscrição em evento:O Programa de Qualidade de Vida da Bridgestone', 35, '2019-07-30', '2019-07-30', '2019-07-31');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 40, '2019-08-22 08:44', '2019-07-30', 1, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), '2019-07-31', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 41430, 25, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (40881, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00503254002'), 'Marcos Vinícius Serafim', '5132165256', 'marcossv@sebrars.com.br', '00503254002', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Sebrae Rs'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (42315, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13142334831'), 'Marta Moreno', '11991965196', 'martamoreno@natura.net', '13142334831', 170063, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (42311, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Natura Cosméticos S/a', '11999575059', 'claudineiazorzela@natura.net', '27835032805', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41442, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953'), 'Rony Tschoeke', '41991968484', 'rony@promovesaude.com.br', '98809636953', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (39955, 25, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Fleury S/a'), 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41985);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39680);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41456);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42354);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (45193);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (39111);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (42311);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41442);

COMMIT;