class TrainersController < ApplicationController
  def index
    @trainers = Trainers.all
  end

  def show
    @booking = Booking.new
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    @trainer.user = current_user
    if @trainer.save
      redirect_to @trainer, notice: 'trainer was successfully created.'
    else
      render :new
    end
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    if @trainer.update(trainer_params)
      redirect_to trainer_path(@trainer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def trainer_params
    params.require(:user).permit( :description, :sports )
  end
end
