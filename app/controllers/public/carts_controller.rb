class Public::CartsController < ApplicationController
  def show
    @carts = Cart.all
  end
  
  def create
    cart = current_customer.carts.new(cart_params)
    cart.save
    redirect_to public_cart_path(cart)
  end
  
  def destroy
    cart = Cart.find(params[:id])
    # cart.customer_id = current_customer.id
    cart.destroy
    redirect_to request.referer
  end
  
  def destroy_all
    carts = Cart.all
    carts.customer_id = current_customer.id
    carts.destroy
    redirect_to request.referer
  end
  
  private
  def cart_params
    params.require(:cart).permit(:item_id, :amount)
  end
end
