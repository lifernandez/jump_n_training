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
      current_user.update(trainer: true)
      redirect_to trainer_path(trainer), notice: 'Congrats, Your are a trainer!.'
    else
      render :new
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:sports, :description, :user_id)
  end
end
