class PagesController < ApplicationController
  def index
  	@user = User.new
  	if current_user
  		redirect_to main_path
  	end
  end
end
