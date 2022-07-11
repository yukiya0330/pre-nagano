class Public::CartsController < ApplicationController
  def show
    @carts = Cart.all
  end
  
  def create
    cart = current_customer.carts.new(cart_params)
    cart.save
    redirect_to public_items_path
  end
  
  private
  def cart_params
    params.require(:cart).permit(:item_id, :amount)
  end
end
