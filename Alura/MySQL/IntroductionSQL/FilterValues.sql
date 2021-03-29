use sucos;

select * from tbcliente where idade <= 22;

select * from tbcliente where idade <> 22;

select * from tbcliente where nome > 'Fernando Cavalcante';

SELECT * FROM tbvendedor WHERE PERCENTUAL_COMISSAO > 0.10;

select * from tbcliente where DATA_NASCIMENTO < '1990-01-01';

select * from tbcliente where year(data_nascimento) = 1995;

select * from tbcliente where month(data_nascimento) = 09;

SELECT NOME, PERCENTUAL_COMISSAO FROM tbvendedor WHERE YEAR(DATA_ADMISSAO) >= 2016;

select * from tbcliente where idade >= 18 and idade <= 22;

select * from tbcliente where idade between 18 and 22;

select * from tbcliente where idade >= 18 and idade <= 22 and SEXO = 'M';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tbvendedor WHERE YEAR(DATA_ADMISSAO) < 2016 AND DE_FERIAS = 1;