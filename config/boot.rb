# Defines our constants
PADRINO_ENV  = ENV["PADRINO_ENV"] ||= ENV["RACK_ENV"] ||= "development" unless defined?(PADRINO_ENV)
PADRINO_ROOT = File.dirname(__FILE__) + '/..' unless defined? PADRINO_ROOT

# At the moment we load it from lib
Dir[PADRINO_ROOT + "/vendor/padrino/**/lib"].each do |gem|
  $:.unshift gem
end

require 'padrino'

begin
  # Require the preresolved locked set of gems.
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  # Fallback on doing the resolve at runtime.
  require 'rubygems'
  gem 'bundler', '0.9.7'
  require 'bundler'
  Bundler.setup(:default, PADRINO_ENV)
end

Bundler.require(:default, PADRINO_ENV)
puts "=> Located #{Padrino.bundle} Gemfile for #{Padrino.env}"

Padrino.load!