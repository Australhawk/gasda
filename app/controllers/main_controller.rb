class MainController < ApplicationController
	def index
		@account = Account.new
    @user_accounts = current_user.accounts.all
    @team = Team.new
    @user_teams = current_user.teams.all
	end
end
