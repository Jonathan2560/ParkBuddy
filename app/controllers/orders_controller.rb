class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    reservation = Reservation.find(params[:reservation_id])
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
end
