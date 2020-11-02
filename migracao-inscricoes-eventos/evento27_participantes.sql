START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45859, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06017090801'), 'A.c.camargo Câncer Center', '11991017576', 'valdinete.barreto@accamargo.org.br', '06017090801', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45225, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'adriana.persechini@cevalogistics.com', '22764059884', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45794, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01321406754'), 'Adriana Nogueira de Rezende', '21995525042', 'anrezende@firjan.com.br', '01321406754', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01321406754')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01321406754')), 201909, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? - Projeto Alpa Mexa-se da Alpagartas.', 37, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-09-11 11:19', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01321406754')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 45794, 27, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01321406754')), 40, 1, '2019-09-12', '2019-09-12');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (43558, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16931731823'), 'Andréa Tomanik de Azevedo', '1131497100', 'andreatomanik@hotmail.com', '16931731823', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47269, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Hospital Alemão Oswaldo Cruz'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47350, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti', '81995290606', 'carinas@saojoseagroindustrial.com.br', '04905771480', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47366, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16941911840'), 'Dario Aquino', '11964999049', 'dario@pronest.com.br', '16941911840', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Pronest'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47293, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Azevedonetto Consultoria E Gestão Em Saúde Laboral'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (46628, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538383', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Azevedonetto Consultoria E Gestão Em Saúde Laboral'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41660, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805'), 'Fulvia Carina de Souza Marques', '48999065663', 'fucamarques25@gmail.com', '30797456805', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), 201908, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? - Projeto Alpa Mexa-se da Alpagartas.', 37, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-08-23 11:24', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 41660, 27, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30797456805')), 40, 1, '2019-08-24', '2019-08-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (44128, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11802191801'), 'Gabriela Amanda Silva', '1145739311', 'rhliberdade@yahoo.com.br', '11802191801', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Iamspe'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45812, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90674812204'), 'Haldo Jayron Cardoso Gonçalves', '9231866625', 'haldo.goncalves@sesiam.org.br', '90674812204', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47078, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28327825828'), 'Jde Jacobs Dowe Egberts Br Comercialização', '11984373781', 'claudia.zanicheli@jdecoffee.com', '28327825828', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (48804, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45222, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32645907865'), 'Joice Correia Teixeira', '11982652330', 'joice.teixeira@cptm.sp.gov.br', '32645907865', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Cptm'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (41428, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45816, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606'), 'Leonardo T Andrade', '31993124817', 'ltrivellato@bwell.com.br', '01377761606', null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), 201909, 1, 40, 0, 0, 0, 'Inscrição em evento: Webinar Como eu faço? - Projeto Alpa Mexa-se da Alpagartas.', 37, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 40, '2019-09-11 12:43', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 45816, 27, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47321, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15502290875'), 'Mirian D. Benaglia', '16982504634', 'mirian.benaglia@hotmail.com', '15502290875', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (46043, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07000179686'), 'Nathan Roizenbruch', '31993124817', 'leonardo@bwell.com.br', '07000179686', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Bwell'), 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07000179686')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07000179686')), 201909, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? - Projeto Alpa Mexa-se da Alpagartas.', 37, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-09-12 11:08', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07000179686')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 46043, 27, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07000179686')), 40, 1, '2019-09-13', '2019-09-13');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45879, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04209423866'), 'Osvaldo Stevano', '11999333632', 'stevano@maratonaqv.com.br', '04209423866', 232299, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (44074, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45819, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31634040813'), 'Rafael Correa Piacenti', '11980610866', 'rafael@ergonomos.com.br', '31634040813', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ergonomos Treinamento Profissional Ltda - Me'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45537, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98809636953'), 'Rony Tschoeke', '41991968484', 'rony@promovesaude.com.br', '98809636953', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (47035, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04107881806'), 'Rosa Maria Domingues', '19998510072', 'rosa@mediarh.com.br', '04107881806', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Mediarh Consultoria'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (45110, 27, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null, 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (45794);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (47366);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (46628);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (45812);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (48804);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (41428);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (47321);

COMMIT;