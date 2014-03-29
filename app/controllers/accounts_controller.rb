class AccountsController < ApplicationController
  def create
    if params[:account]
      @account = Account.create(account_parameters)
      @account.user = current_user
      if @account.save
        flash[:notice]= 'Saved'
      else
        flash[:notice]= 'Error '
      end
    end
    redirect_to main_path
  end
  def account_parameters
    params.require(:account).permit(:game_id, :server_id, :extra, :username, :account_number);
  end
end
