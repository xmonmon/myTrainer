class TrainersController < ApplicationController

  def index 
    @trainers = trainer.all
    render :index
  end

  def new
    @trainer = Trainer.new
    render :new
  end

  def create
    if !current_trainer
      trainer = Trainer.new(trainer_params)
      if trainer.photo == ""
        trainer.photo = "http://www.psdgraphics.com/file/male-silhouette.jpg"
      end
      if trainer.save
        session[:trainer_id] = trainer.id
        flash[:notice] = "Yay! Profile created!"
        redirect_to show_trainer_path(trainer)
      else
        flash[:error] = trainer.errors.full_messages.join(", ")
        redirect_to root_path
      end
    else
      redirect_to show_trainer_path(current_trainer)
    end
  end

  def show
    @trainer = Trainer.find(params[:id])
    render :show
  end

  def edit
    @trainer = Trainer.find(params[:id])
    render :edit
  end

  def update
    trainer = Trainer.find(params[:id])
    if current_user.trainers.include? trainer
        trainer.update_attributes(trainer_params)
        redirect_to trainer_path(trainer)
    else
      redirect_to signup_path
    end
  end

  def destroy
    trainer = trainer.find(params[:id])
    if current_user.trainers.include? trainer
      trainer.destroy
      redirect_to profile_path(current_user)
    else
      redirect_to login_path
    end
  end

  private 
  def trainer_params 
    params.require(:trainer).permit(:first_name, :last_name, :username, :email, :password, :avatar)
  end
end
