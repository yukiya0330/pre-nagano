class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to public_customer_path(@customer)
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name_first, :name_last, :name_first_kana, :name_last_kana, :postal_code, :address, :phone_number, :is_deleted)
  end
end
