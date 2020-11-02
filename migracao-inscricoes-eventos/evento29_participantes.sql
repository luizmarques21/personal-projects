START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54186, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808'), 'Adriana Coelho Camillo Zanella', '1150908794', 'adriana.zanella@eurofarma.com.br', '34414651808', 207713, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54613, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803'), 'Aldemir Natucci Rizzo', '11973100303', 'aldemir.rizzo@mackenzie.br', '05451548803', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 201910, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? A experiência de promover a atividade física na empresa', 39, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-10-21 09:39', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 54613, 29, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05451548803')), 40, 1, '2019-10-21', '2019-10-21');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53902, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62123629049'), 'Andrea dos Santos', '11998183377', 'DEIADUSINHA@HOTMAIL.COM', '62123629049', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54115, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810'), 'Bruna Pinheiro', '11980982095', 'bruna@jamudei.com.br', '39142123810', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Vital Work'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53794, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti', '81995290606', 'carinas@saojoseagroinustrial.com.br', '04905771480', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (51595, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12659227802'), 'Celso da Encarnação', '11999503970', 'celso.encarnacao@alstomgroup.com', '12659227802', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Alstom'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53940, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Claudineia Zorzela', '11999575059', 'claudineiazorzela@natura.net', '27835032805', 170063, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53908, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16941911840'), 'Dario de Aquino Moura', '11975726280', 'dario@pronest.com.br', '16941911840', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Pronest'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53771, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Grupo Case'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54651, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Azevedonetto Consultoria E Gestão Em Saúde Laboral'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53905, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06541335818'), 'Fernando Recco', '11985875000', 'fer.bs@terra.com.br', '06541335818', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Corporate Wellness'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53769, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790'), 'Gabriela Arpini Boni Gazola', '27998060770', 'gabrielaar@samarco.com', '11102175790', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), 201910, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? A experiência de promover a atividade física na empresa', 39, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-10-11 10:28', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 53769, 29, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), 40, 1, '2019-10-11', '2019-10-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53724, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90674812204'), 'Haldo Jayron Cardoso Gonçalves', '9231866625', 'haldo.goncalves@sesiam.org.br', '90674812204', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54834, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54898, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54266, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34190641871'), 'Luana Monteiro Chiatti', '11983293775', 'lchiatti@bencorp.com.br', '34190641871', 169226, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54395, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Espm'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53813, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59010932087'), 'Paulo Sergio Labres', '51992144601', 'paulo@fruki.com.br', '59010932087', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59010932087')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59010932087')), 201910, 2, 40, 40, 0, 0, 'Inscrição em evento: Webinar Como eu faço? A experiência de promover a atividade física na empresa', 39, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-10-11 13:37', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59010932087')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 53813, 29, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59010932087')), 40, 1, '2019-10-11', '2019-10-11');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53824, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53227, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Fleury S/a'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54314, 29, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24095271833'), 'Tiago Santos', '51199124432', 'tiago.santos@workwell.pt', '24095271833', null, 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54613);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54115);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53908);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53771);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53905);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53769);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54898);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54266);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (53813);

COMMIT;