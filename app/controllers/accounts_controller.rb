class AccountsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:steam]
  def create
    if params[:account]
      @account = Account.create(account_parameters)
      @account.user = current_user
      @account.game = Game.find(2)
      if @account.save
        flash[:notice]= 'Saved'
      else
        flash[:notice]= @account.errors.empty? ? "Error" : @account.errors.full_messages.to_sentence 
      end
    end
    redirect_to newgame_path
  end
  def account_parameters
    params.require(:account).permit(:game_id, :server_id, :extra, :username, :account_number);
  end
  def steam
    @account = Account.new
    @account.user = current_user
    @account.game = Game.find(1)
    @account.account_number = request.env['omniauth.auth']['uid']
    @account.username = request.env['omniauth.auth']['info']['nickname']
    @account.server = Server.where(name: "Steam").first
    if @account.account_number.present? && @account.save
      flash[:notice]= 'Saved'
      @account.verify
    else
      flash[:notice]= @account.errors.empty? ? "Error" : @account.errors.full_messages.to_sentence 
    end
    redirect_to newgame_path
  end
  def lol
    reponse = HTTParty.get("https://prod.api.pvp.net/api/")
  end
end
