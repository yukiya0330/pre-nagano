class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all  
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customer.find(params[:id])  
  end
  
  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customers_path
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name_first, :name_last, :name_first_kana, :name_last_kana, :postal_code, :address, :phone_number, :is_deleted)
  end
  
end
