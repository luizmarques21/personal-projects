START TRANSACTION;

INSERT INTO eve_evento_sindicato_participante
	(eve_id, evo_id, flo_id, eve_presenca_confirmada, eve_nome, eve_participante_telefone, eve_participante_email, eve_cpf)
VALUES
	(75255, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '06882199345'), 1, 'Cecília Freitas de Almeida', '85998061297', 'freitasceci@hormail.com', '06882199345'),
	(75189, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '04577823748'), 1, 'Cristiano Cesana Cardoso', '27998363106', 'ccesana@yahoo.com.br', '04577823748'),
	(75188, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '24954959829'), 1, 'Joyce Cristine Silva Rocha', '11996278590', 'joycerocha@sabesp.com.br', '24954959829'),
	(75193, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '30626308844'), 1, 'Luciana V. T. Gomes', '11973222229', 'draluvendramel@gmail.com', '30626308844'),
    (75190, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '32149654415'), 1, 'Márcia Cersosimo de Lucena', '71999656067', 'marciaclucena@gmail.com', '32149654415'),
    (75127, 40, (SELECT flo_id FROM flo_filiado WHERE flo_cpf = '90079663168'), 1, 'Rosenir Cardoso Martins', '61981537489', 'rosenir.martins@sesicni.com.br', '90079663168');

COMMIT;