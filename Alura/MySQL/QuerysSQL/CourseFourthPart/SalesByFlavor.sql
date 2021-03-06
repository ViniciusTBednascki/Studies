
SELECT TP.SABOR, NF.DATA_VENDA, INF.QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO;

/* QUANTIDADE VENDIDA POR SABOR ANO 2016 */
SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;


/* QUANTIDADE VENDIDA POR SABOR ANO 2016 */

SELECT * FROM 
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN 
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO;

SELECT VENDA_SABOR.SABOR, VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE,
ROUND((VENDA_SABOR.QUANTIDADE/VENDA_TOTAL.QUANTIDADE) * 100, 2) AS PARTICIPACAO FROM 
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN 
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO
ORDER BY VENDA_SABOR.QUANTIDADE DESC;

SELECT VENDA_SABOR.ANO, VENDA_SABOR.SABOR, 
VENDA_SABOR.TOTAL_VENDIDO AS VENDAS_SABOR, 
ROUND((VENDA_SABOR.TOTAL_VENDIDO/VENDA_ANO.TOTAL_VENDIDO)*100,2) 
AS PERCENTUAL_DA_VENDA_ANUAL 
FROM(SELECT YEAR(NF.DATA_VENDA) AS ANO, 
TP.SABOR, SUM(INF.QUANTIDADE) AS TOTAL_VENDIDO 
FROM tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF
ON INF.NUMERO = NF.NUMERO
GROUP BY  YEAR(NF.DATA_VENDA), TP.SABOR) VENDA_SABOR
INNER JOIN
(SELECT YEAR(NF.DATA_VENDA) AS ANO, 
SUM(INF.QUANTIDADE) AS TOTAL_VENDIDO 
FROM itens_notas_fiscais INF
INNER JOIN notas_fiscais NF
ON INF.NUMERO = NF.NUMERO
GROUP BY YEAR(NF.DATA_VENDA)) VENDA_ANO
ON VENDA_SABOR.ANO = VENDA_ANO.ANO
ORDER BY VENDA_SABOR.ANO ASC, VENDA_SABOR.TOTAL_VENDIDO DESC;


SELECT VENDA_TAMANHO.ANO, VENDA_TAMANHO.TAMANHO, 
VENDA_TAMANHO.TOTAL_VENDIDO, 
ROUND((VENDA_TAMANHO.TOTAL_VENDIDO/VENDA_ANO.TOTAL_VENDIDO)*100,2) 
AS PERCENTUAL_DA_VENDA_ANUAL 
FROM(SELECT YEAR(NF.DATA_VENDA) AS ANO, 
TP.TAMANHO, SUM(INF.QUANTIDADE) AS TOTAL_VENDIDO 
FROM tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF
ON INF.NUMERO = NF.NUMERO
GROUP BY  YEAR(NF.DATA_VENDA), TP.TAMANHO) VENDA_TAMANHO
INNER JOIN
(SELECT YEAR(NF.DATA_VENDA) AS ANO, 
SUM(INF.QUANTIDADE) AS TOTAL_VENDIDO 
FROM itens_notas_fiscais INF
INNER JOIN notas_fiscais NF
ON INF.NUMERO = NF.NUMERO
GROUP BY YEAR(NF.DATA_VENDA)) VENDA_ANO
ON VENDA_TAMANHO.ANO = VENDA_ANO.ANO
ORDER BY VENDA_TAMANHO.ANO ASC, VENDA_TAMANHO.TOTAL_VENDIDO DESC;