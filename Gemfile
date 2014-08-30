source 'https://rubygems.org'
ruby '2.1.2'

gem 'sinatra', '1.3.1'
gem 'pony', '1.3'
gem 'erubis', '2.7.0'

group :development do
  gem 'foreman', '0.60.2'
  gem 'heroku'
end

group :development, :production do
  gem 'thin', '1.2.11'
end

group :test do
  gem 'rack-test'
  gem 'pony-test', :git => "git://github.com/patrickxb/pony-test.git"
end

group :production do
  gem 'newrelic_rpm', '3.2.0'
end
