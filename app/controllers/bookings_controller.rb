class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @trainer = Trainer.find(params[:trainer_id])
    @service = Service.find(params[:service_id])
    @booking = Booking.new
  end

  def create
    @trainer = Trainer.find(params[:trainer_id])
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save!
      redirect_to trainer_service_bookings_path , notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:service_id, :user_id, :status, :start_time, :end_time)
  end
end
