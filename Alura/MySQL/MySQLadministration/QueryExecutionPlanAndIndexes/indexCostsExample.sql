SELECT * FROM notas_fiscais WHERE DATA_VENDA = '20170101';

ALTER TABLE notas_fiscais ADD INDEX(DATA_VENDA);

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '20170101';