class PagesController < ApplicationController
	#Todas la paginas que no necesitan que el usuario este registrado
	before_filter :hide_header
	before_filter :hide_footer, only: [:landing]
  def index
  	@user = User.new
  	if current_user
  		redirect_to main_path
  	end
  end
  protected
  def hide_header
    @hide_header = true
  end
  def hide_footer
    @hide_footer = true
  end
end
