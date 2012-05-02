class HomeController < ApplicationController
 before_filter :check_for_login

 def index
    @rest = Koala::Facebook::API.new(@facebook_cookies["access_token"])
    @friends = @rest.fql_query("select uid, name, pic_square from user where uid in (select uid2 from friend where uid1 = me())")
    
  end




end
