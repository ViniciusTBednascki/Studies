
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN ('Tijuca','Jardins','Copacabana','Santo Amaro');

SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X 
WHERE X.PRECO_MAXIMO >= 10;

SELECT X.NOME, X.COMPRAS FROM
(SELECT NOME, COUNT(*) COMPRAS FROM notas_fiscais
INNER JOIN tabela_de_clientes
ON notas_fiscais.CPF = tabela_de_clientes.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY notas_fiscais.CPF) X
WHERE X.COMPRAS > 2000;