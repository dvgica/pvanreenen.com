# Bundler
require "bundler"
Bundler.require :default, ENV['RACK_ENV'].to_sym

set :views, 'app/views/'
configure(:test) { set :run, false }

# Load files
(Dir['./config/initializers/*.rb'].sort +
 Dir['./app/**/*.rb'].sort
).uniq.each { |rb| require rb }
