class MainController < ApplicationController
	#Todas la paginas que necesitan que el usuario este registrado
	before_filter :authenticate
	before_filter :sidebar, :only => [:index,:newteam,:newgame]
	def index
		@messages = Message.all
    @eventos = Tournament.where(['start > ?', DateTime.now])
    @user_torneos = current_user.tournaments.all
    render layout: 'sidebar'
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
		if request.env['omniauth.auth'].present?
			@steamnumber = request.env['omniauth.auth']['uid']
		end
		@account = Account.new
		@user_accounts = current_user.accounts.all
		render layout: 'sidebar'
	end
	def newteam
		@team = Team.new
		@user_teams = current_user.teams.all
		render layout: 'sidebar'
	end
end
