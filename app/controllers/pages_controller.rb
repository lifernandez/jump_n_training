class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :mybookings ]

  def home
  end

  def mybookings
    @trainer = current_user.trainer
    @bookings_session = []
    current_user.bookings.map do |booking|
      @bookings_session << booking if booking.service.service_type == 'Session'
    end

    @bookings_training = []
    current_user.bookings.map do |booking|
      @bookings_training << booking if booking.service.service_type == 'Training Plan'
    end
  end


  def mydashboard
    @bookings_session = current_user.trainer.services.select { |service| service.service_type == 'Session' }
    @bookings_training = current_user.trainer.services.select { |service| service.service_type == 'Training Plan' }
    @session_count = 0
    @bookings_session.each { |service| @session_count += service.bookings.count }
    @training_count = 0
    @bookings_training.each { |service| @training_count += service.bookings.count }
  end

end
