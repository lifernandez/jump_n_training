class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :mybookings ]

  def home
  end

  def mybookings
  end


end
