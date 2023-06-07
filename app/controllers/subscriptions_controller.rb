class SubscriptionsController < ApplicationController
    def index
      @subscriptions = current_user.subscriptions
    end

    def new
      @subscription = Subscription.new
      @club = Club.find(params[:club_id])
    end

    def create
      @subscription = Subscription.new(subscription_params)
      @club = Club.find(params[:club_id])
      @subscription.user = current_user
      @subscription.club = @club
      if @subscription.save
        redirect_to club_path(@club), notice: 'Subscription was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def show
      @subscription = Subscription.find(params[:id])
      @club = @subscription.club
      @club_reviews = @club.club_reviews
    end

    private

    def subscription_params
      params.require(:subscription).permit(:price)
    end

end
