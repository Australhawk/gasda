class UsersController < ApplicationController
	def create
		user = User.create(user_parameters)
		if user.save
			redirect_to home_path, :alert => 'Registered'
		else
			@user = user
			flash.now.alert = "Fill all pls"

			render 'pages/index', layout: 'home'
		end
	end
	def user_parameters
    	params.require(:user).permit(:email, :username, :birthday, :password, :email_confirmation, :password_confirmation);
	end
	def profile
	end	

end
