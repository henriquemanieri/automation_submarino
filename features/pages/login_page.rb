class LoginPage < SitePrism::Page

  element :usernameField, "#email-input"
  element :passwordField, "#password-input"
  element :loginButton,  "#login-button"


  def username_fill(user)
    usernameField.click
    usernameField.set(user)
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    loginButton.click
  end


end
