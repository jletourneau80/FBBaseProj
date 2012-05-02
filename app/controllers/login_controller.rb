class LoginController < ApplicationController

	def index
		if @facebook_cookies
			redirect_to :controller=> 'home', :action => 'index' 
		end
	end
end
