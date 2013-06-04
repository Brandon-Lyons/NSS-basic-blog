ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'active_record'
require 'capybara/rails'

class ActiveSupport::TestCase

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
	include Capybara::DSL
	self.use_transactional_fixtures = false
end

Capybara.default_driver = :selenium