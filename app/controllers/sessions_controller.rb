class SessionsController < ApplicationController
  def new
    if !current_user 
      render :new
    else 
      redirect_to "/users/#{current_user[:id]}"
    end
  end

  def create
    user = User.find_by_email(user_params[:email])
    trainer = Trainer.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user[:id]}"
    elsif trainer && trainer.authenticate(user_params[:password])
      session[:trainer_id] = trainer.id
      redirect_to "/trainers/#{trainer[:id]}"
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    session[:trainer_id] = nil
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
