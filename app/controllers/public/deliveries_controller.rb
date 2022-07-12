class Public::DeliveriesController < ApplicationController
  def index
    @deliveries = Delivery.all
  end
  
  def edit
    @delivery = Delivery.find(params[:id])
  end
  
  def create
    @delivery = current_customer.deliveries.new(delivery_params)
    @delivery.save
    redirect_to public_deliveries_path
  end
  
  def update
    @delivery = Delivery.find(params[:id])
    @delivery.update(delivery_params)
    redirect_to public_deliveries_path
  end
  
  def destroy
    delivery = current_customer.deliveries.find(params[:id])
    delivery.destroy
    redirect_to public_deliveries_path
  end
  
  private
  def delivery_params
    params.require(:delivery).permit(:customer_id, :name, :post_code, :address)
  end
end
