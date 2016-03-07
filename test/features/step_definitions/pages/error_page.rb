class ErrorPage

  include Capybara::DSL

  def page_title
    find '.error h1'
  end
  
end