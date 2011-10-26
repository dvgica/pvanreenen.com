require_relative '../test_helper'

class LegacyTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_it_should_redirect_php_correctly
    get '/about.php'
    assert_equal 301, last_response.status
    follow_redirect!
    
    assert_equal "http://example.org/about", last_request.url
    assert last_response.ok?
  end

  def test_it_should_redirect_php_with_params_correctly
    get '/services.php', {'foo' => 'bar'}
    assert_equal 301, last_response.status

    follow_redirect!
    
    assert_equal "http://example.org/services", last_request.url
    assert last_response.ok?
  end
  
end
