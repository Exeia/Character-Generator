ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def setup
      @user = users(:michael)
    
  end
  # Add more helper methods to be used by all tests here...
  def log_in_as(user, options = {})
      password = options[:password] || 'password'
      remember_me = options[:remember_me] || '1'
      if integration_test?
          post login_path, session: { handle: user.handle,
                                      password:  password,
                                      remember_me: remember_me }
      else
          session[:used_id] = user.id 
      end
  end

 private

 def integration_test?
     defined?(post_via_redirect)
     
 end

end
