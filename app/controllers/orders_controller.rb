class OrdersController < ApplicationController
  def create
    service = Service.find(params[:service_id])
    order = Order.create!(service: service, service_sku: service.sku, amount: service.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        quantity: 1,
        price_data: {
          unit_amount: service.price_cents.to_s.to_i,
          currency: 'gbp',
          product_data: {
            name: service.title
          }
        }
      ],
      mode: "payment",
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
