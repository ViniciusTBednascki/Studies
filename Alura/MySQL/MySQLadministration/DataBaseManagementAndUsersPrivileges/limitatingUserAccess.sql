CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE 
ON sucos_vendas.* TO 'user04'@'%';

CREATE USER 'user05'@'%' IDENTIFIED BY 'user05';

GRANT SELECT, INSERT, UPDATE, DELETE
ON sucos_vendas.tabela_de_clientes TO 'user05'@'%';

GRANT SELECT
ON sucos_vendas.tabela_de_produtos TO 'user05'@'%';