USE sucos;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

UPDATE tbvendedor SET PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';

UPDATE tbvendedor SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';

DELETE FROM tbvendedor WHERE MATRICULA = '00233';