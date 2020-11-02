START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(73057, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28579706840'), 'Adriana Andrade Gomes', '11996322650', 'adriandradegomes@gmail.com', '28579706840', null),
	(73087, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22764059884'), 'Adriana Garanito Persechini', '11994782595', 'Adriana.persechini@cevalogistics.com', '22764059884', null),
	(73113, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16618638844'), 'Adriana Rodrigues', '11995250336', 'adrianarodrigues@itsseg.com', '16618638844', null),
	(72907, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03783336902'), 'Adriano Loechel', '11972381896', 'adrianoloechel@hotmail.com', '03783336902', null),
	(73323, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32867692822'), 'Ana Paula Piloto Cardoso Barbosa', '11982374644', 'Acbarbosa@grupopetropolis.com.br', '32867692822', null),
	(73582, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28325947861'), 'Ana Paula Vicentin', '11975004685', 'hanamar@gmail.com', '28325947861', null),
	(73105, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38280576835'), 'Ândrea Fernandes Emiliano Silva', '11997005163', 'andrea.silva@dorconsultoria.com.br', '38280576835', null),
	(72960, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12530669813'), 'Andreia Oliveira', '11984565224', 'andreia.oliveira@portoseguro.com.br', '12530669813', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Porto Seguro Cia de Seguros Gerais')),
	(73580, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25207372807'), 'Angela Vieira de Vasconcelos', '11992725671', 'angela.vieira@sescsp.org.br', '25207372807', null),
	(72941, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85931870997'), 'Antonio', '11994613374', 'carlos.wurtz@hotmail.com', '85931870997', null),
	(73102, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41328209806'), 'Bárbara Cordeiro de Azevedo Souza', '11962978395', 'babiazevedosouza@gmail.com', '41328209806', null),
	(73305, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39142123810'), 'Bruna Pinheiro de Oliveira Silva', '11980982095', 'bruna.pinheiro@vitalwork.com.br', '39142123810', null),
	(73591, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07589502928'), 'Bruna Tibolla', '46999004352', 'psicbrutibolla@gmail.com', '07589502928', null),
	(73070, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32878871812'), 'Carolina Giardino', '11945447689', 'Carolina.giardino@willistowerswatson.com', '32878871812', null),
	(73127, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31578353866'), 'Cassia Lima', '11962942272', 'nutraz@allianz.com.br', '31578353866', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Allianz Saúde')),
	(72939, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41391731816'), 'Cba', '15997887699', 'daiane.ramos.dr1@cba.com.br', '41391731816', null),
	(73071, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '18081615806'), 'Cristiane Jose', '11989904020', 'cristiane.jose@oi.net.br', '18081615806', null),
	(73104, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31032506814'), 'Cristiane Oliveira Bonfim', '11981676909', 'crisobonfim@hotmail.com', '31032506814', null),
	(72953, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22983479803'), 'Cynthia Oliveira', '11995123409', 'ocynthia@omint.com.br', '22983479803', null),
	(72923, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34794833806'), 'Daniel Astun Cirino', '19996019767', 'dastuncirino@mmm.com', '34794833806', null),
	(73231, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19479056860'), 'Danielle Bormann Pereira', '11982128850', 'danielle.pereira@karina.com.br', '19479056860', null),
	(72945, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23167564415'), 'Denise Telles Cordeiro', '21998642532', 'denisetcordeiro@hotmail.com', '23167564415', null),
	(73519, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03670338950'), 'Eduardo', '45999778230', 'eduardozaro@hotmail.com', '03670338950', null),
	(73084, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null),
	(73584, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '95485384072'), 'Fabiele Mello Assad', '55999331625', 'assadfabielem@johndeere.com', '95485384072', null),
	(72908, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01479653659'), 'Fernanda Cardoso Zanetti', '31992148589', 'fzanetti@fiemg.com.br', '01479653659', null),
	(73542, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11893276783'), 'Giulia Xavier de Carvalho', '61996132105', 'giuliaxc.1@gmail.com', '11893276783', null),
	(73579, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16308935875'), 'Glauce Gravena', '11993298179', 'glaucegravenanutri@gmail.com', '16308935875', null),
	(72990, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268'), 'Henrique Brito Angelim', '96981413628', 'henrique.angelim@edu.ap.gov.br', '83953191268', null),
	(73100, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16171436771'), 'Ildo Souza dos Santos', '21975466363', 'santos.ildosouza@gmail.com', '16171436771', null),
	(73320, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01234567890'), 'Joana Empresa', '78978797878', 'joana@email.com', '01234567890', null),
	(73568, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36131513830'), 'Juliana Bravo Guerrero', '11982296600', 'julianabravoguerrero@gmail.com', '36131513830', null),
	(73236, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25703697808'), 'Julienne Tkacz', '11975303544', 'julienne.tkacz@br.thbgroup.com', '25703697808', null),
	(73329, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02586108400'), 'Luciana de Souza Santos', '13996886593', 'Enfermagem.reabilitar@yahoo.com', '02586108400', null),
	(72915, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01391375645'), 'Ludmilla', '31996873240', 'ludmillafm@yahoo.com.br', '01391375645', null),
	(73567, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22873573864'), 'Luisa Haddad', '11985581651', 'luisa@pedefeijaosp.com', '22873573864', null),
	(73075, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26542566856'), 'Luiz Claudio Rossi', '11995529210', 'luizclaudiorossi@yahoo.com.br', '26542566856', null),
	(73529, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31415640866'), 'Maicoln Codogno', '11980454100', 'maicoln.codogno@portoseguro.com.br', '31415640866', null),
	(73171, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22375224809'), 'Maria de Fátima Nunes Batista', '11992178686', 'maria.batista@allianz.com.br', '22375224809', null),
	(73141, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41898548838'), 'Mariana Pedroza Silva', '11965124529', 'mariana.pedroza@aon.com', '41898548838', null),
	(73322, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34482026816'), 'Marina', '11997380629', 'Marina.gerardi@grupopan.com', '34482026816', null),
	(73078, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07464016718'), 'Michell Viana', '27999274100', 'michell@oikossaude.com.br', '07464016718', null),
	(72943, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04279419892'), 'Mona Chamma', '11999054797', 'Mona.chamma@hotmail.com', '04279419892', null),
	(73099, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06295112927'), 'Monica Falat Reva Dell Agnolo', '41996139120', 'monicareva@gmail.com', '06295112927', null),
	(73098, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04230378971'), 'Natali Carol Fritzen', '41999980361', 'natali.fritzen@energienutricao.com.br', '04230378971', null),
	(73003, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07369954633'), 'Nilciane Pereira Cardoso', '31986666728', 'nilciane.cardoso@vale.com', '07369954633', null),
	(72916, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '76037576653'), 'Pablius Staduto Braga da Silva', '11983039740', 'pabliusilva@gmail.com', '76037576653', null),
	(72911, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02189374073'), 'Patrícia Benini', '51984116133', 'pattybenini@gmail.com', '02189374073', null),
	(73524, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patricia de Carvalho Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null),
	(73022, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01975303032'), 'Paula Bebber Fontanella', '51994646464', 'paula.fontanella@getnet.com.br', '01975303032', null),
	(72922, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '34383848842'), 'Paula Bertone', '11976813739', 'paula.bertone@hotmail.com', '34383848842', null),
	(72925, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null),
	(72933, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '13609255897'), 'Priscila Uzun', '11996122464', 'uzun.p@pg.com', '13609255897', null),
	(73566, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35980391827'), 'Raquel Labonia', '11967504488', 'raquel.labonia@gmail.com', '35980391827', null),
	(73229, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01176916742'), 'Regina de Oliveira Santana', '21971608404', 'reginas@br.com.br', '01176916742', null),
	(73581, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24875785801'), 'Regina Machioni', '11992710303', 'reginamachioni@gmail.com', '24875785801', null),
	(73563, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '84290439772'), 'Rejane Maria Tavares Santos', '21966706886', 'Rejane.tavares@fiocruz.br', '84290439772', null),
	(73525, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91011566087'), 'Richard Augusto Nunes', '51998415374', 'richardnunes56@gmail.com', '91011566087', null),
	(73573, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02292210177'), 'Roberta Sanches', '65999621344', 'roberta.sanches@sesimt.ind.br', '02292210177', null),
	(73521, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02337564851'), 'Rosicler Dennanni Rodriguez', '11964921856', 'rosicler.rodriguez1@gmail.com', '02337564851', null),
	(73509, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09397179802'), 'Rosilene Arruda Melo', '11946464571', 'rosilene.melo@portoseguro.com.br', '09397179802', null),
	(73545, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29628089803'), 'Stella Bolibio', '11942009767', 'stella.bolibio@hotmail.com', '29628089803', null),
	(73088, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30265368812'), 'Tathiana Correia Trovao', '11962942272', 'vivaz@allianz.com.br', '30265368812', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Allianz Saúde')),
	(73553, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21910033898'), 'Tatiana Matuk', '11998959562', 'tatmatuk@uol.com.br', '21910033898', null),
	(73503, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29661848840'), 'Teresa Cristina P C Carvalho', '11989753043', 'teresa.carvalho@portoseguro.com.br', '29661848840', null),
	(73368, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40221455876'), 'Thayane Cristine Stopa', '11947771194', 'thaystopa@gmail.com', '40221455876', null),
	(73101, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24095271833'), 'Tiago Santos', '11916967240', 'tiago.santos@workwell.pt', '24095271833', null),
	(72942, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12571523864'), 'Timóteo Araujo', '11991298018', 'Timoteolea@gmail.com', '12571523864', null),
	(73234, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '21307213898'), 'Vanessa Del Bel Belluz', '11998687556', 'vanessa.delbel@aon.com', '21307213898', null),
	(73106, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10331095840'), 'Viviane Sanches', '11985515350', 'vssanches@dow.com', '10331095840', null),
	(73111, 37, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35513702819'), 'Wallace Souza', '19992101760', 'aceluis73@gmail.com', '35513702819', null);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 37;

COMMIT;