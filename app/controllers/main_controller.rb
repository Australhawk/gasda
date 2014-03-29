class MainController < ApplicationController
	#Todas la paginas que necesitan que el usuario este registrado
	before_filter :authenticate
	def index
		@account = Account.new
    @user_accounts = current_user.accounts.all
    @team = Team.new
    @user_teams = current_user.teams.all
    @status = UserStatus.new
    @messages = Message.all
	end
end
