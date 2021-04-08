USE vendas_sucos;

START TRANSACTION;

INSERT INTO 
	PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES 
	('1040107','Light - 350 ml - Melancia', 'Melancia', '350 ml', 'Lata', 4.56),
    ('1040108','Light - 350 ml - Graviola', 'Graviola', '350 ml', 'Lata', 4.00),
    ('1040109','Light - 350 ml - Açai', 'Açai', '350 ml', 'Lata', 5.60),
    ('1040110','Light - 350 ml - Jaca', 'Jaca', '350 ml', 'Lata', 6.00),
    ('1040111','Light - 350 ml - Manga', 'Manga', '350 ml', 'Lata', 3.50);
    
SELECT * FROM PRODUTOS;

INSERT INTO 
	CLIENTES (CPF,NOME,ENDERECO,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA)
VALUES 
	('1471156710','Érica Carvalho','R. Iriquitia','Jardins','São Paulo','SP','80012212','19900901',27,'F',170000,24500,0),
	('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ','22000000','20000212',18,'M',100000,20000,1),
	('2600586709','César Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ','22020001','20000312',18,'M',120000,22000,0);
    
SELECT * FROM CLIENTES;


INSERT INTO PRODUTOS
SELECT CODIGO_DO_PRODUTO AS CODIGO,
NOME_DO_PRODUTO AS DESCRITOR,
SABOR, TAMANHO, EMBALAGEM,
PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN
(SELECT CODIGO FROM PRODUTOS);

INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO,
BAIRRO, CIDADE, ESTADO, CEP,
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO,
IDADE,SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO,
VOLUME_DE_COMPRA AS VOLUME_COMPRA,
PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes
WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);

INSERT INTO VENDEDORES
SELECT SUBSTRING(MATRICULA,3,3) AS MATRICULA,
NOME, BAIRRO, PERCENTUAL_COMISSAO AS COMISSAO,
DATA_ADMISSAO, DE_FERIAS AS FERIAS
FROM SUCOS_VENDAS.TABELA_DE_VENDEDORES;

SELECT * FROM VENDEDORES;

INSERT INTO NOTAS
SELECT NUMERO, DATA_VENDA AS `DATA`,
CPF, SUBSTRING(MATRICULA,3,3) AS MATRICULA, IMPOSTO
FROM SUCOS_VENDAS.NOTAS_FISCAIS
LIMIT 100;

SELECT * FROM NOTAS;

INSERT INTO ITENS_NOTAS
SELECT NUMERO, CODIGO_DO_PRODUTO AS CODIGO,
QUANTIDADE, PRECO
FROM sucos_vendas.ITENS_NOTAS_FISCAIS
limit 100;

SELECT * FROM ITENS_NOTAS;

ROLLBACK;

COMMIT;