USE SUCOS_VENDAS;

DROP FUNCTION IF EXISTS f_numero_aleatorio;
DELIMITER $$
CREATE FUNCTION f_numero_aleatorio (min INT, max INT)
RETURNS INTEGER
BEGIN
	DECLARE RANDOM_NUMBER INT;
    
    SET RANDOM_NUMBER = FLOOR(RAND() * (MAX - MIN + 1) + MIN);
    
RETURN RANDOM_NUMBER;
END$$
DELIMITER ;


CREATE TABLE IF NOT EXISTS TABELA_ALEATORIOS(NUMERO INT);

DROP PROCEDURE IF EXISTS Tabela_Numeros;
DELIMITER $$
CREATE PROCEDURE Tabela_Numeros(quantidade_maxima INT)
BEGIN
	DECLARE contador INT DEFAULT 0;
    
    DELETE FROM TABELA_ALEATORIOS;
    
    WHILE contador < quantidade_maxima DO
		INSERT INTO TABELA_ALEATORIOS (NUMERO)
		VALUE (f_numero_aleatorio (0,1000));
		SET CONTADOR = CONTADOR + 1;
    END WHILE;
	
    SELECT * FROM TABELA_ALEATORIOS;
END$$
DELIMITER ;

CALL Tabela_Numeros(100);

DROP FUNCTION IF EXISTS f_cliente_aleatorio;
DELIMITER $$
CREATE FUNCTION f_cliente_aleatorio()
RETURNS VARCHAR(11)
BEGIN
    DECLARE vRETORNO VARCHAR(11);
	DECLARE NUM_MAXIMO INT;
    DECLARE NUM_ALEATORIO INT;
    
    SELECT COUNT(*) INTO NUM_MAXIMO FROM tabela_de_clientes;
    SET NUM_ALEATORIO = f_numero_aleatorio(1,NUM_MAXIMO) - 1;
    SELECT CPF INTO vRETORNO FROM tabela_de_clientes LIMIT NUM_ALEATORIO,1;    
RETURN vRETORNO;
END$$
DELIMITER ;

SELECT f_cliente_aleatorio();

DROP FUNCTION IF EXISTS f_produto_aleatorio;
DELIMITER $$
CREATE FUNCTION f_produto_aleatorio()
RETURNS VARCHAR(10)
BEGIN
    DECLARE vRETORNO VARCHAR(10);
	DECLARE NUM_MAXIMO INT;
    DECLARE NUM_ALEATORIO INT;
    
    SELECT COUNT(*) INTO NUM_MAXIMO FROM tabela_de_produtos;
    SET NUM_ALEATORIO = f_numero_aleatorio(1,NUM_MAXIMO) - 1;
    SELECT CODIGO_DO_PRODUTO INTO vRETORNO FROM tabela_de_produtos LIMIT NUM_ALEATORIO,1;    
RETURN vRETORNO;
END$$
DELIMITER ;

SELECT f_produto_aleatorio();

DROP FUNCTION IF EXISTS f_vendedor_aleatorio;
DELIMITER $$
CREATE FUNCTION f_vendedor_aleatorio()
RETURNS VARCHAR(5)
BEGIN
    DECLARE vRETORNO VARCHAR(5);
	DECLARE NUM_MAXIMO INT;
    DECLARE NUM_ALEATORIO INT;
    
    SELECT COUNT(*) INTO NUM_MAXIMO FROM tabela_de_vendedores;
    SET NUM_ALEATORIO = f_numero_aleatorio(1,NUM_MAXIMO) - 1;
    SELECT MATRICULA INTO vRETORNO FROM tabela_de_vendedores LIMIT NUM_ALEATORIO,1;    
RETURN vRETORNO;
END$$
DELIMITER ;

SELECT f_vendedor_aleatorio();

DROP procedure IF EXISTS p_inserir_venda;
DELIMITER $$
CREATE PROCEDURE p_inserir_venda (vDATA_VENDA DATE, vMAX_ITENS INT, vMAX_QUANTIDADE INT)
BEGIN
	DECLARE vCLIENTE VARCHAR(11);
    DECLARE vVENDEDOR VARCHAR(5);
    DECLARE vPRODUTO VARCHAR(10);
    DECLARE vNUMERO_NOTA, vQUANTIDADE, vITENS, vNUM_ITENS_NOTA INT;
    DECLARE CONTADOR INT DEFAULT 0;
    DECLARE vPRECO FLOAT;
    DECLARE vIMPOSTO FLOAT DEFAULT 0.18;
    
    SELECT (MAX(NUMERO) + 1) INTO vNUMERO_NOTA FROM notas_fiscais;
    SET vCLIENTE = f_cliente_aleatorio();
    SET vVENDEDOR = f_vendedor_aleatorio();
    INSERT INTO notas_fiscais (CPF, MATRICULA, DATA_VENDA, NUMERO, IMPOSTO)
    VALUES (vCLIENTE, vVENDEDOR, vDATA_VENDA, vNUMERO_NOTA, vIMPOSTO);
    
    SET vITENS = f_numero_aleatorio(1,vMAX_ITENS);
    WHILE CONTADOR < vITENS DO
		SET vPRODUTO = f_produto_aleatorio();
        SELECT COUNT(*) INTO vNUM_ITENS_NOTA FROM itens_notas_fiscais
        WHERE NUMERO = vNUMERO_NOTA AND CODIGO_DO_PRODUTO = vPRODUTO;
        IF vNUM_ITENS_NOTA = 0 THEN
			SET vQUANTIDADE = f_numero_aleatorio(1, vMAX_QUANTIDADE);
			SELECT PRECO_DE_LISTA INTO vPRECO FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = vPRODUTO;
			INSERT INTO itens_notas_fiscais (NUMERO, CODIGO_DO_PRODUTO, QUANTIDADE, PRECO)
			VALUES (vNUMERO_NOTA, vPRODUTO, vQUANTIDADE, vPRECO);
        END IF;
        SET CONTADOR = CONTADOR + 1;
    END WHILE;
END$$
DELIMITER ;

CALL p_inserir_venda (CURDATE(),20,100);

SELECT A.NUMERO, COUNT(*) AS ITENS, SUM(B.QUANTIDADE * B.PRECO) AS FATURAMENTO
FROM notas_fiscais A INNER JOIN itens_notas_fiscais B ON A.NUMERO = B.NUMERO
WHERE A.DATA_VENDA = CURDATE()
GROUP BY A.NUMERO;
