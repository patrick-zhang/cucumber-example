class LoginPage

  include Capybara::DSL

  def open
    visit 'http://localhost:4567/login'
  end
  
  def page_title
    find '.login h1'
  end

  def login_button
    find 'input.button'
  end

  def email_field
    find_field 'email'
  end

  def password_field
    find_field 'password'
  end

  def login(email, password)
    fill_in 'email', :with => email
    fill_in 'password', :with => password
    login_button.click
  end

end