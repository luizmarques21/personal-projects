START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(23812, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '27227569861'), 'Adriana Sampaio', '11952399524', 'adrisampaio@msn.com', '27227569861', null),
	(23470, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '87940744372'), 'Ana Karine Andrade Vasconcelos de Oliveira', '85996284755', 'ana_karine_v@hotmail.com', '87940744372', null),
	(24322, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04321071933'), 'Ana Luiza Lozinski', '41991385622', 'lozinskiana@gmail.com', '04321071933', null),
	(24878, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75818949400'), 'Ana Paula Carneiro de Araújo Almeida', '82999007215', 'apcaalmeida@gmail.com', '75818949400', null),
	(24648, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '58651543620'), 'Ana Paula Dusi', '21992578190', 'anadusi@gmail.com', '58651543620', null),
	(24554, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01467959979'), 'Ana Paula Leitoles Remer', '41988968035', 'ana.remer@sistemafiep.org.br', '01467959979', null),
	(24556, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '59354216587'), 'Ana Rosa Moreira Mascarenhas Pontes Goems', '71999618809', 'anarosam@fieb.org.br', '59354216587', null),
	(24808, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14826042809'), 'Andrea Viviane Correia', '11964156864', 'andreaviviane@casasandreluiz.org.br', '14826042809', null),
	(23729, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00668483938'), 'Andreia Heiler Cristofolini', '4799960960', 'andreia.cristofolini@tigre.com', '00668483938', null),
	(23805, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '39061558468'), 'Anita Morais', '81992173428', 'anitam@pe.sebrae.com.br', '39061558468', null),
	(24569, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32055144839'), 'Antonio Leandro S. do Nascimento', '12992061083', 'leandro.nascimento775@gmail.com', '32055144839', null),
	(23877, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38068069852'), 'Arioneide da Costa', '11968749452', 'nenecosta@ymail.com', '38068069852', null),
	(22357, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '23485057894'), 'Armelle Izcalli Champetier de Ribes', '11975997182', 'armelle@yogist.com.br', '23485057894', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Yogist')),
	(25207, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36553250880'), 'Bárbara Oliveira Alcântara', '19982192666', 'barbara.oalcantara@gmail.com', '36553250880', null),
	(25259, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08998458861'), 'Beth Pereira', '11972166921', 'elizabethpereira@prodam.sp.gov.br', '08998458861', null),
	(25192, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Care Plus Medicina', '1141979048', 'mhaddad@careplus.com.br', '26450113812', null),
	(24855, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82523134772'), 'Carlos Eduardo Bergallo', '21994842313', 'eduardo@fisilabor.com.br', '82523134772', null),
	(24647, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08945050680'), 'Carolina Andrade Queiroz', '21982852992', 'carolanq@yahoo.com.br', '08945050680', null),
	(24895, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '29710153862'), 'Carolina Bueno da Silva', '11972070297', 'ca_bueno77@yahoo.com.br', '29710153862', null),
	(24495, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03812852438'), 'Cássio Augusto de Luna Saturnino', '81992780818', 'cassio.saturnino@sistemafiepe.org.br', '03812852438', null),
	(24729, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03711000975'), 'Clarissa Mattana', '41988214036', 'Clarissamatt@hotmail.com', '03711000975', null),
	(23665, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05266185406'), 'Débora Botelho', '81988390482', 'deborasbotelhos@gmail.com', '05266185406', null),
	(24490, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00699477913'), 'Deisi Paloschi Rose', '41998231952', 'deisi.rose@sistemafiep.org.br', '00699477913', null),
	(23537, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '75213176291'), 'Diego Maia Lopes', '9536237123', 'guitormapes@msn.com', '75213176291', null),
	(25025, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null),
	(23866, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02319341900'), 'Elaine', '41996149300', 'elaineamado@gmail.com', '02319341900', null),
	(24993, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04672285901'), 'Elaine Aparecida Fretola', '69992275130', 'Elainefretola@gmail.com', '04672285901', null),
	(24519, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26758891801'), 'Elaine Fernandes Chagas', '11980467290', 'elaine.chagas@cptm.sp.gov.br', '26758891801', null),
	(23635, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11376379864'), 'Elisabete Martin', '11996664778', 'betemartin@maratonaqv.com', '11376379864', 169322),
	(23905, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05169636784'), 'Fernanda Chaves de Oliveira', '21995887721', 'fcoliveira@firjan.com.br', '05169636784', null),
	(24660, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12572686864'), 'Francisca Feliciano Barboza', '11996952000', 'fran@ipt.br', '12572686864', null),
	(23872, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91013577515'), 'Gabriela Silva Santos', '11976609896', 'gssant@yahoo.com.br', '91013577515', null),
	(24643, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '98712772615'), 'Giselle Guimarães Santos Anjos', '71987021992', 'giselle.anjos@inss.gov.br', '98712772615', null),
	(23842, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03601212684'), 'Gustavo Henrique Guimarães', '2136168972', 'gustavo.hguimaraes@dataprev.gov.br', '03601212684', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Dataprev')),
	(24269, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '83953191268'), 'Henrique Brito Angelim', '96981244963', 'henrique.angelim@edu.ap.sesi.org.br', '83953191268', null),
	(25109, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00793055121'), 'Hilvanete Conceição da Silva Suares', '65981160959', 'hilvanete.suares@sefaz.mt.gov.br', '00793055121', null),
	(24373, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '37458206810'), 'Intercement', '11981804994', 'saudebemestar@intercement.com', '37458206810', null),
	(24467, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38239026877'), 'Jaqueline Oliveira', '11954636696', 'jaqueline.oliveira@tpv-tech.com', '38239026877', null),
	(24321, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06083586909'), 'Joao Augusto Rodrigues', '41996589347', 'Contato.time@hotmail.com', '06083586909', null),
	(26716, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null),
	(23921, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25942212368'), 'José Lindoval Aragão Matos', '85999259323', 'jlaragao@bnb.gov.br', '25942212368', null),
	(23908, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73460583304'), 'José Tarcísio Abreu Gomes Júnior', '85987885922', 'tarcisiogomes@bnb.gov.br', '73460583304', null),
	(23571, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66933897320'), 'Joseilma de Azevedo Garrido', '98981671939', 'joseilmafono@hotmail.com', '66933897320', null),
	(24360, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01382897359'), 'Juliana de Albuquerque Souza', '85988997380', 'jalbuquerque@sfiec.org.br', '01382897359', null),
	(21993, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null),
	(24838, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28984934810'), 'Kennya Miyamura', '11997409353', 'kennya.miyamura@cacaushow.com.br', '28984934810', null),
	(25147, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02429832194'), 'Leurilainne da Silva Jacinto Azambuja', '65999351502', 'leurilainne@gmail.com', '02429832194', null),
	(23465, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03982640318'), 'Lidia Azevedo', '85986513055', 'LHAZEVEDO@SFIEC.ORG.BR', '03982640318', null),
	(24811, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48822566572'), 'Lídice Miranda', '71996099382', 'lidice@fieb.org.br', '48822566572', null),
	(25255, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09523192922'), 'Lucas Henrique Tulio', '41996121364', 'lucastulioo26@gmail.com', '09523192922', null),
	(24466, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04875029659'), 'Luciana Mendonça da Mata', '81997558920', 'lummata@hotmail.com', '04875029659', null),
	(24590, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04755675600'), 'Maria Celia Andrade Cassal', '12981701792', 'mariacelia.andrade@fundhas.org.br', '04755675600', null),
	(24315, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11303367947'), 'Maria Eloisa de Oliveira', '41984477220', 'meo.medo2000@gmail.com', '11303367947', null),
	(23468, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '73865788300'), 'Maria José Pinheiro', '85985778063', 'mjpinheiro@sfiec.org.br', '73865788300', null),
	(23928, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '36474844825'), 'Mariana Gabriela de Andrade', '11997451476', 'rh@plazashoppingitu.com.br', '36474844825', null),
	(24978, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16515106874'), 'Melissa Almeida', '11985558648', 'melissa@fitcorpassessoria.com.br', '16515106874', null),
	(23628, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78920345287'), 'Natasha Lima da Silva Neves Abreu', '92984298224', 'natashaneves@msn.com', '78920345287', null),
	(25132, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03288275929'), 'Nayla Janaina Palma Kusumoto', '12991766571', 'nayla.kusumoto@fundhas.org.br', '03288275929', null),
	(24728, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08763252902'), 'Nicoly', '41995888259', 'nicolyluiz@yahoo.com', '08763252902', null),
	(23760, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15658013852'), 'Patrícia França Proença', '11993063416', 'patricia.franca@mentalclean.com.br', '15658013852', null),
	(25198, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16425238879'), 'Pedro Alberto Martins Correa Leite', '1125374031', 'pedroalbertoleite@gmail.com', '16425238879', null),
	(23815, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '41003635830'), 'Priscila dos Santos Clementino', '11958181780', 'priscila.sclementino@gmail.com', '41003635830', null),
	(24814, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30591908875'), 'Renata Santos de Brito Roque', '11985251733', 're.celo@ig.com.br', '30591908875', null),
	(24302, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '91011566087'), 'Richard Augusto Nunes de Nunes', '51998415374', 'richardnunes56@gmail.com', '91011566087', null),
	(23914, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78722365591'), 'Roberta Carolina Camacho Lucas', '71991008577', 'ROBERTA.CAROLINA@FIEB.ORG.BR', '78722365591', null),
	(24890, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16238259892'), 'Rosana de Barros Marques', '13996056255', 'rosanabm.psi@gmail.com', '16238259892', null),
	(23750, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '38920623821'), 'Sabrina da Silva', '11998958005', 'sabrinalm16@gmail.com', '38920623821', null),
	(24598, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02752748884'), 'Sandra Cristina Caieiro da Costa Almeida', '11979888656', 'SALMEIDA@PRODAM.SP.GOV.BR', '02752748884', null),
	(23732, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14527898434'), 'Solange Carvalho Paraíso', '81991061808', 'solangeparaiso.sol@gmail.com', '14527898434', null),
	(25245, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16034651115'), 'Suzete Terezinha da Silva', '65999732922', 'suzeteterezinha@hotmail.com', '16034651115', null),
	(24727, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05736214970'), 'Tamyres de Lazari Marques', '41997160654', 'tamymarques543@gmail.com', '05736214970', null),
	(24151, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28794646848'), 'Tatiana Mocsányi Kassardjian', '11947157546', 'tatiana@consultores.com.br', '28794646848', null),
	(22387, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '14831353817'), 'Valéria Aparecida da Costa', '11991812387', 'valeria_nutri@hotmail.com', '14831353817', null),
	(23880, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '96098767653'), 'Wellington Martins R. da Silva', '31986818435', 'w.martinsribeiro@gmail.com', '96098767653', null),
	(25121, 11, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '62291998668'), 'Zélia Cristina Batista Santos', '12991577046', 'zelia.edfisica@gmail.com', '62291998668', null);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24808);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (22357);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24895);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25109);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24467);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24321);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (26716);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23921);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25147);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23468);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25132);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (23760);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25198);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24814);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25245);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (24151);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (25121);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 11;

COMMIT;