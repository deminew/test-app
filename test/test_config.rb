RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.dirname(__FILE__) + "/../config/boot"
Bundler.require_env(:testing)

class Bacon::Context
  include Mocha::API
  include Rack::Test::Methods
end

def app
  Blog.tap { |app| app.set :environment, :test }
end