class TrainersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      sql_query = "sports ILIKE :query"
      # sql_query = "sports ILIKE :query OR synopsis ILIKE :query"
      @trainers = Trainer.search_by_sports_and_address_and_description(params[:query])
    else
      @trainers = Trainer.all
    end
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
      current_user.update(istrainer: true)
      redirect_to trainer_path(@trainer), notice: 'Congrats, Your are a trainer!.'
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
    params.require(:trainer).permit(:sports, :description, :user_id)
  end


end
