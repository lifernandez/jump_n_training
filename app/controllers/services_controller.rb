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
    raise
    @trainer = Trainer.find(params[:trainer_id])
    @service = Service.new(service_params)
    @service.service_type = params[:service_type]
    @service.trainer = @trainer
    if @service.save
      redirect_to trainer_path(@trainer), notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to trainer_path(@service.trainer), notice: 'Service was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to trainer_service_path, notice: 'Service was successfully destroyed.'
  end

  private

  def service_params
    params.require(:service).permit(:trainer_id, :description, :service_type, :address, :sport, :price, :title, :duration)
  end
end
