class PurchasePage < SitePrism::Page

  element :buyButton, "#btn-buy"
  element :continuePurchaseButton, "#btn-continue"
  element :removeProductLink,  ".basket-productRemoveAct"


  def buy_product
    buyButton.click
    continuePurchaseButton.click
    assert_text("Meu carrinho")
  end

  def remove_product
    assert_text('Smart Tv Led 55" Philips 55pug6212/78 Uhd 4 Hdmi 2 Usb')
    removeProductLink.click
  end

  def confirm_empty_basket
    assert_text("Meu carrinho")
    assert_text("Sua cesta está vazia")
  end

end
