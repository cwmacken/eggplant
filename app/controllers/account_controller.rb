class AccountController < ApplicationController
	def index
		@campaigns = Userbin.current_user.campaigns
		@user = Userbin.current_user
	end 
end