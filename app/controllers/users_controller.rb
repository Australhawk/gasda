class UsersController < ApplicationController
	def create
		user = User.create(user_parameters)
		if user.save
			redirect_to home_path, :alert => I18n.t('users.Registered')
		else
			@user = user
			
			render 'pages/index', layout: 'home'
		end
	end
	def user_parameters
    	params.require(:user).permit(:email, :username, :birthday, :password, :email_confirmation, :password_confirmation, :terms);
	end
	def profile
	end	
	def index
		redirect_to home_path
	end

end
