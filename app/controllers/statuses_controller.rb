class StatusesController < ApplicationController
	def create
    if params[:user_status]
      @status = UserStatus.create(status_parameters)
      @status.user = current_user
      if @status.save
        flash[:notice]= 'Saved'
      else
        flash[:notice]= 'Error '
      end
    end
    redirect_to main_path
  end
  def status_parameters
    params.require(:user_status).permit(:status);
  end
end
