START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33868, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808'), 'Adriana Coelho Camillo Zanella', '1150908794', 'adriana.zanella@eurofarma.com.br', '34414651808', 207713, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33475, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30981915892'), 'Alessandra da Silva Almeida', '15997651634', 'ale.salmeida@hotmail.com', '30981915892', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36957, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30274499827'), 'Amanda Guimarães Pereira', '11951001811', 'equilibrare-sp@equilibrare.com.br', '30274499827', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33495, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26792957810'), 'Ana Alice dos Santos Mauriz', '11950609067', 'amauriz@rd.com.br', '26792957810', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34120, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '1141443332', 'anapaula@libertyseguros.com.br', '11227464827', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35206, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12530669813'), 'Andreia Gonçalves de Oliveira', '11984565224', 'rosilene.melo@portoseguro.com.br', '12530669813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60198164000160'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36787, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10499848896'), 'Beatriz de Pieri', '11942160252', 'beatriz.pieri@bp.org.br', '10499848896', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37176, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'academia@haoc.com.br', '33923803850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36955, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29852424874'), 'Camila Niedzielski Leite Martim', '11958750788', 'camila@equilibrare.com.br', '29852424874', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35751, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Care Plus Medicina', '1141979048', 'mhaddad@careplus.com.br', '26450113812', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35641, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14243650829'), 'Carlos Alberto Legal Filho', '11992093462', 'carloslegal@legalas.com.br', '14243650829', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36969, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14336982856'), 'Celia Aparecida Leite', '1141449549', 'celia.Leite@eurofarma.com.br', '14336982856', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33024, 21, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Companhia Nitro Química Brasileira'), 'Companhia Nitro Química Brasileira', '11947512476', 'rosana.silva@nitroquimica.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36238, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01432387871'), 'Dataprev', '11997898776', 'katia.oliveira@dataprev.gov.br', '01432387871', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33481, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34025384825'), 'Diego Alex Pereira', '11962012105', 'atendimentoraiadrogasil@euroseg.com.br', '34025384825', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36954, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19778686653'), 'Dr. Anezio Juliao', '11943258477', 'anezio.juliao@eurofarma.com.br', '19778686653', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37222, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33476, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18241933860'), 'Elaine Reis Barbosa Brito', '11953114141', 'elainerbrito@gmail.com', '18241933860', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36849, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37166, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34897506832'), 'Elyana Reducino dos Santos Georgiou Vicente', '11972856563', 'elyanarc@yahoo.com.br', '34897506832', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34897506832')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34897506832')), 201907, 2, 75, 75, 0, 0, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-18', '2019-07-18', '2019-07-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-07-17 08:15', '2019-07-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34897506832')), '2019-07-19', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 37166, 21, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34897506832')), 75, 1, '2019-07-17', '2019-07-17');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33887, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07692063000103'), 'Equilibrare', '1155311469', 'adeliane@equilibrare.com.br', '07692063000103', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36753, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31507811837'), 'E-saúde Brasil / Finnet S/a - Tecnologia', '11991259248', 'daiane.maciel@e-prosaude.com.br', '31507811837', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33371, 21, (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 'Euroamerica Corretora de Seguros Ltda', '1131654811', 'amso@euroseg.com.br', '', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33488, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32967262846'), 'Fabiola Breve de Miranda', '11981091624', 'planoadmgcc@euroseg.com.br', '32967262846', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33492, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22385769832'), 'Francielle Reis Castro', '1131654810', 'francielle.castro@vexia.com.br', '22385769832', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34658, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11802191801'), 'Gabriela Amanda Silva', '11974390082', 'rhliberdade@yahoo.com.br', '11802191801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60747318000162'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37616, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), 201907, 2, 75, 0, 0, 75, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-23', '2019-07-23', '2019-07-24', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-07-22 16:41', '2019-07-23', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831')), '2019-07-24', 'Concessão de isenção', '2019-07-22 16:41');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-07-22 16:41');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 37616, 21, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35117, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38532575854'), 'Juan Miranda Leite', '11986246170', 'juan.bella.leite@gmail.com', '38532575854', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '68472307000129'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35884, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35107, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42346569844'), 'Luana Gama de Mouras', '11986246170', 'ppqv@vsegura.com.br', '42346569844', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '68472307000129'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37304, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869'), 'Luiz Fernando de Barros', '11996262950', 'peritomoto@gmail.com', '09609883869', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36061, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857'), 'Marcela de Souza Dias', '11989217186', 'educathus@gmail.com', '34051209857', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20088008000169'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36056, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34051209857'), 'Maria Cristina Villalva Guedes', '11984013637', 'mariacristinavillalvaguedes@gmail.com', '34051209857', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20088008000169'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33493, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36885400858'), 'Mariana Bregion Lourenço', '11992380878', 'mblourenco@rd.com.br', '36885400858', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35095, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'Msanto@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (34024, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05495191811'), 'Nancy Edith Pinilla Cortes', '11982923271', 'nanypinilla@hotmail.com', '05495191811', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (31874, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177'), 'Natura Cosméticos S/a', '11999575059', 'claudineiazorzela@natura.net', '71673990000177', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36968, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90494288515'), 'Nelia Paixao Tizzani', '1150908498', 'nelia.paixao@eurofarma.com.br', '90494288515', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61190096000192'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37258, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17174757871'), 'Nilson Dantas', '14997925192', 'ndantas@sp.gov.br', '17174757871', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17174757871')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17174757871')), 201907, 2, 75, 0, 0, 75, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-18', '2019-07-18', '2019-07-19', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-07-17 23:31', '2019-07-18', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17174757871')), '2019-07-19', 'Concessão de isenção', '2019-07-17 23:31');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-07-17 23:31');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 37258, 21, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37273, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '77212134600'), 'Nivia Bernardes Leme da Cunha', '11993210729', 'cunha0804@yahoo.com.br', '77212134600', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '77212134600')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '77212134600')), 201907, 2, 75, 0, 0, 75, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-19', '2019-07-19', '2019-07-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-07-18 10:28', '2019-07-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '77212134600')), '2019-07-20', 'Concessão de isenção', '2019-07-18 10:28');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-07-18 10:28');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 37273, 21, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36952, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05228064737'), 'Patricia Helena Pizarro Dantas', '21991010663', 'patriciahelena@equilibrare.com.br', '05228064737', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07698068000107'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37072, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17928917840'), 'Pricila Santos Capanema', '11980785446', 'pricila.capanema@acsc.org.br', '17928917840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60922168000186'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36027, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31634040813'), 'Rafael Piacenti', '11980610866', 'rafael@ergonomos.com.br', '31634040813', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '15447255000174'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33482, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28320486840'), 'Regiane Aparecida da Silva', '11982973974', 'atendimento@eurosg.com.br', '28320486840', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Euroamerica Corretora de Seguros Ltda'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37266, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04190552828'), 'Rita Sbragia', '11964706978', 'rita.sbragia@hotmail.com', '04190552828', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04190552828')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04190552828')), 201907, 2, 75, 0, 0, 75, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-19', '2019-07-19', '2019-07-20', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (4, 75, '2019-07-18 08:38', '2019-07-19', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04190552828')), '2019-07-20', 'Concessão de isenção', '2019-07-18 08:38');
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO dvt_divida_desconto (dva_id, dvt_valor, dvt_descricao, dvt_data_cadastro) VALUES ((SELECT max(dva_id) FROM dva_divida), 75, 'Concessão de isenção', '2019-07-18 08:38');
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 37266, 21, (SELECT max(dva_id) FROM dva_divida));

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33716, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gnail.com', '35673478100', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (33853, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16238259892'), 'Rosana de Barros Marques', '13996056255', 'rosanabm.psi@gmail.com', '16238259892', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35037, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832'), 'Rosangela de Oliveira Santos Deroza', '11999520785', 'rosangela.deroza@althernativasaude.com.br', '12557362832', null, 1, null, 2);
INSERT INTO dva_divida (psa_id_pagador, psa_id_destinatario, cmi_id, dvu_id, dva_valor, dva_valor_pago, dva_valor_acrescimo, dva_valor_desconto, dva_descricao, dvp_id, dva_data_vencimento_atual, dva_data_vencimento_inicial, dva_data_inicio_cobranca_mora, dva_data_cancelamento, dva_motivo_cancelamento, dva_cancelada, dva_tipo_cancelamento)
VALUES ((SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832')), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832')), 201907, 2, 75, 75, 0, 0, 'Inscrição em evento: O verdadeiro papel das lideranças no dia a dia das organizações', 31, '2019-07-06', '2019-07-06', '2019-07-07', null, null, 0, null);
INSERT INTO cba_cobranca (cba_situacao, cba_valor, cba_data_cadastro, cba_data_vencimento, cba_tipo_remessa, psa_id, cba_data_limite_recebimento, cba_motivo_cancelamento, cba_data_cancelamento)
VALUES (3, 75, '2019-07-05 13:10', '2019-07-06', 99, (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832')), '2019-07-07', null, null);
INSERT INTO dvo_divida_cobranca (dva_id, cba_id) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(cba_id) FROM cba_cobranca));
INSERT INTO cbn_cobranca_evento_sindicato (cbn_descricao, prve_id, eve_id, evo_id, dva_id) VALUES ('Inscrição em evento', 5, 35037, 21, (SELECT max(dva_id) FROM dva_divida));
INSERT INTO pgo_pagamento (cba_id, psa_id, pgo_valor, pgo_situacao, pgo_data_pagamento, pgo_data_credito) VALUES ((SELECT max(cba_id) FROM cba_cobranca), (SELECT psa_id FROM psa_pessoa WHERE psa_cli_id = (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832')), 75, 1, '2019-07-06', '2019-07-06');
INSERT INTO pga_pagamento_divida (dva_id, pgo_id, pga_valor) VALUES ((SELECT max(dva_id) FROM dva_divida), (SELECT max(pgo_id) FROM pgo_pagamento), 75);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37254, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35771, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '74716026604'), 'Soraia Maria de Carvalho Alves', '11984250395', 'soraiamc@haoc.com.br', '74716026604', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60726502000126'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35759, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07751803860'), 'Sueli Soares da Silva', '11983600808', 'SUELI.SILVA@AON.COM', '07751803860', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '48102552000137'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (35120, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null, 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36777, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30971650888'), 'Vanessa Ferreira dos Santos', '11998745842', 'sustentabilidade.bp@bp.org.br', '30971650888', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61599908000158'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (37206, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22366680821'), 'Viviane Magalhaes', '1130303035', 'viviane@bilheteria.com', '22366680821', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07741441000193'), 1, null, 2);

INSERT INTO eve_evento_sindicato_participante (eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel, eve_presenca_confirmada, eve_data_deletado, eve_deletado)
VALUES (36819, 21, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05907026880'), 'Werther de Camargo Penteado Busato', '19996019767', 'wpbusato@mmm.com', '05907026880', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '45985371000108'), 1, null, 2);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33868);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35206);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37176);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35641);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36969);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36954);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37222);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36849);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37166);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34658);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37616);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35884);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37304);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36056);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (34024);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37258);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36027);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (37266);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (33716);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35037);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35771);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (35120);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36777);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (36819);

COMMIT;