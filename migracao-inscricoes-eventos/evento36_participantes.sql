START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_presenca_confirmada, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(71670, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05676799854'), 1, 'Alexandre Ayres', '11986899274', 'ayres@mindself.com.br', '05676799854', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '31381164000130')),
	(71546, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 1, 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null),
	(71698, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31146219881'), 1, 'Eduardo Cesar Domingues de Azevedo', '1182696956', 'eduardo@azevedonetto.com.br', '31146219881', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193')),
	(71696, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 1, 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '22465323000193')),
	(71644, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33627625811'), 1, 'Karen Cristina Souza Belmiro', '1150854285', 'karen.belmiro@espm.br', '33627625811', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164')),
	(71648, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11566074851'), 1, 'Marisa Mateus dos Santos', '1150854590', 'msantos@espm.br', '11566074851', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164')),
	(71651, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29523483838'), 1, 'Michelle Cons Andrades', '1150854614', 'mandrades@espm.br', '29523483838', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61825675000164')),
	(69181, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 1, 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null),
	(71895, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 1, 'Regina Machioni', '11992710303', 'regina@sescsp.org.br', '24875785801', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '03667884000120')),
	(71857, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 1, 'Rosana Ribeiro Marques', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61150348000150')),
	(71641, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09397179802'), 1, 'Rosilene Arruda Meolo', '11946464571', 'rosilene.melo@portoseguro.com.br', '09397179802', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '61198164000160')),
	(71638, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12676927825'), 1, 'Solange Rodrigues de Souza Nascimento', '1196113293', 'SOLANGE.NASCIMENTO@DSM.COM', '12676927825', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '56992951001030')),
	(72067, 36, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 1, 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_cnpj = '60840055000131'));

COMMIT;