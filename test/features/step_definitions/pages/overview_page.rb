class OverviewPage

  include Capybara::DSL

  def page_title
    find '.overview h1'
  end
  
end