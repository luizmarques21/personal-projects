START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55738, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'Adriana.persechini@cevalogistics.com', '22764059884', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55643, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861'), 'Ana Paula Martins Vicentin', '11975004685', 'hanamar@gmail.com', '28325947861', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Sesc Sp'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (52196, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23485057894'), 'Armelle Izcalli Champetier de Ribes', '11975997182', 'armelle@yogist.com.br', '23485057894', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Yogist'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (56056, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26944072858'), 'Avon Cosmeticos Ltda', '11982222604', 'meire.blumen@avon.com', '26944072858', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54763, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Care Plus Medicina', '11956088388', 'mhaddad@careplus.com.br', '26450113812', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (56117, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04784675833'), 'Cleise Zolin Garjulli', '11991826018', 'Cleise@zoequalidadedevida.com.br', '04784675833', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55741, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33748382863'), 'Cristiane Arango Moreira Leite', '11995098647', 'cristiane.leite@eurofarma.com.br', '33748382863', 207713, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54008, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16941911840'), 'Dario Aquino', '11964999049', 'dario@pronest.com.br', '16941911840', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Pronest'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55744, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833'), 'Debora Cristina Inglesi', '11949846353', 'deborainglesi@uol.com.br', '28348727833', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55739, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Grupo Case'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54740, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Azevedonetto Consultoria E Gestão Em Saúde Laboral'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54897, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43689986850'), 'Flavia Leite Chicao', '11943880633', 'flchicao@suzano.com.br', '43689986850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Suzano Papel E Celulose'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55084, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790'), 'Gabriela Arpini Boni Gazola', '27998060770', 'gabrielaar@samarco.com', '11102175790', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), 201910, 2, 40, 40, 0, 0, 'Inscrição em evento: Compartilhando minha experiência - A empresa Aché no processo do PNQV 2018', 40, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-10-24 13:48', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 55084, 30, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11102175790')), 40, 1, '2019-10-24', '2019-10-24');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54833, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (56248, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54739, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606'), 'Leonardo Trivellato Andrade', '31993124817', 'leonardo.trivellato@virginpulse.com', '01377761606', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), 201910, 2, 40, 40, 0, 0, 'Inscrição em evento: Compartilhando minha experiência - A empresa Aché no processo do PNQV 2018', 40, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2019-10-22 11:33', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 54739, 30, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01377761606')), 40, 1, '2019-10-22', '2019-10-22');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (54709, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02305375883'), 'Maria Aparecida Spinola', '11994013959', 'spinola_maria@allergan.com', '02305375883', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Allergan'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (53827, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55745, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31634040813'), 'Rafael Piacenti', '11980610866', 'rafael@elevalife.com.br', '31634040813', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ergonomos Treinamento Profissional Ltda - Me'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (55085, 30, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24095271833'), 'Tiago Santos', '55119912443', 'santos.tiagoferreira@gmail.com', '24095271833', null, 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55643);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55741);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54833);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (56248);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (54739);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (55745);

COMMIT;