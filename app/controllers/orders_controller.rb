class OrdersController < ApplicationController
  def create
    shoe = Shoe.find(params[:shoe_id])
    order = Order.create!(shoe: shoe, shoe_sku: shoe.sku, amount: shoe.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: shoe.sku,
        images: [shoe.photo_url],
        amount: shoe.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
