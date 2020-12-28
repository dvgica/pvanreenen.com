source 'https://rubygems.org'
ruby '2.6.6'

gem 'sinatra'
gem 'pony'
gem 'erubis'
gem 'httparty'

group :development, :production do
  gem 'thin'
end

group :test do
  gem 'test-unit'
  gem 'rack-test'
  gem 'pony-test', :git => "git://github.com/patrickxb/pony-test.git"
end

group :production do
  gem 'newrelic_rpm'
end
