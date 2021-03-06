USE SEUCOS_VENDAS;

DROP PROCEDURE IF EXISTS Comparativo_Vendas_case;
DELIMITER $$
CREATE PROCEDURE Comparativo_Vendas_case(vPRIMEIRA_DATA DATE, vSEGUNDA_DATA DATE)
BEGIN
	DECLARE vVENDAS_PRIMEIRA_DATA, vVENDAS_SEGUNDA_DATA DECIMAL(10,2);
    DECLARE vCOMPARACAO DECIMAL(3,2);
    DECLARE vSITUACAO_VENDAS VARCHAR(8);
    
    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO vVENDAS_PRIMEIRA_DATA FROM
    notas_fiscais A INNER JOIN itens_notas_fiscais B
    ON A.NUMERO = B.NUMERO 
    WHERE A.DATA_VENDA = vPRIMEIRA_DATA;
    
    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO vVENDAS_SEGUNDA_DATA FROM
    notas_fiscais A INNER JOIN itens_notas_fiscais B
    ON A.NUMERO = B.NUMERO 
    WHERE A.DATA_VENDA = vSEGUNDA_DATA;
    
    SET vCOMPARACAO = (vVENDAS_SEGUNDA_DATA/vVENDAS_PRIMEIRA_DATA) - 1;
    
    CASE
    WHEN vCOMPARACAO > 0.10 THEN SET vSITUACAO_VENDAS = 'Verde';
	WHEN vCOMPARACAO > -0.10 AND vCOMPARACAO <= 0.10 THEN SET vSITUACAO_VENDAS = 'Amarela';
	WHEN vCOMPARACAO <= -0.10 THEN SET vSITUACAO_VENDAS = 'Vermelha';
    end CASE;
    
    select vVENDAS_PRIMEIRA_DATA AS PRIMEIRA_DATA,vVENDAS_SEGUNDA_DATA AS SEGUNDA_DATA, vSITUACAO_VENDAS AS SITUACAO;
END$$

CALL Comparativo_Vendas_case('20170101','20180101');


DROP PROCEDURE IF EXISTS Soma_Dias_Notas;
DELIMITER $$
CREATE PROCEDURE Soma_Dias_Notas(vDATA_INICIAL DATE, vDATA_FINAL DATE)
BEGIN
	DECLARE vDATA_CONTADOR DATE;
    SET vDATA_CONTADOR = vDATA_INICIAL;
    
    WHILE vDATA_CONTADOR <= vDATA_FINAL DO
		SELECT DATA_VENDA, COUNT(*) AS NUM_NOTAS FROM
        notas_fiscais A INNER JOIN itens_notas_fiscais B
        ON A.NUMERO = B.NUMERO
        WHERE A.DATA_VENDA = vDATA_CONTADOR
        GROUP BY DATA_VENDA;
        
        SELECT ADDDATE(vDATA_CONTADOR, INTERVAL 1 DAY) INTO vDATA_CONTADOR;
	END WHILE;
END$$

CALL Soma_Dias_Notas('20170101','20170110');