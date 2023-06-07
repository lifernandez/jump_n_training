class ClubReviewsController < ApplicationController
    def new
      @subscription = Subscription.find(params[:subscription_id])
      @club_review = ClubReview.new
      # Add any necessary code to retrieve the associated subscription(s) for the review form
    end

    def create
      @subscription = Subscription.find(params[:subscription_id])
      @club_review = ClubReview.new(club_review_params)
      @club_review.subscription = @subscription
      if @club_review.save
        redirect_to club_path(@subscription.club), notice: "Review created successfully."
      else
        # Add any necessary code for failed review creation, e.g., rendering the form again with error messages
        render :new
      end
    end

    private

    def club_review_params
      params.require(:club_review).permit(:rating, :comment, :subscription_id)
    end
  end
