class LoginPage

  def initialize(page)
    @page = page
  end  
  
  def open
    @page.visit 'http://localhost:4567/login'
  end
  
  def page_title
    @page.find 'h1'
  end

  def email_field_name
    'email'
  end

  def password_field_name
    'password'
  end

  def email_field
    @page.find_field email_field_name
  end

  def password_field
    @page.find_field password_field_name
  end

  def login_button
    @page.find 'input.button'
  end

  def login(email, password)
    @page.fill_in email_field_name, :with => email
    @page.fill_in password_field_name, :with => password
    login_button.click
  end

end