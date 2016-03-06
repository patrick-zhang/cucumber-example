Given(/^I open login page$/) do
  #Capybara.current_driver = :selenium
  login_page.open
end

Given(/^I login with correct email and password$/) do
  login_page.login('admin', '123')
end


Then(/^I should be on overview page$/) do
  expect(find('h1').text).to eq 'Overview'
end


Then(/^I should be see login page title$/) do
  expect(login_page.page_title.text).to eq 'login'
end

Then(/^I should see email field$/) do
  expect(login_page.email_field.visible?).to be
end

Then(/^I should see password field$/) do
  expect(login_page.password_field.visible?).to be
end

Then(/^I should see login button$/) do
  expect(login_page.login_button.visible?).to be
end
