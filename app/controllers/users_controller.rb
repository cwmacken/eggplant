class UsersController < ApplicationController
	
	def new
	
	end
	def index
		@user = Userbin.current_user
	end

	def create

	
	end

	def edit
		@user = User.find(params[:id])
				
	end 

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(params[:user].permit(:username,:name))
			redirect_to '/account'
		else
			render 'edit'
		end
	end

	def destroy
		@user= User.find_by(params[:id])
		@user.destroy
		redirect_to '/'

	end 

end
