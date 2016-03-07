require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require_relative '../../../app/example'

Capybara.app = Sinatra::Application


Capybara.register_driver :rack_test do |app|
  Capybara::RackTest::Driver.new(app, :headers => { 'HTTP_USER_AGENT' => 'Capybara' })
end

