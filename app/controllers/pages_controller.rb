class PagesController < ApplicationController
	#Todas la paginas que no necesitan que el usuario este registrado
  def index
  	@user = User.new
  	if current_user
  		redirect_to main_path
  	end
  end
end
