class TrainersController < ApplicationController

  def index 
    @trainers = trainer.all
    render :index
  end

  def new
    @trainer = trainer.new
    render :new
  end

  def create
    trainer = current_user.trainers.new(trainer_params)
    if trainer.save
      redirect_to trainer_path(trainer)
    else
      redirect_to root_path
    end
  end

  def show
    @trainer = trainer.find(params[:id])
    render :show
  end

  def edit
    @trainer = trainer.find(params[:id])
    render :edit
  end

  def update
    trainer = trainer.find(params[:id])
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
    params.require(:trainer).permit(:name, :about, :created_at, :avatar)
  en
end
