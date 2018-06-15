#encoding: utf-8
#language: pt

@buy_product
Funcionalidade: Compra de produtos
	Eu como consumidor
	Quero logar no site do Submarino
	Para comprar produto

  Contexto: Acessar site do Submarino
	Dado que eu acesse o site do Submarino

	@buy_product_logged
  Cenario: Comprar produto logado
    Dado que eu logue com o usuario "test_email" no site do Submarino
    Quando eu pequisar um produto no site
    E selecionar um produto valido
    E adiciona-lo ao carrinho de compras
		Mas remover o produto do carrinho
    Entao devo ter o produto escolhido no meu carrinho

	@buy_product_no_user
	Cenario: Comprar produto sem logar
    Quando eu pesquisar um produto no site
    E selecionar um produto valido
    E adiciona-lo ao carrinho de compras
		Mas remover o produto do carrinho
    Entao devo ficar com o carrinho vazio
