USE sucos_vendas;

SELECT * FROM tabela_de_clientes;

SELECT cpf AS identificação, nome AS `nome do cliente` FROM tabela_de_clientes;

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Laranja';

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA < 7.00;

