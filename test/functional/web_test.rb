ENV['RACK_ENV'] = 'test'

require 'sinatra'
require_relative '../../init'
require 'test/unit'
require 'rack/test'

class WebTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
  
  def test_it_serves_the_home_page
    get '/'
    assert last_response.ok?
  end

  def test_it_serves_the_about_page
    get '/about'
    assert last_response.ok?
  end

  def test_it_serves_the_services_page
    get '/services'
    assert last_response.ok?
  end
  
  def test_it_serves_the_fees_hours_page
    get '/fees_hours'
    assert last_response.ok?
  end

  def test_it_serves_the_location_page
    get '/location'
    assert last_response.ok?
  end

  def test_it_serves_the_contact_page
    get '/contact'
    assert last_response.ok?
  end

  def test_it_serves_the_faq_page
    get '/faq'
    assert last_response.ok?
  end

  def test_it_serves_the_resources_page
    get '/resources'
    assert last_response.ok?
  end

  def test_it_serves_the_about_site_page
    get '/about_site'
    assert last_response.ok?
  end

  def test_it_serves_the_privacy_page
    get '/privacy'
    assert last_response.ok?
  end

  def test_it_serves_the_thank_you_page
    get '/thank_you'
    assert last_response.ok?
  end

  def test_it_serves_the_contact_web_page
    get '/contact_web'
    assert last_response.ok?
  end

  def test_it_gets_to_the_smtp_part_on_contact_post
    assert_raise Net::SMTPFatalError do
      post '/contact'
    end
  end
    
  def test_it_gets_to_the_smtp_part_on_contact_web_post
    assert_raise Net::SMTPFatalError do
      post '/contact_web'
    end
  end

end
