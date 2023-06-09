class ServicesController < ApplicationController
  def index
    @trainer = Trainer.find(params[:trainer_id])
    @services = @trainer.services
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @trainer = Trainer.find(params[:trainer_id])
    @service = Service.new
  end

  def create
    @trainer = Trainer.find(params[:trainer_id])
    @service = Service.new(service_params)
    @service.trainer = @trainer
    if @service.save!
      redirect_to trainer_services_path(@trainer), notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:trainer_id, :description, :service_type, :address, :sport, :price)
  end
end
