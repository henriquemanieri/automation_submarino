class HomePage < SitePrism::Page

  set_url "https://www.submarino.com.br/"

  element :loginIcon, ".usr-icon"
  element :loginLink, "#h_usr-signin"
  element :logoLink, "a.logo-link"
  element :searchField, "#h_search-input"
  element :searchButton, "#h_search-btn"
  element :selectedProduct, "[data-reactid='128']"

  def access_login
    loginLink.click
  end

  def search_product
    searchField.set("televisao")
    searchButton.click
  end

  def choose_product
    page.execute_script "window.scrollTo(0,10)"
    selectedProduct.click
  end


end
