require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

World(Helper)
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

@url = Capybara.app_host = "https://accounts.google.com/signup/v2/webcreateaccount?hl=pt-BR&flowName=GlifWebSignIn&flowEntry=SignUp"