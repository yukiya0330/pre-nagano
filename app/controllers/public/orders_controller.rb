class Public::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end
end
