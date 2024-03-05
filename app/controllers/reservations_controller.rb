class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_reservation, only: [:show, :destroy]

  def show
  end

  def index
    @reservations = Reservation.all
  end

  def new
    # add it to routes!
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
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

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:from, :until)
  end
end
