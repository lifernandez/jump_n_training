class ServicesController < ApplicationController
  def index
    @services = Service.order(id: :asc)
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to @service, notice: 'service was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @service = Service.find(params[:id])

      # @markers = [{
      #     lat: @service.latitude,
      #     lng: @service.longitude
      #   }]
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to service_path, status: :see_other
  end

  private

  def service_params
    params.require(:service).permit(:user, :category, :address, :price, :description, :sport)
  end
end
