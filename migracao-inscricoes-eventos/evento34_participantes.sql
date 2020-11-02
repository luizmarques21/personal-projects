START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61788, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'adriana.persechini@cevalogistics.com', '22764059884', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62035, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187'), 'Alessandra Moraes de Morais Ottoni', '6181552908', 'alessandra.ottoni@fisiotrauma.com.br', '78499283187', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04224681000122'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61820, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30274499827'), 'Amanda Guimarães Pereira', '11951001811', 'equilibrare-sp@equilibrare.com.br', '30274499827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62012, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610'), 'Ana Cristina Borges Pimenta', '11984034146', 'anacristinapimenta@hotmail.com', '05614812610', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 202002, 2, 40, 40, 0, 0, 'Inscrição em evento: Como padronizar os processos dos programas globais de Qualidade de Vida', 44, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2020-02-06 15:27', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 62012, 34, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 40, 1, '2020-02-09', '2020-02-09');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62390, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '11994071835', 'anapaula@libertyseguros.com.br', '11227464827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61550141000172'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62448, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29880600886'), 'Camila Corsini Andreucci', '11933530419', 'camilacorsinia@hotmail.com', '29880600886', null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29880600886')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29880600886')), 202002, 1, 40, 0, 0, 0, 'Inscrição em evento: Como padronizar os processos dos programas globais de Qualidade de Vida', 44, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (1, 40, '2020-02-14 12:25', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29880600886')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 62448, 34, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61817, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29852424874'), 'Camila Niedzielski Leite Martim', '11983648996', 'camila@equilibrare.com.br', '29852424874', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62257, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28348727833'), 'Debora Cristina Inglesi', '11949846353', 'deborainglesi@uol.com.br', '28348727833', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = ''), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61795, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75213176291'), 'Diego Maia Lopes', '95991727171', 'guitormapes@gmail.com', '75213176291', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61799, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26944072858'), 'Edmeire Soares de Souza Blumen', '11982222604', 'meire.blumen@gmail.com', '26944072858', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '56991441000157'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61767, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62689, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03644794189'), 'Erico Francisco Vieira Ibiapina', '11951568186', 'erico.ibiapina@usp.br', '03644794189', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = ''), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62492, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21564528812'), 'Felipe de Guida', '11996333694', 'felipe@grupoposture.com.br', '21564528812', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '17310177000197'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61992, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08244572698'), 'Fernanda Silveira de Rezende', '11963485598', 'FERNANDA.REZENDE@ACHE.COM.BR', '08244572698', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60659463000191'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62070, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27340801847'), 'Ivonilde Dias de Oliveira', '11998302757', 'ivonilde.oliveira@ache.com.br', '27340801847', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60659463000191'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61876, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (63114, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61800, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23104001812'), 'Juliana Rodrigues Toledo', '1156834652', 'juliana.toledo@chriscintos.com.br', '23104001812', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62278, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817'), 'Jussara Ferreira de Araújo', '11954519577', 'araujojussara@la-bridgestone.com', '26513416817', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '57497539000115'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61987, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33627625811'), 'Karen Cristina Souza Belmiro', '11951736244', 'karen.belmiro@espm.br', '33627625811', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62230, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62756, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35986901851'), 'Liliane Alonso Correia da Silva', '11979819172', 'alonso.liliane@yahoo.com.br', '35986901851', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35986901851')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35986901851')), 202002, 2, 40, 40, 0, 0, 'Inscrição em evento: Como padronizar os processos dos programas globais de Qualidade de Vida', 44, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2020-02-18 10:20', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35986901851')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 62756, 34, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35986901851')), 40, 1, '2020-02-18', '2020-02-18');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61988, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '1150854590', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61991, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 'Michelle Cons Andrades', '1150854614', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61790, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25545061835'), 'Milene Rosenthal', '11976970455', 'mr@telavita.com.br', '25545061835', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '27460001000175'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61917, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Abdelnur Chamma', '11999054797', 'mona.chamma@hotmail.com', '04279419892', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61983, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35259190858'), 'Natalia Contente', '11994684791', 'natalia.contente@mercermarshbeneficios.com', '35259190858', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61038592000125'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62211, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15658013852'), 'Patrícia França Proença', '11993063416', 'patricia.franca@mentalclean.com.br', '15658013852', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07890818000176'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62420, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05228064737'), 'Patricia Helena Pizarro Pires Dantas', '21991010663', 'patriciahelena@equilibrare.com.br', '05228064737', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61828, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patrícia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62105, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62062, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (61797, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02848536748'), 'Tania de Abreu Carvalho', '11948977852', 'tabcarvalho@gmail.com', '02848536748', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62194, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (62597, 34, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61788);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (62035);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (62012);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61817);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61795);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (63114);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61987);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (61917);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (62062);

COMMIT;