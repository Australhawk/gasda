class PagesController < ApplicationController
	#Todas la paginas que no necesitan que el usuario este registrado
	
  def index
  	@user = User.new
  	if current_user
  		redirect_to main_path
  	else
      render layout: "home"
    end
  end
  def landing
    render layout: "land"
  end
end
