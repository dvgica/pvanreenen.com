ENV['RACK_ENV'] = 'test'

require 'sinatra'
require_relative '../init'
require 'test/unit'
require 'rack/test'
