USE VENDAS_SUCOS;

UPDATE PRODUTOS 
SET PRECO_LISTA = 5, 
EMBALAGEM = 'PET', 
TAMANHO = '1 Litro', 
DESCRITOR = 'Sabor da  Montanha - 1 Litro - Uva'
WHERE CODIGO = '1000889';

SELECT * FROM PRODUTOS;

UPDATE PRODUTOS
SET PRECO_LISTA = PRECO_LISTA * 1.10
WHERE SABOR = 'Marácuja';

SELECT * FROM PRODUTOS
WHERE SABOR = 'Marácuja';

UPDATE CLIENTES
SET ENDERECO = 'R. Jorge Emílio 23', 
BAIRRO = 'Santo Amaro',
CIDADE = 'São Paulo',
ESTADO = 'SP',
CEP = '8833223'
WHERE CPF = '19290992743';

SELECT * FROM CLIENTES;

SELECT * FROM
VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3);

UPDATE VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.FERIAS = B.DE_FERIAS;


SELECT * FROM CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO;

UPDATE CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.30;