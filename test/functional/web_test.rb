require_relative '../test_helper'

class WebTest < Test::Unit::TestCase
  include Rack::Test::Methods
  include Pony::TestHelpers

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

  def test_it_sends_email_and_redirects_on_contact_post
    post '/contact', { :email => 'example@example.com', :subject => 'stuff', :realname => 'John Smith', :question => 'Example' }
    follow_redirect!
    
    assert_equal "http://example.org/thank_you", last_request.url
    assert last_response.ok?
    assert_equal ['patricia@pvanreenen.com'], last_email_sent.to
    assert_equal 'stuff', last_email_sent.subject
  end
    
  def test_it_sends_email_and_redirects_on_contact_web_post
    post '/contact_web', { :email => 'example@example.com', :subject => 'website stuff', :realname => 'John Smith', :question => 'Example' }
    follow_redirect!
    
    assert_equal "http://example.org/thank_you", last_request.url
    assert last_response.ok?
    assert_equal ['webmaster@pvanreenen.com'], last_email_sent.to
    assert_equal 'website stuff', last_email_sent.subject
  end

end
