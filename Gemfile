source 'https://rubygems.org'
ruby '2.1.2'

gem 'sinatra'
gem 'pony'
gem 'erubis'

group :development do
  gem 'foreman'
  gem 'heroku'
end

group :development, :production do
  gem 'thin'
end

group :test do
  gem 'rack-test'
  gem 'pony-test', :git => "git://github.com/patrickxb/pony-test.git"
end

group :production do
  gem 'newrelic_rpm'
end
