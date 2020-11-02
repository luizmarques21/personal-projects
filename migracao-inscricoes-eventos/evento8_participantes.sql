START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf, flo_id_responsavel)
VALUES
	(19949, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '10669937851'), 'Adriana Aparecida da Rosa Souza', '11943545532', 'rosa.adriana@amil.com.br', '10669937851', null),
	(19513, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11653081856'), 'Adriana Medeiros de Oliveira', '11941036008', 'drimedeiros68@hotmail.com', '11653081856', null),
	(18009, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03783336902'), 'Adriano Loechel', '11972592387', 'financeiro@abqv.org.br', '03783336902', null),
	(18688, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07428683971'), 'Alessandro Varella Gonçalves', '41992458556', 'alessandro.goncalves@sesipr.org.br', '07428683971', null),
	(18045, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85087955215'), 'Alexandre Ralph Flores de Queiroz', '11989981640', 'alexandrerfqueiroz@gmail.com', '85087955215', null),
	(18415, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22793841838'), 'Aline Cardoso Gomes dos Santos', '5133588940', 'aline_gomes@sicredi.com.br', '22793841838', null),
	(18478, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32930448830'), 'Amira L M Landulfo', '11940037135', 'amira.miranda@gmail.com', '32930448830', null),
	(19726, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01467959979'), 'Ana Paula Leitoles Remer', '41988968035', 'ana.remer@sistemafiep.org.br', '01467959979', null),
	(18151, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28207214864'), 'André Costa Contente', '11998882151', 'andrecontente@yahoo.com.br', '28207214864', null),
	(18149, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17439845889'), 'Anna Freitas', '19983011255', 'annafreitastv@gmail.com', '17439845889', null),
	(19948, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35031419873'), 'Bruna Helena Marques da Silva', '11984229249', 'bruna.silva@amil.com', '35031419873', null),
	(18678, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '44249067874'), 'Bruno', '11111111111', 'brunocartola9@gmail.com', '44249067874', null),
	(18043, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33923803850'), 'Camila Avanzo Ruiz', '11960762002', 'camila@catividade.com.br', '33923803850', null),
	(18019, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12918015709'), 'Camila Costa Magalhães da Silva', '21973565857', 'ccsilva@sesc.com.br', '12918015709', null),
	(18109, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30063695804'), 'Carolina Kuk Fazio', '11982715265', 'carolina.fazio@br.ey.com', '30063695804', null),
	(18134, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03812852438'), 'Cássio Augusto de Luna Saturnino', '81992780818', 'cassio.saturnino@pe.sesi.org.br', '03812852438', null),
	(18020, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15095376865'), 'Célia Honda', '11991083761', 'celiahonda@sesisp.org.br', '15095376865', null),
	(18531, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '00437194906'), 'Chris Bortoli Ribeiro Baptista', '48999233068', 'chrysbr@hotmail.com', '00437194906', null),
	(18112, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '22809302855'), 'Cintia Menezes', '11969267997', 'cintiammc09@gmail.com', '22809302855', null),
	(18402, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '81556799004'), 'Cristiane Dantas Laitano Lionello', '51991246019', 'cristiane_lionello@sicredi.com.br', '81556799004', null),
	(18336, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08823404843'), 'Cristina Aparecida Vitoria Maia', '11996759119', 'cristina.vitoria@pepsico.com', '08823404843', null),
	(18673, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05085898940'), 'Daíse Vicenzi', '43999902333', 'daise.vicenzi@sistemafiep.org.br', '05085898940', null),
	(18428, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '25949362861'), 'Danilo Lanfredi', '16997836626', 'danilo.lanfredi@sesisp.org.br', '25949362861', null),
	(18742, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05070106988'), 'Deborah Gariba Nunes', '41988168115', 'deborahgariba@gmail.com', '05070106988', null),
	(18425, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28871447824'), 'Denivalda Rios dos Reis de Lima', '11967163024', 'dlima@ulmaconstruction.com.br', '28871447824', null),
	(18992, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '85974420187'), 'Edivânia Pereira de Miranda', '62997139478', 'vaniapmiranda@gmail.com', '85974420187', null),
	(18679, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '49615866768'), 'Eduardo Bahia Santiago', '21999734517', 'eduardo.bahia@globo.com', '49615866768', null),
	(18859, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24802250894'), 'Fabio Bighetti Fontoura', '41988568225', 'fabio.fontoura@sistemafiep.org.br', '24802250894', null),
	(18452, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01479653659'), 'Fernanda Cardoso Zanetti', '31992148589', 'fzanetti@fiemg.com.br', '01479653659', null),
	(19981, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28676005885'), 'Fernanda Netto', '11960538393', 'fernanda@azevedonetto.com.br', '28676005885', null),
	(18414, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28384026840'), 'Fernanda Teodoro de Queiroz', '11995915595', 'fqueiroz@cdhu.sp.gov.br', '28384026840', null),
	(18298, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11802191801'), 'Gabriela Amanda Silva', '1145739311', 'solange.galvao@iamspe.sp.gov.br', '11802191801', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Iamspe')),
	(18840, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32509947826'), 'Gabriela de Oliveira Caetano', '13982231492', 'gabrielaa.caetano@gmail.com', '32509947826', null),
	(18110, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '01357513496'), 'Gleyna Lemos Leonez de Araújo', '84999033110', 'GLEYNAARAUJO@RN.SESI.ORG.BR', '01357513496', null),
	(18177, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '70976821087'), 'Graziela Alberici', '51996964601', 'graziela.alberici@sesirs.org.br', '70976821087', null),
	(18211, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '82458740510'), 'Hellen Ferreira', '11974579611', 'hellen.ferreira@conceitoasaude.com.br', '82458740510', null),
	(18383, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '51056402920'), 'Isabel Cristina Silva', '41991316317', 'isabelcristina@uol.com.br', '51056402920', null),
	(18397, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '09587182880'), 'Ivania Maria Filippi Novo', '19995005944', 'inovo@sesisp.org.br', '09587182880', null),
	(17591, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31921547804'), 'Jessyca Cristina Leoni', '11992043440', 'jessyca.c.leoni@gmail.com', '31921547804', null),
	(17996, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '40733690831'), 'Jocimara Gomes de Assis', '1132666497', 'comunicacao@abqv.org.br', '40733690831', null),
	(18393, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17027462400'), 'Jose Bernardete de Souza', '11963913529', 'JBERNAR3@YAHOO.COM.BR', '17027462400', null),
	(20065, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02688496689'), 'Juliana Rocha Vasques', '11981596733', 'jurocvasques.enf@gmail.com', '02688496689', null),
	(18101, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '93550340753'), 'Karla Costa Kurtz', '21999715341', 'karlakurtz4572@gmail.com', '93550340753', null),
	(19725, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19699245867'), 'Katia Regina Modesto', '19981237944', 'katia.modesto@sesisp.org.br', '19699245867', null),
	(18616, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15088895895'), 'Kelim Valentini', '47999227544', 'valentini.kelim@gmail.com', '15088895895', null),
	(18012, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '03266493443'), 'Laudenice Rodrigues Bezerra', '83988951206', 'laudenicebezerra@fiepb.org.br', '03266493443', null),
	(18056, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '56273568120'), 'Lener Ayala Costa', '67999829423', 'lener.costa@tre-ms.jus.br', '56273568120', null),
	(18030, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28463759840'), 'Leonardo Araneda', '11975605644', 'matamala@me.com', '28463759840', null),
	(18176, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '48822566572'), 'Lídice Miranda', '71996099382', 'lidice@fieb.org.br', '48822566572', null),
	(19450, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11123568863'), 'Lorena Barreto', '19994404977', 'lorena@artponto.com.br', '11123568863', null),
	(18445, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '66658667187'), 'Luciana Mercês de Lucena', '61981738350', 'luciana.lucena@sesicni.com.br', '66658667187', null),
	(19305, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '80292739753'), 'Márcia Leitão da Cunha', '21991945232', 'marcialcunha@yahoo.com.br', '80292739753', null),
	(19945, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '68817223700'), 'Maria de Fátima da Silva Nunes', '22999620493', 'mfatimanunes05@gmail.com', '68817223700', null),
	(19927, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '33059730725'), 'Maria de Fátima Ribeiro Mendonca', '21996308031', 'mfrmendonca@petrobras.com.br', '33059730725', null),
	(19526, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '11294377876'), 'Maria Helena de Oliveira Miguel', '11987019609', 'mariahelenamiguel08@gmail.com', '11294377876', null),
	(18229, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '96614307053'), 'Mariane Bellaguarda Brusa da Costa Candaten', '51991412426', 'mariane.candaten@sesirs.org.br', '96614307053', null),
	(20040, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02750338301'), 'Marília Fernandes Campos de Azevedo', '98981958571', 'mfcdea@hotmail.com', '02750338301', null),
	(19295, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35396199768'), 'Marinez Rimoli', '21981194425', 'mzrimoli@gmail.com', '35396199768', null),
	(19943, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '78237467787'), 'Marli Beolchi de Arruda', '11992423579', 'mbeolchi@amil.com.br', '78237467787', null),
	(18389, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '26450113812'), 'Melina Cury Haddad', '1141979048', 'mhaddad@careplus.com.br', '26450113812', 381674),
	(18395, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12842958420'), 'Mônica Lourdes de Andrade Lima', '11994021197', 'monica.lourdes@yahoo.com.br', '12842958420', null),
	(18645, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05405088960'), 'Nicole Moreira', '4195006280', 'nicole.moreira@sistemafiep.org.br', '05405088960', null),
	(18087, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06196555855'), 'Patricia Lacombe', '19974016497', 'patricia@patricialacombe.com.br', '06196555855', null),
	(18418, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '79362800810'), 'Pedro Luiz Dragone', '19992378930', 'pedro.luiz.dragone@br.mahle.com', '79362800810', null),
	(18011, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05397410780'), 'Priscila Baltar', '21998479183', 'priscila_baltar@hotmail.com', '05397410780', null),
	(20075, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '31634040813'), 'Rafael Correa Piacenti', '11980610866', 'rafael@ergonomos.com.br', '31634040813', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Ergonomos Treinamento Profissional Ltda - Me')),
	(18432, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06761016827'), 'Rafael Raya Neto', '19984278000', 'rraya@sesisp.org.br', '06761016827', null),
	(18656, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '15033487841'), 'Regina Helena Benalia', '19981489939', 'regina@behaviorconsultoria.com.br', '15033487841', null),
	(18928, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06575908438'), 'Renata Lucena', '81997325542', 'rmsilva@bernhoeft.com.br', '06575908438', null),
	(19976, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '35673478100'), 'Roberto Antonio Monteiro de Almeida', '11981110720', 'robertoamalmeida@gmail.com', '35673478100', null),
	(19879, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '17819203897'), 'Rodrigo Pereira Masculino Silva', '11984440662', 'Rodrigovirtual75@gmail.com', '17819203897', null),
	(18539, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '02134002948'), 'Rogério Aparecido da Silva', '44999962280', 'rogerio.silva@sistemafiep.org.br', '02134002948', null),
	(18029, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '19526781880'), 'Ronaldo Abe', '11998355082', 'ronaldo.abe@br.ey.com', '19526781880', null),
	(18499, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12630326802'), 'Rosalina de Jesus Moura', '11992033209', 'rosalina@rumosaudavel.com.br', '12630326802', null),
	(19141, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '16238259892'), 'Rosana de Barros Marques', '13996056255', 'rosanabm.psi@gmail.com', '16238259892', null),
	(18026, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '12557362832'), 'Rosangela de Oliveira Santos Deroza', '11999520785', 'rosangela.deroza@althernativasaude.com.br', '12557362832', null),
	(18416, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07524396856'), 'Silvia Prado Sacche Salles', '11989905736', 'biasacche@yahoo.com.br', '07524396856', null),
	(18409, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '64245926015'), 'Simone Gorgen Zeca', '51999536141', 'simonegorgengorgen@gmail.com', '64245926015', null),
	(18659, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08446072823'), 'Solange Davino', '11984909085', 's.davino56@hotmail.com', '08446072823', null),
	(20028, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '89442385887'), 'Sonia Regina Silva Contro', '11993503110', 'soniareginasc21@gmail.com', '89442385887', null),
	(18460, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06368372621'), 'Tania Mara Machado Pessoa', '31984131437', 'tmachado@fiemg.com.br', '06368372621', null),
	(18054, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07433909702'), 'Tatiana Gaulia Ferreira', '21982441230', 'tatiana.ferreira@capesesp.com.br', '07433909702', null),
	(19889, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '07205407630'), 'Tatiane Lacerda', '61981564578', 'tatiane.lacoliver@gmail.com', '07205407630', null),
	(20026, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '05861471797'), 'Thaís Nunes Chicralla', '21969109967', 'tnchicralla@gmail.com', '05861471797', null),
	(19900, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '28549301850'), 'Thais Silveira Salata', '11991120298', 'thais.salata@grupofleury.com.br', '28549301850', (SELECT flo_id FROM flo_filiado WHERE flo_nome = 'Fleury S/a')),
	(18459, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '08754611660'), 'Vanessa Winter Nunes', '31996437136', 'vnunes@fiemg.com.br', '08754611660', null),
	(19527, 8, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '63362368700'), 'Vera Lúcia Capella Gaspar Nepomuceno', '21993021580', 'vera.capella@yahoo.com.br', '63362368700', null);

INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19949);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18151);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18134);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18673);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18425);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18110);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18177);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (17996);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18445);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19943);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18656);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18928);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19976);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (20028);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18460);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (18054);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19889);
INSERT INTO eva_evento_sindicato_presenca (eve_id) VALUE (19527);

UPDATE eve_evento_sindicato_participante SET eve_presenca_confirmada = 1 WHERE evo_id = 8;

COMMIT;