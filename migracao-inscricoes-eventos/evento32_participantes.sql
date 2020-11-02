START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(58548, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32930448830'), 'Amira L M Landulfo', '1144400623', 'amira.miranda@gmail.com', '32930448830', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '08726829000188')),
	(58001, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38915128800'), 'Ana Ligia Pagoto Quato', '19981128927', 'analigia.pagoto@patricialacombe.com.br', '38915128800', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(58090, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16941911840'), 'Dario Aquino', '11964999049', 'dario@pronest.com.br', '16941911840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '73080426000176')),
	(59136, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11989705740', 'bete.martin@grupocase.com.br', '11376379864', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31605892000188')),
	(58557, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null),
	(59669, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368'), 'José Lindoval Aragão Matos', '85999259323', 'jlaragao@bnb.gov.br', '25942212368', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '07237373000120')),
	(59708, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25285384800'), 'Karina Stryjer', '11981871171', 'kari_stryjer@hotmail.com', '25285384800', null),
	(57942, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null),
	(59652, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09609883869'), 'Luiz Fernando de Barros', '11996262950', 'peritomoto@gmail.com', '09609883869', null),
	(59676, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725'), 'Maria de Fátima Ribeiro Mendonca', '21996308031', 'mfrmendonca@petrobras.com.br', '33059730725', null),
	(58003, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36330320888'), 'Maria Julia Feder', '19981632282', 'mariajulia.feder@patricialacombe.com.br', '36330320888', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(58016, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35596722871'), 'Moniky Silva Procópio', '11995088461', 'moniky.silva@patricialacombe.com.br', '35596722871', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(59674, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13142334831'), 'Natura Cosméticos S/a', '11991965196', 'martamoreno@natura.net', '13142334831', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177')),
	(59672, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27835032805'), 'Natura Cosméticos S/A', '11999575059', 'claudineiazorzela@natura.net', '27835032805', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '71673990000177')),
	(58000, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patrícia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(55670, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null),
	(58019, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27885385884'), 'Roberta de Spuza', '11994476534', 'roberta.souza@patricialacombe.com.br', '27885385884', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(58893, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823'), 'Solange Cristina Davino', '11984909085', 's.davino56@hotmail.com', '08446072823', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '20836154000125')),
	(58541, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131')),
	(58012, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40214609855'), 'Tiago Prats Dantas Almeida', '11984156892', 'tiago.prats@patricialacombe.com.br', '40214609855', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '28575634000191')),
	(57989, 32, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10331095840'), 'Viviane Sanches', '1151848517', 'vssanches@dow.com', '10331095840', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60435351000157'));

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58001);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58557);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (59652);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (59676);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58003);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58016);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (59674);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58000);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (58012);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (57989);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 32;

COMMIT;