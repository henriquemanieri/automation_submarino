Dado(/^que eu acesse o site do Submarino$/) do
  @home = HomePage.new
  @home.load
end

Dado(/^que eu logue com o usuario "([^"]*)" no site do Submarino$/) do |user|
  @login = LoginPage.new
  @home.access_login
  @login.username_fill($default_data['username'][user])
  @login.password_fill($default_data['password'][user])
  @login.login_enter

end

Quando(/^eu pesquisar um produto no site$/) do
  @home.search_product
end

Quando(/^selecionar um produto valido$/) do
  @home.choose_product
end

Quando(/^adiciona-lo ao carrinho de compras$/) do
  @purchase = PurchasePage.new
  @purchase.buy_product
end

Quando(/^remover o produto do carrinho$/) do
  @purchase.remove_product
end

Entao(/^devo ficar com o carrinho vazio$/) do
  @purchase.confirm_empty_basket
end
