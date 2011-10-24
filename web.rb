require 'sinatra'

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

helpers do
  def menu_item(text, href)
    if request.path_info == href
      "<li class=\"cur\">#{text}</li>"
    else
      "<li><a href=\"#{href}\">#{text}</a></li>"
    end
  end
end

# errors
not_found do
  erb :"404"
end

error do
  erb :"500"
end
