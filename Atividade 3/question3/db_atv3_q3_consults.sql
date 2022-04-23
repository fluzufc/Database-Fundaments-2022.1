-- 3a.
SELECT *
FROM FUNCIONARIO
WHERE Endereco LIKE '%São Paulo, SP';

--3b.
SELECT Dnome, (Pnome || ' ' || Minicial || ' ' || Unome), Projnome
FROM FUNCIONARIO, DEPARTAMENTO, PROJETO
ORDER BY Dnome, Minicial, Pnome;

--3c.
SELECT (Pnome || ' ' || Minicial || ' ' || Unome)
FROM FUNCIONARIO, TRABALHA_EM
WHERE Dnr = 5 AND (Horas > 10.0 AND Pnr = 1 AND Fcpf = Cpf);

--3d.
SELECT Pnome
FROM FUNCIONARIO, DEPENDENTE
WHERE Pnome = Nome_dependente;

--3e. Incompleta
SELECT Pnome
FROM FUNCIONARIO
WHERE Cpf_supervisor = Cpf Pnome = 'Fernando';

--3f.
SELECT Pnome
FROM FUNCIONARIO
WHERE Cpf_supervisor IS NULL;

--3g. Incompleta
SELECT Fcpf
FROM TRABALHA_EM
WHERE Fcpf = ;
