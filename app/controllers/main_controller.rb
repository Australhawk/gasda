class MainController < ApplicationController
	#Todas la paginas que necesitan que el usuario este registrado
	before_filter :authenticate
	before_filter :sidebar
	def index
		@messages = Message.all
    @eventos = Tournament.where(['start > ?', DateTime.now])
    @user_torneos = current_user.tournaments.all
  end
	def choose
	end
	def halloffame
	end
	def ticket
	end
	def sidebar
		@user_games = current_user.games.all
		@user_teams = current_user.teams.all
		@status = UserStatus.new
	end
	def bank
	end
	def feedback
	end
	def newgame
		@account = Account.new
		@user_accounts = current_user.accounts.all
	end
	def newteam
		@team = Team.new
		@user_teams = current_user.teams.all
	end
end
