START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(20558, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34414651808'), 'Adriana Coelho Camillo Zanella', '1150908794', 'adriana.zanella@eurofarma.com.br', '34414651808', null),
	(20258, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31027397840'), 'Alessandra Carvalho Silva de Godoy', '11940602546', 'alessandra@agedu.com.br', '31027397840', null),
	(20484, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11227464827'), 'Ana Paula Garcia', '1141443332', 'anapaula@libertyseguros.com.br', '11227464827', null),
	(20536, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08686042678'), 'Anna Carolina Nascimento de Souza Freire', '11955806971', 'Annafreire.psico@outlook.com', '08686042678', null),
	(20326, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01392453089'), 'Bruna Ziglioli Pacheco', '51996155902', 'brunazigliolipacheco@gmail.com', '01392453089', null),
	(19847, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', null),
	(19758, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04905771480'), 'Carina Pierrotti', '81995290606', 'carinas@saojoseagroinustrial.com.br', '04905771480', null),
	(19878, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22809302855'), 'Cintia Menezes Carneiro', '11969267997', 'relacionamento@catividade.com.br', '22809302855', null),
	(20237, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19268021870'), 'Cleia A Vilela de Lima', '11959940442', 'enf.cleia@gmail.com', '19268021870', null),
	(20059, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75213176291'), 'Diego Maia Lopes', '9536237123', 'guitormapes@msn.com', '75213176291', null),
	(19765, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null),
	(19888, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37420319880'), 'Fernanda Alves de Souza', '11953434325', 'coordenacao@catividade.com.br', '37420319880', null),
	(20274, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05843516822'), 'Gilda Maria Portes Grego', '14996524737', 'ggrego@zilor.com.br', '05843516822', null),
	(17592, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null),
	(25133, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null),
	(20050, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null),
	(20430, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15088895895'), 'Kelim Valentini', '47999227544', 'valentini.kelim@gmail.com', '15088895895', null),
	(19800, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12748979800'), 'Luciana Louro Ferreira Fortunato', '1198568782', 'lfortunato@terra.com.br', '12748979800', null),
	(19838, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 'Marisa Mateus dos Santos', '11993896777', 'msantos@espm.br', '11566074851', null),
	(20318, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36545997882'), 'Paulo Vitor Pires Correia', '11988338985', 'pvcorreia@gmail.com', '36545997882', null),
	(20541, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null),
	(19908, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15033487841'), 'Regina Helena Benalia', '19981489939', 'regina@behaviorconsultoria.com.br', '15033487841', null),
	(19910, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24566386899'), 'Renata Zerbini', '11972995988', 'renata.zerbini@willistowerswatson.com', '24566386899', null),
	(20251, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21646479807'), 'Roberta de Paula Pereira', '11981376167', 'roberta.pereira@avon.com', '21646479807', null),
	(20052, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12965369805'), 'Sergio Carvalho', '11972047273', 'professorsergio@hotmail.com', '12965369805', null),
	(20260, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07245383723'), 'Tais Assis', '21968999975', 'tais.assis@loreal.com', '07245383723', null),
	(19737, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06368372621'), 'Tania Mara Machado Pessoa', '31984131437', 'tmachado@fiemg.com.br', '06368372621', null),
	(19904, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Fleury S/a')),
	(19977, 9, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40221455876'), 'Thayane Cristine Stopa', '11947771194', 'thayane.stopa@willistowerswatson.com', '40221455876', null);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (20558);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (20258);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19878);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (17592);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25133);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (20260);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 9;

COMMIT;