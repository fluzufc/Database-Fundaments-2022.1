CREATE TABLE CLIENTES (
	id INT,
	nome VARCHAR(50),
	cpf CHAR(11),
	data_cadastro DATE,
	cidade VARCHAR(50),
	uf CHAR(2),
	PRIMARY KEY(id)
);

CREATE TABLE CATEGORIAS (
	id INT,
	nome VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE CLASSES (
	id INT,
	nome VARCHAR(20),
	preco DECIMAL(10,2),
	PRIMARY KEY(id)
);

CREATE TABLE DISTRIBUIDORES (
	id INT,
	nome VARCHAR(50),
	PRIMARY KEY(id)
);

CREATE TABLE FILMES (
	id INT,
	titulo VARCHAR(50),
	id_distribuidor INT,
	ano_lancamento INT,
	id_categoria INT,
	id_classe INT,
	PRIMARY KEY(id),
	FOREIGN KEY(id_distribuidor) REFERENCES DISTRIBUIDORES(id),
	FOREIGN KEY(id_categoria) REFERENCES CATEGORIAS(id),
	FOREIGN KEY(id_classe) REFERENCES CLASSES(id)
);

CREATE TABLE LOCACOES (
	id INT,
	id_cliente INT,
	id_filme INT,
	dt_locacao DATE,
	dt_devolucao_prevista DATE,
	dt_devolucao DATE,
	valor DECIMAL(10,2),
	PRIMARY KEY (id),
	FOREIGN KEY(id_cliente) REFERENCES CLIENTES(id),
	FOREIGN KEY(id_filme) REFERENCES FILMES(id)
);

INSERT INTO CLIENTES VALUES
(1, 'Fábio', '13549876254', '2022-04-22', 'Iguatu', 'CE'),
(2, 'José', '42685794632', '2022-04-22', 'Mombaça', 'CE'),
(3, 'Chico', '15479632548', '2022-04-22', 'Limoeiro do Norte', 'CE');

INSERT INTO CATEGORIAS VALUES
(1, 'Crime'),
(2, 'Guerra'),
(3, 'Thriller');

INSERT INTO CLASSES VALUES
(1, 'Bronze', 10.00),
(2, 'Prata', 20.00),
(3, 'Ouro', 30.00);

INSERT INTO DISTRIBUIDORES VALUES
(1, 'Orion Pictures'),
(2, 'New Line Cinema'),
(3, 'Universal Pictures');

INSERT INTO FILMES VALUES
(1, 'Silence of the Lambs', 1, 1991, 3, 3),
(2, 'Se7en - Os Sete Crimes Capitais', 2, 1995, 1, 1),
(3, '1917', 3, 2019, 2, 2);

INSERT INTO LOCACOES VALUES
(1, 1, 1, '2022-04-22', '2022-04-29', '2022-04-29', 30.00),
(2, 2, 2, '2022-04-22', '2022-04-29', '2022-04-29', 10.00),
(3, 3, 3, '2022-04-22', '2022-04-29', '2022-04-29', 20.00);