class Public::CartsController < ApplicationController
  def show
    @carts = Cart.all
  end
  
  def create
    @cart = Cart.create(cart_params)
    @cart.save
  end
  
  private
  def cart_params
    params.permit(:item_id, :amount)
  end
end
