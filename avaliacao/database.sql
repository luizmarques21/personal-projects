CREATE TABLE ems_empresa (
	ems_id INT NOT NULL AUTO_INCREMENT,
	ems_nome VARCHAR(255),
	PRIMARY KEY(ems_id)
);

CREATE TABLE cro_cargo (
	cro_id INT NOT NULL AUTO_INCREMENT,
	cro_nome VARCHAR(255),
	PRIMARY KEY(cro_id)
);

CREATE TABLE sto_situacao (
	sto_id INT NOT NULL AUTO_INCREMENT,
	sto_nome VARCHAR(255),
	PRIMARY KEY(sto_id)
);

CREATE TABLE usi_usuario (
	usi_id INT NOT NULL AUTO_INCREMENT,
	usi_login VARCHAR(255),
	usi_senha VARCHAR(255),
	usi_tipo_usuario VARCHAR(255),
	PRIMARY KEY(usi_id)
);

CREATE TABLE flo_filiado (
	flo_id INT NOT NULL AUTO_INCREMENT,
	flo_nome VARCHAR(255),
	flo_cpf VARCHAR(255),
	flo_rg VARCHAR(255),
	flo_data_nascimento DATE,
	ems_id INT,
	cro_id INT,
	sto_id INT,
	flo_data_atualizacao DATE,
	flo_residencial VARCHAR(255),
	flo_celular VARCHAR(255),
	PRIMARY KEY(flo_id)
);

CREATE TABLE dpe_dependente (
	dpe_id INT NOT NULL AUTO_INCREMENT,
	dpe_nome VARCHAR(255),
	dpe_data_nascimento DATE,
	dpe_grau_parentesco VARCHAR(255),
	flo_id INT,
	PRIMARY KEY(dpe_id)
);

ALTER TABLE flo_filiado ADD CONSTRAINT fk_filiado_cargo FOREIGN KEY (cro_id) REFERENCES cro_cargo(cro_id);
ALTER TABLE flo_filiado ADD CONSTRAINT fk_filiado_empresa FOREIGN KEY (ems_id) REFERENCES ems_empresa(ems_id);
ALTER TABLE flo_filiado ADD CONSTRAINT fk_filiado_situacao FOREIGN KEY (sto_id) REFERENCES sto_situacao(sto_id);

ALTER TABLE dpe_dependente ADD CONSTRAINT fk_dependente_filiado FOREIGN KEY (flo_id) REFERENCES flo_filiado(flo_id);


INSERT INTO usi_usuario (usi_login, usi_senha, usi_tipo_usuario) 
VALUES ('admin', '$2y$10$Bye97ZNOjN4szwH4EDJ1AeH3zFR4ZWMo0wPxTVmlnbV2dtyUd/vKu', 'Administrador');

INSERT INTO ems_empresa (ems_nome) VALUES ('Flamengo');
INSERT INTO ems_empresa (ems_nome) VALUES ('Vasco');
INSERT INTO ems_empresa (ems_nome) VALUES ('Botafogo');
INSERT INTO ems_empresa (ems_nome) VALUES ('Fluminense');

INSERT INTO cro_cargo (cro_nome) VALUES ('Gerente');
INSERT INTO cro_cargo (cro_nome) VALUES ('Analista');
INSERT INTO cro_cargo (cro_nome) VALUES ('Auxiliar');

INSERT INTO sto_situacao (sto_nome) VALUES ('Ativo');
INSERT INTO sto_situacao (sto_nome) VALUES ('Aposentado');
INSERT INTO sto_situacao (sto_nome) VALUES ('Afastado');

INSERT INTO flo_filiado (flo_nome, flo_cpf, flo_rg, flo_data_nascimento, ems_id, cro_id, sto_id, flo_data_atualizacao, flo_residencial, flo_celular)
VALUES ('Jose Silva', '123.456.789-10', '14736925', '1970-05-26', 1, 2, 3, '2020-01-31', '3223-4793', '99163-4587');
INSERT INTO flo_filiado (flo_nome, flo_cpf, flo_rg, flo_data_nascimento, ems_id, cro_id, sto_id, flo_data_atualizacao, flo_residencial, flo_celular)
VALUES ('Joao Santos', '147.258.369-19', '79461328', '1964-03-17', 2, 2, 2, '2020-01-31', '3028-4345', '99498-1346');
INSERT INTO flo_filiado (flo_nome, flo_cpf, flo_rg, flo_data_nascimento, ems_id, cro_id, sto_id, flo_data_atualizacao, flo_residencial, flo_celular)
VALUES ('Maria Conceição', '963.852.741-46', '25361479', '1985-07-04', 3, 1, 1, '2020-01-31', '3105-1739', '98103-5856');

INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Ana Julia Silva', '1969-04-18', 'Esposa', 1);
INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Marcos Silva', '1991-09-11', 'Filho', 1);
INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Severina Silva', '1949-05-01', 'Mãe', 1);
INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Maria Santos', '1969-04-18', 'Esposa', 2);
INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Carlos da Conceição', '1983-11-21', 'Esposo', 3);
INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
VALUES ('Lucas Conceição', '2007-02-14', 'Filho', 3);