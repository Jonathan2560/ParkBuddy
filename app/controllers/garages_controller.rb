class GaragesController < ApplicationController
  before_action :set_garage, only: [:show, :destroy]

  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.new
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)
    if @garage.save
      redirect_to garage_path(@garage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @garage.destroy
    redirect_to root_path
  end

  private

  def set_garage
    @garage = Garage.find(params[:id])
  end

  def garage_params
    params.require(:garage).permit(:address, :width, :length, :price_per_hour, :name)
  end
end
