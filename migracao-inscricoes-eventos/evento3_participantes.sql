START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(7325, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48843415115'), 'Adriana Cerqueira Susarte', '61999702313', 'adriana@df.sebrae.com.br', '48843415115', null),
	(6782, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66591520163'), 'Adriana Maria Nunes da Cruz', '61985675414', 'Drycadryca.caninha@gmail.com', '66591520163', null),
	(7470, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01148614397'), 'Adriana Silva Costa', '61985397004', 'adrianacosta.psi@gmail.com', '01148614397', null),
	(7018, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02237927138'), 'Alessandra de Souza Silva', '61981814957', 'alessandra.psicb@gmail.com', '02237927138', null),
	(7519, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69200416187'), 'Alessandra Ribeiro de Araujo', '61996782975', 'beneficios@ciplan.com.br', '69200416187', null),
	(7374, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00497055120'), 'Ana Angélica Chaves Goncalves', '61984072292', 'ana.goncalves@mutua.com.br', '00497055120', null),
	(7874, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '51862883653'), 'Analucília Simões Monteiro Duarte', '61992154931', 'analucilia@bb.com.br', '51862883653', null),
	(6880, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '47245255687'), 'Angela Maria Ribeiro', '6692735907', 'angela.little.angell@gmail.com', '47245255687', null),
	(7353, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04868725300'), 'Antonia Silvana Pinto Lopes', '61994344878', 'silvanaen1a30@hotmail.com', '04868725300', null),
	(7532, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04048627562'), 'Arthur Moreira do Nascimento', '61986212805', 'Artur37musico@gmgmail.com', '04048627562', null),
	(6845, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05178041151'), 'Aureline da Silva Brito', '6199369991', 'lenyaury@gmail.com', '05178041151', null),
	(6805, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02217313185'), 'Bruna Rodrigues Feitosa', '61984625046', 'bruna.feito61984625046sa@caubr.gov.br', '02217313185', null),
	(7554, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82104654149'), 'Claudia Silveira Fernandes', '61998154466', 'claudiasf1@gmail.com', '82104654149', null),
	(7154, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69253536187'), 'Cristiane Regina Oliveira', '61991081939', 'CRICAREGINA@GMAIL.COM', '69253536187', null),
	(7823, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01750375150'), 'Daiane Aguiar Rocha', '61992587283', 'daiane.rocha@hospitalsantamarta.com.br', '01750375150', null),
	(6819, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '96653043720'), 'Daniela Garcia Barbosa', '61982854684', 'canal.danigarcia@gmail.com', '96653043720', null),
	(7319, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72407735153'), 'Daniela Soares Ferrreira', '61985909877', 'dani_soares_f@hotmail.com', '72407735153', null),
	(7203, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37323342104'), 'Dedite Batista Souza', '61992694196', 'dedite.souza@serpro.gov.br', '37323342104', null),
	(7202, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27293734387'), 'Dulcicleide de Araújo Melo', '61999681882', 'dulci@correios.com.br', '27293734387', null),
	(7144, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02736232305'), 'Elisa Maria Amate', '61981331525', 'ELISAMARIA@CORREIOS.COM.BR', '02736232305', null),
	(7209, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49051725191'), 'Elise Silva Seabra', '61981193844', 'eliseseabra@correios.com.br', '49051725191', null),
	(7559, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00539513105'), 'Elma Soares Ornelas', '61991523499', 'elma@fipecqvida.org.br', '00539513105', null),
	(7543, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '81577729587'), 'Evanildo Souza da Silva Junior', '61991298327', 'evanildo.souzajr@gmail.com', '81577729587', null),
	(6751, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99382970134'), 'Fabiana Thyessa Peixoto Cardoso Dias', '61981551818', 'fabiana.dias@bcb.gov.br ', '99382970134', null),
	(7780, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01804347132'), 'Francisca Mônica Silva Rodrigues', '61984879313', 'fmonicasr@gmail.com', '01804347132', null),
	(6850, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '69653135104'), 'Geyse Alves Leite', '61993648272', 'geytrabalho@gmail.com', '69653135104', null),
	(7011, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35376205860'), 'Giovani Oliveira', '11922281888', 'giovani.oo@gmail.com', '35376205860', null),
	(7166, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10574739874'), 'Isabel Brandimarti', '11997143778', 'isabel.brandimarti@cielo.com.br', '10574739874', null),
	(7354, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82390118100'), 'Jaqueline Melo Albino Oliveira', '61996974531', 'jakymelo77@gmail.com', '82390118100', null),
	(7020, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04892478148'), 'Joanderson Marques', '65996695817', 'marquesjoanderson@ymail.com', '04892478148', null),
	(7297, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38983800178'), 'João Gonzaga dos Santos', '61986279720', 'Joao.secretaria@gmai.com', '38983800178', null),
	(7586, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '52060403804'), 'Jose Roberto Piffer', '61999686051', 'JOSE.PIFFER@MUTUA.COM.BR', '52060403804', null),
	(7296, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80480730130'), 'Júlio Cesar Santos', '61991596214', 'juliuscaesar1888@gmail.com', '80480730130', null),
	(7524, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01197005145'), 'Kallyne Gomes Santos', '61981331174', 'KALLYNE.SANTOS@MUTUA.COM.BR', '01197005145', null),
	(7458, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02996829603'), 'Keila da Silva Costa', '61992234730', 'keila.costa@mutua.com.br', '02996829603', null),
	(7617, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '99974800072'), 'Kely de Vargas da Rosa', '47992027999', 'kely.rosa@unimedblumenau.com.br', '99974800072', null),
	(7481, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '43292364272'), 'Klingerly de Oliveira Farias', '61985987193', 'klingerly.farias@df.sebrae.com.br', '43292364272', null),
	(7115, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03266493443'), 'Laudenice Rodrigues Bezerra', '83988951206', 'laudenicebezerra@fiepb.org.br', '03266493443', null),
	(6846, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04070076107'), 'Layon Leandro Rezendes de Sousa', '61993746129', 'layonleandro527@gmail.com', '04070076107', null),
	(6750, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15127813807'), 'Leandro Giavarotti', '61996941337', 'lgiavaro@gmail.com', '15127813807', null),
	(7266, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29578682883'), 'Lis Mie Masuzawa Béda', '11981878831', 'lismiem@yahoo.com.br', '29578682883', null),
	(7123, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06205163640'), 'Livia Fernanda Ribeiro Pereira', '31999692596', 'LFRIBEIRO@FIEMG.COM.BR', '06205163640', null),
	(6778, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00537495100'), 'Louisy de Oliveira Matias', '61998520822', 'louisyoliveira@yahoo.com.br', '00537495100', null),
	(7583, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04142286188'), 'Loyane Mayara da Silva Monte', '61995792427', 'Loyane.mayara@gmail.com', '04142286188', null),
	(6736, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14280407819'), 'Luciano Custódio Luciano Custódio', '11984863628', 'lucianofisio@yahoo.com.br', '14280407819', null),
	(6870, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90509161715'), 'Ludmilla de Sa Moraes Telles Silva', '61999625545', 'lmoraes@sesicni.com.br', '90509161715', null),
	(6940, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02228969818'), 'Magali Rodrigues Zeller', '11982920164', 'atuarial@atservice.com.br', '02228969818', null),
	(7136, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80378544187'), 'Magda Cassia de Sousa Lopes', '61984014551', 'mlopes@umbrasil.org.br', '80378544187', null),
	(7868, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01308623712'), 'Maria Aparecida Mota Pinheiro Vital', '61981674246', 'mpv.maria@gmail.com', '01308623712', null),
	(7124, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41110935153'), 'Maria Das Graças Sousa Silva', '61998276766', 'mgs03169@hotmail.com', '41110935153', null),
	(7460, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39837300604'), 'Maria de Lourdes Ribeiro da Costa', '61999195658', 'lourdes.costa@mutua.com.br', '39837300604', null),
	(6815, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44302452153'), 'Marli Peixoto Vasconcelos de Araújo', '61992130947', 'Marlipeixoto27@gmail.com', '44302452153', null),
	(7301, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05715910196'), 'Marta Neves dos Santos', '61986727192', 'nmarta37@gmail.com', '05715910196', null),
	(7276, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18343996100'), 'Marta Regina dos Passos Lima', '61992143033', 'marta.regina@dataprev.gov.br', '18343996100', null),
	(7143, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00163136580'), 'Michelli Ulisses Parente Matos', '61983547468', 'michellimatos@hotmail.com', '00163136580', null),
	(6853, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03224159189'), 'Naide Alves Leão', '61992891692', 'n-aide-alves@hotmail.com', '03224159189', null),
	(7522, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56490976153'), 'Najla Gomes Haddad', '61996722633', 'najla.haddad@mutua.com.br', '56490976153', null),
	(6857, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '55156703100'), 'Natanael da Silva Ponciano', '62994613377', 'ponciano.n_silva@hotmail.com', '55156703100', null),
	(7110, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '71258884100'), 'Nilma de Souza Lopes', '61986168232', 'Ndslopes@yahoo.com.br', '71258884100', null),
	(7172, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18283993100'), 'Nilva Francisco de Oliveira', '61981435177', 'NILVAOLIVEIRA@CORREIOS.COM.BR', '18283993100', null),
	(7042, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37664263620'), 'Nilva Garcia Ferreira Rocha', '61981017841', 'nilvagarciaferreira@gmail.com', '37664263620', null),
	(7523, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '51074893115'), 'Paulo Cesar Gonçalves', '61999745771', 'paulo@bsbcorseguros.com.br', '51074893115', null),
	(7024, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80296092134'), 'Paulo Sérgio Lopes da Costa', '61991414522', 'paulosergiolopesdf@gmail.com', '80296092134', null),
	(6844, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00854267174'), 'Priscila Angelica de Oliveira', '61983783932', 'pri.angelica5@gmail.com', '00854267174', null),
	(7495, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05397410780'), 'Priscila Ribeiro Baltar', '21998479183', 'priscila_baltar@hotmail.com', '05397410780', null),
	(7814, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03729994174'), 'Raissa Silva Frota', '61985401085', 'raissasilvafrota@gmail.com', '03729994174', null),
	(6775, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01636401147'), 'Raquel de Sá Oliveira Marinho', '61995361729', 'raquelsa@amil.com.br', '01636401147', null),
	(7323, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04280420157'), 'Rayanne Christina Franco Paixão', '61996015100', 'raypaixao@hotmail.com', '04280420157', null),
	(7376, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42103983068'), 'Roberto Andre Damin', '61981501527', 'robertoandredamin@gmail.com', '42103983068', null),
	(7558, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40270955615'), 'Rosahanara Saraiva', '61962569798', 'rosa@fipecqvida.org.br', '40270955615', null),
	(6735, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29707788828'), 'Rosana Ribeiro', '11947512476', 'rosana.silva@nitroquimica.com.br', '29707788828', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Companhia Nitro Química Brasileira')),
	(6946, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '42895087822'), 'Stephanie Hardt', '11957231670', 'stephaniehardt93@gmail.com', '42895087822', null),
	(7696, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85793590153'), 'Tatyane de Camargo Aranha Borges', '61981141240', 'tatyane.borges@e-vida.org.br', '85793590153', null),
	(7282, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '57985235787'), 'Vera de Carvalho Buch Francisco Luiz Jose Buch', '11981154445', 'ffbcg@hotmail.com', '57985235787', null),
	(7052, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93718462834'), 'Vera Lia Martiniano', '11951770647', 'VELIMAR@HOTMAIL.COM', '93718462834', null),
	(7201, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02982015188'), 'Viviane Oliveira Teles dos Santos', '61991472526', 'vos_vivis@hotmail.com', '02982015188', null),
	(7525, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '72216107115'), 'Wanderléia Oliveira Lima de Sousa', '61996172021', 'wanderleia.lima@mutua.com.br', '72216107115', null),
	(7116, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '94476292100'), 'Wanessa de Sousa Araujo', '61984884950', 'wanessardf@gmail.com', '94476292100', null),
	(7267, 3, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09014066864'), 'Yara Martins Tremocoldi', '19984231553', 'tremocoldi_yara_m@cat.com', '09014066864', null);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (6782);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7353);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7554);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7154);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7823);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (6819);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7144);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (6751);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7354);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7586);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7296);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7524);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7617);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7481);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7583);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (6870);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7136);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7124);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7143);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7522);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7172);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7523);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7024);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7814);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7558);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7696);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7201);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7525);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (7116);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 3;

COMMIT;