class GaragesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_garage, only: [:show, :destroy]

  def index
    radius = 1
    @garages = Garage.near(params[:address], radius)

    if params[:until].present?
      @garages = @garages.reject do |garage|
        garage.reservations.any? do |reservation|
          (reservation.until > params[:from].to_datetime && reservation.from < params[:until].to_datetime)
        end
      end
    end

    @reservation = Reservation.new

    @markers = @garages.map do |garage|
      {
        lat: garage.latitude,
        lng: garage.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {garage: garage})
      }
    end
  end

  def show
  end

  def new
    @garage = Garage.new
  end

  def step2
    @garage = Garage.new(garage_params)
    render 'new' unless @garage.valid?
  end

  def step3
    @garage = Garage.new(garage_params)
    render 'step2' unless @garage.valid?
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    if @garage.save
      redirect_to garage_path(@garage)
    else
      render 'step3'
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
    params.require(:garage).permit(:photo, :address, :width, :length, :price_per_minute, :name)

  end
end
