class SessionsController < ApplicationController
	def create
		user = User.find_by_username(params[:user][:username])
		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect_to main_path, :alert => 'Logged in!'
		else
			redirect_to home_path, :alert => 'Invalid email or password'
		end
	end
	def destroy
		if current_user
			session.destroy
			redirect_to home_path, :alert => 'Logged out!'
		end
	end

end
