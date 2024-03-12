class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    reservation = Reservation.find(params[:reservation_id]) # Is this the correct id, are we passing it in params?
    order = Order.create!(reservation: reservation, amount: reservation.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Parking @#{reservation.garage.address}",
        # images: [Cloudinary::Utils.cloudinary_url(reservation.garage.photo.key, :width => 100, :height => 150, :crop => :fill)],
        amount: reservation.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
end
