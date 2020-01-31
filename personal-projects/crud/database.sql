use trainee_luiz;

CREATE TABLE ema_empresa (
	ema_id INT NOT NULL AUTO_INCREMENT,
	ema_nome VARCHAR(255),
	ema_email VARCHAR(255),
	ema_cnpj VARCHAR(255),
	ema_cep VARCHAR(255),
	ema_estado VARCHAR(255),
	ema_cidade VARCHAR(255),
	ema_bairro VARCHAR(255),
	ema_logradouro VARCHAR(255),
	ema_telefone VARCHAR(255),
	PRIMARY KEY(ema_id)
);

INSERT INTO ema_empresa (ema_nome, ema_email, ema_cnpj, ema_cep, ema_estado, ema_cidade,
                            ema_bairro, ema_logradouro, ema_telefone)
VALUES ('The Beatles', 'beatles@mail.com', '11.111.111/1111-11','11111-111', 'Merseyside', 'Liverpool',
		'Strawberry Fields', 'Penny Lane', '1111-1111');

INSERT INTO ema_empresa (ema_nome, ema_email, ema_cnpj, ema_cep, ema_estado, ema_cidade,
                            ema_bairro, ema_logradouro, ema_telefone)
VALUES ('Pink Floyd', 'pink-floyd@mail.com', '22.222.222/2222-22','22222-222', 'Londres', 'Westminster',
		'Hyde Park', 'Downing St.', '2222-2222');

INSERT INTO ema_empresa (ema_nome, ema_email, ema_cnpj, ema_cep, ema_estado, ema_cidade,
                            ema_bairro, ema_logradouro, ema_telefone)
VALUES ('Foo Fighters', 'foo_fighters@mail.com', '33.333.333/3333-33','33333-333', 'Washington', 'Seatle',
		'First Hill', 'Madison St.', '3333-333');

INSERT INTO ema_empresa (ema_nome, ema_email, ema_cnpj, ema_cep, ema_estado, ema_cidade,
                            ema_bairro, ema_logradouro, ema_telefone)
VALUES ('Ave Sangria', 'avesangria@mail.com', '44.444.444/4444-44','44444-444', 'Pernambuco', 'Recife',
		'Afogados', 'Rua São Miguel', '4444-4444');