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
    content = "https://www.parkbuddy.me/garages/#{@garage.id}/reservations/new"
    @qr_png = RQRCode::QRCode.new(content).as_png
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
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
    params.require(:garage).permit(:photo, :address, :width_in_meters, :length_in_meters, :price_per_minute, :name)

  end
end
