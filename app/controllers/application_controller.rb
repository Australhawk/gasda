class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	def authenticate
		if !current_user
			redirect_to home_path
		end
	end
	before_action :set_locale
 	def default_url_options(options={})
	  logger.debug "default_url_options is passed options: #{options.inspect}\n"
	  { locale: I18n.locale }
	end
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end
	helper_method :current_user
end
