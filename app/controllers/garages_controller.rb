class GaragesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_garage, only: [:show, :destroy]

  def index
    if params[:address].present?
      current_user.update(address: params[:address])
    end
    @garages = Garage.near(current_user.address, 3)
    # if params[:until] && params[:from]
    #   @garages = @garages.select do |garage|
    #     garage.reservations.none? do |reservation|
    #       (reservation.from < params[:until] && reservation.from > params[:from]) ||
    #       (reservation.until < params[:until] && reservation.until > params[:from])
    #     end
    #   end
    # end
    if params[:until].present?
      @garages = @garages.reject do |garage|
        garage.reservations.any? do |reservation|
          raise
          (reservation.from < params[:until].to_datetime && reservation.until > params[:from].to_datetime)
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
    params.require(:garage).permit(:address, :width, :length, :price_per_minute, :name)
  end
end
