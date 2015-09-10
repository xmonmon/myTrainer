class UsersController < ApplicationController

  def new
    if !current_user
    @user = User.new  
    else
      redirect_to "/reviews/#{current_user[:id]}"
    end
  end

  def create
    if !current_user
      user = User.new(user_params)
      if user.photo == ""
        user.photo = "http://www.psdgraphics.com/file/male-silhouette.jpg"
      end
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Yay! Profile created!"
        redirect_to "/reviews/#{user[:id]}"
      else
        flash[:error] = user.errors.full_messages.join(", ")
        redirect_to signup_path
      end
    else
      redirect_to "/reviews/#{current_user[:id]}"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    if current_user && current_user[:id].to_s == params[:id]
      @user = User.find_by_id(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    if current_user && current_user[:id].to_s == params[:id]
      user = User.find_by_id(params[:id])
      user.update_attributes(user_params)
      redirect_to "/reviews/#{user[:id]}"
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user && current_user[:id].to_s == params[:id]
      user = User.find_by_id(params[:id])
      user.destroy
      redirect_to root_path
    else
      redirect_to "http://google.com/"
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
    end
end
