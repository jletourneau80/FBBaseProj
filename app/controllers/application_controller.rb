require 'koala'
require 'pry'

class ApplicationController < ActionController::Base
  protect_from_forgery
 before_filter :parse_facebook_cookies

def parse_facebook_cookies
  
  @facebook_cookies ||= Koala::Facebook::OAuth.new.get_user_info_from_cookie(cookies)

  
  
  # If you've setup a configuration file as shown above then you can just do
  # @facebook_cookies ||= Koala::Facebook::OAuth.new.get_user_info_from_cookie(cookies)
end

def check_for_login
if @facebook_cookies.nil?
  	redirect_to :controller=> 'login', :action => 'index' 
  end
end

end
