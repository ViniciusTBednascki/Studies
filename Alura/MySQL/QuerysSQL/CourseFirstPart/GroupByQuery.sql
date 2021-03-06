
SELECT * FROM tabela_de_clientes;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_Produtos GROUP BY EMBALAGEM;

SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes GROUP BY BAIRRO;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' GROUP BY BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
GROUP BY ESTADO, BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' GROUP BY ESTADO, BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
GROUP BY ESTADO, BAIRRO
ORDER BY BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
GROUP BY ESTADO, BAIRRO
ORDER BY ESTADO ASC, LIMITE DESC;

SELECT MAX(QUANTIDADE) FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035'; 

SELECT COUNT(*) AS VENDAS_DE_99 FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS TOTAL_VENDIDO, PRECO as PRECO_UNIDADE FROM itens_notas_fiscais
GROUP BY CODIGO_DO_PRODUTO
ORDER BY TOTAL_VENDIDO DESC
LIMIT 10;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS UNIDADES_VENDIDAS, PRECO AS PRECO_UNIDADE, QUANTIDADE * PRECO AS GANHO_TOTAL FROM itens_notas_fiscais
GROUP BY CODIGO_DO_PRODUTO
ORDER BY GANHO_TOTAL DESC
LIMIT 10;