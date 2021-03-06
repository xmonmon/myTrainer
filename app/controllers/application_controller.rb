class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def current_trainer
		@current_trainer ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
	end

	def authorize
		unless current_user
			redirect_to login_path
		end
	end

	helper_method :current_user, :current_trainer

end
