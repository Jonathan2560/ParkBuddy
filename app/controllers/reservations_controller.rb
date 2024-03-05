class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_reservation, only: [:show, :destroy]
  before_action :set_garage, only: [:index, :new, :create]

  def show
  end

  def index
    @garage = Garage.find(params[:garage_id])
    @reservations = @garage.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
    @reservation.garage = @garage
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_garage
    @garage = Garage.find(params[:garage_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:from, :until)
  end
end
