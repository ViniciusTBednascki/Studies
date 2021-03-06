USE SUCOS_VENDAS;

DROP PROCEDURE IF EXISTS CONCATENAR;

DELIMITER $$
USE SUCOS_VENDAS $$
CREATE PROCEDURE CONCATENAR ()
BEGIN
	SELECT CONCAT('TESTANDO','A ',' PROCEDURE') AS RESULTADO;
END$$
DELIMITER ;

CALL CONCATENAR();


DROP PROCEDURE IF EXISTS TESTE;

DELIMITER $$
USE SUCOS_VENDAS $$
CREATE PROCEDURE TESTE ()
BEGIN
	DECLARE INTEIRO INT(2) DEFAULT 12345;
	SELECT INTEIRO AS RESULTADO;
END$$
DELIMITER ;

CALL TESTE();

DROP PROCEDURE IF EXISTS sp_Exerc01;

DELIMITER $$
USE SUCOS_VENDAS $$
CREATE PROCEDURE sp_Exerc01()
BEGIN
	DECLARE CLIENTE VARCHAR(10);
    DECLARE IDADE SMALLINT;
    DECLARE DATA_NASCIMENTO DATE;
    DECLARE CUSTO FLOAT;
    
    SET CLIENTE = 'João';
    SET IDADE = 10;
    SET DATA_NASCIMENTO = '2007-10-01';
    SET CUSTO = 10.23;
    
	SELECT CLIENTE, IDADE, DATA_NASCIMENTO, CUSTO;
END$$
DELIMITER ;

CALL sp_Exerc01();