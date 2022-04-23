CREATE TABLE EDITORAS (
    id INT,
    nome VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE AUTORES (
    id INT,
    nome VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE LIVROS (
    isbn CHAR(13),
    titulo VARCHAR(50),
    ano_publicacao INT,
    qtd_estoque INT,
    valor DECIMAL(10,2),
    id_editora INT,
    PRIMARY KEY(isbn),
    FOREIGN KEY(id_editora) REFERENCES EDITORAS(id)
);

CREATE TABLE LIVROS_AUTORES (
    isbn CHAR(13),
    id_autor INT,
    PRIMARY KEY(isbn, id_autor),
    FOREIGN KEY(isbn) REFERENCES LIVROS(isbn),
    FOREIGN KEY(id_autor) REFERENCES AUTORES(id)
);

INSERT INTO EDITORAS VALUES
(1, 'Ática'),(2, 'FTD'),(3, 'Melhoramentos'),(4, 'Novatec'),(5, 'Bookman');

INSERT INTO AUTORES VALUES    
(1, 'João'),(2, 'Maria'),(3, 'José'),(4, 'Lúcia'),(5, 'Carlos'),(6, 'Pedro'),(7, 'Ana');

INSERT INTO LIVROS VALUES
('213', 'Banco de Dados', 2011, 2, 50.00, 4),('425', 'Sistemas Operacionais', 2010, 3, 80.00, 3),
('732', 'Lógica de Programação', 2009, 1, 60.00, 2),('441', 'Programação Orientada a Objetos', 2012, 1, 70.00, 1),
('659', 'Java para Nerds', 2010, 3, 90.00, NULL),('863', 'Engenharia de Software', 2010, 2, 40.00, 2),
('376', 'Redes de Computadores', 2008, 1, 100.00, 3);

INSERT INTO LIVROS_AUTORES VALUES
('732', 1),('425', 3),('659', 4),('441', 2),('659', 1),('425', 5),('213', 3);