USE sucos_vendas;

CREATE TABLE IF NOT EXISTS TAB_FATURAMENTO (DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT);

DROP procedure IF EXISTS calculo_faturamento;
DELIMITER $$
CREATE PROCEDURE calculo_faturamento ()
BEGIN
	DELETE FROM TAB_FATURAMENTO;
	INSERT INTO TAB_FATURAMENTO
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) AS TOTAL_VENDA FROM
	NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
	ON A.NUMERO = B.NUMERO
	GROUP BY A.DATA_VENDA;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS TG_CALCULA_FATURAMENTO_INSERT;
DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_INSERT AFTER INSERT ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
  call calculo_faturamento ();
END//
DELIMITER ;

DROP TRIGGER IF EXISTS TG_CALCULA_FATURAMENTO_UPDATE;
DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_UPDATE AFTER UPDATE ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
  call calculo_faturamento ();
END//
DELIMITER ;

DROP TRIGGER IF EXISTS TG_CALCULA_FATURAMENTO_DELETE;
DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_DELETE AFTER DELETE ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
  call calculo_faturamento ();
END//
DELIMITER ;

CALL p_inserir_venda (CURDATE(),20,100);

SELECT * FROM TAB_FATURAMENTO WHERE DATA_VENDA = CURDATE();