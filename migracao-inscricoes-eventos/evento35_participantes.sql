START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68273, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28434500809'), 'A.c.camargo Câncer Center', '1121895054', 'valdinete.barreto@accamargo.org.br', '28434500809', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69522, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09141890850'), 'Adriana Castanheira Camargo', '41996854924', 'Adriana_camargo@cargill.com', '09141890850', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09141890850')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09141890850')), 202003, 2, 40, 40, 0, 0, 'Inscrição em evento: Peculiaridades e dificuldades na inclusão de pessoas com deficiência', 45, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2020-03-04 20:51', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09141890850')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 69522, 35, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09141890850')), 40, 1, '2020-03-04', '2020-03-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68177, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29016980857'), 'Alessandra Folharini', '11947893707', 'alessandra.folharini@astrazeneca.com', '29016980857', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60318797000100'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69929, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78499283187'), 'Alessandra Moraes de Morais Ottoni', '6181552908', 'alessandra.ottoni@fisiotrauma.com.br', '78499283187', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '04224681000122'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69616, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610'), 'Ana Cristina Borges Pimenta', '11984034146', 'anacristinapimenta@hotmail.com', '05614812610', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 202003, 2, 40, 40, 0, 0, 'Inscrição em evento: Peculiaridades e dificuldades na inclusão de pessoas com deficiência', 45, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2020-03-04 22:06', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 69616, 35, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05614812610')), 40, 1, '2020-03-04', '2020-03-04');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70416, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '95378804434'), 'Andréa Karla de Oliveira Gomes Pereira', '83987013462', 'andrea.gomes@coteminas.com.br', '95378804434', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07663140000431'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70276, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37084268863'), 'Barbara dos Santos Cipriano', '11976421415', 'CiprianoBarbara@prestador.la-bridgestone.com', '37084268863', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '57497539000115'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68173, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12659227802'), 'Celso da Encarnação', '11999503970', 'celso.encarnacao@alstomgroup.com', '12659227802', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '88309620000581'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69821, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22106525885'), 'Claudia Labes Moreira', '11996376624', 'claudia.labes@gmail.com', '22106525885', null, 1);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22106525885')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22106525885')), 202003, 2, 40, 40, 0, 0, 'Inscrição em evento: Peculiaridades e dificuldades na inclusão de pessoas com deficiência', 45, '2019-10-25', '2019-10-25', '2019-10-30');
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 40, '2020-03-05 12:04', '2019-10-25', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22106525885')), '2019-10-30', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 62, 69821, 35, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22106525885')), 40, 1, '2020-03-05', '2020-03-05');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 40);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69178, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29773005895'), 'Danúbia Silveira Pestana', '11993064967', 'danubia.pestana@cgpbrasil.com', '29773005895', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70179, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75213176291'), 'Diego Maia Lopes', '95991727171', 'guitormapes@gmail.com', '75213176291', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (71545, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70267, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70423, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06230708477'), 'Fabiana Pereira Guimarães', '83987562802', 'fabiana.guimaraes@coteminas.com.br', '06230708477', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07663140000431'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70645, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05169636784'), 'Fernanda Chaves de Oliveira', '21995887721', 'fcoliveira@firjan.com.br', '05169636784', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70264, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70410, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59501677400'), 'Iran Cosme Pereira', '83993254433', 'iran.cosme@coteminas.com.br', '59501677400', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07663140000431'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70296, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03222237417'), 'Joseane Nascimento da Silva', '83999198461', 'joseane.nascimento@coteminas.com.br', '03222237417', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07663140000431'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70247, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26513416817'), 'Jussara Ferreira de Araújo', '11954519577', 'araujojussara@la-bridgestone.com', '26513416817', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '57497539000115'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68239, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68195, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28392525892'), 'Lilian Conceição Cantanhede Santos', '11988399504', 'lilian.csantos@grupofleury.com.br', '28392525892', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68182, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82900272653'), 'Marcus Souza', '11982136144', 'marcus.souza@astrazeneca.com', '82900272653', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60318797000100'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (69241, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33716882836'), 'Maria Fernanda Andrucioli', '11975602154', 'MARIA.ANDRUCIOLI@CGPBRASIL.COM', '33716882836', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07843950000127'), 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (68261, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null, 1);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada)
VALUES (70313, 35, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Rosana Ribeiro Marques', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61150348000150'), 1);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (69929);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (69821);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (69178);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (70179);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (71545);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (70267);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (70645);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (70264);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (70296);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (68261);

COMMIT;