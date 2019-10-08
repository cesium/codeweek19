require 'rspec'
require 'capybara/rspec'
require 'rack/jekyll'
require 'rack/test'
require 'pry'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Configure Capybara to load the website through rack-jekyll.
  # (force_build: true) builds the site before the tests are run,
  # so our tests are always running against the latest version
  # of our jekyll site.
  Capybara.app = Rack::Jekyll.new(force_build: true)

  Capybara.server = :webrick

  Capybara.register_driver :firefox_headless do |app|
    options = Selenium::WebDriver::Firefox::Options.new
    options.args << '--headless'

    Capybara::Selenium::Driver.new(
      app,
      browser: :firefox,
      options: options
    )
  end

  Capybara.javascript_driver = :firefox_headless
end
