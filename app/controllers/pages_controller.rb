class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :mybookings ]

  def home
  end

  def mybookings
    @bookings_session = []
    current_user.bookings.map do |booking|
      @bookings_session << booking if booking.service.service_type == 'Session'
    end

    @bookings_training = []
    current_user.bookings.map do |booking|
      @bookings_training << booking if booking.service.service_type == 'Training Plan'
    end
  end


end
