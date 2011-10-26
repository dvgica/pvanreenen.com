require_relative '../test_helper'

class ErrorTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_it_should_serve_the_404_page
    get '/asdf'
    assert_equal 404, last_response.status
    assert last_response.body.include?('If you followed a broken link to get here')  
  end
  
end
