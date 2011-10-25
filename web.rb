require 'sinatra'

require_relative 'helpers'
require_relative 'errors'

# to support legacy URLs
get '/*.php' do
  redirect request.path_info.chomp('.php'), 301
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/services' do
  erb :services
end

get '/fees_hours' do
  erb :fees_hours
end

get '/location' do
  erb :location
end

get '/contact' do
  erb :contact
end

get '/faq' do
  erb :faq
end

get '/resources' do
  erb :resources
end

get '/about_site' do
  erb :about_site
end

get '/privacy' do
  erb :privacy
end

get '/contact_web' do
  erb :contact_web
end
