class Public::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @orders = current_customer.orders.all
  end
  
  def new
    @order = current_customer.orders.new
  end
  
  def create
    @order = current_customer.orders.new(order_params)
    @order.save
    redirect_to public_orders_clear_path
  end
  
  private
  def order_params
    params.require(:order).permit(:customer_id, :item_id, :postal_code, :address, :name)
  end
end
