class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    @trainer.user = current_user
    if @trainer.save
      redirect_to @trainer, notice: 'Trainer was successfully created.'
    else
      render :new
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:sports, :description, :user_id)
  end
end
