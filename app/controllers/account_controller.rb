class AccountController < ApplicationController
	def index
		@user = Userbin.current_user
	end 
end