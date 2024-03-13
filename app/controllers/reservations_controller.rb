class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_reservation, only: [:show, :destroy]
  before_action :set_garage, only: [:new, :create]

  def show
  end

  def index
    @reservations = Reservation.where(user: current_user)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
    @reservation.user = current_user
    @reservation.garage = @garage
    @reservation.price_cents = @reservation.calc_total_price
    if @reservation.save
      creating_order(@reservation)
      # redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @garage = @reservation.garage
    @reservation.destroy
    redirect_to garage_reservations_path(@garage)
  end

  private

  def creating_order(reservation)
    order = Order.create!(reservation: reservation, amount: reservation.price, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'eur',
          product_data: {
            name: "Parking @#{reservation.garage.address}",
            description: "From #{reservation.from}, until #{reservation.until}."
          },
          unit_amount: reservation.price_cents
        },
        quantity: 1
      }],
      mode: 'payment',
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

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
