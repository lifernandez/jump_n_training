class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = @booking.build_review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = @booking.build_review(review_params)
    if @review.save
      redirect_to @booking, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
