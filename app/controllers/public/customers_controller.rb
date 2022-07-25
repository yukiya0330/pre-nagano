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
  
  def withdrawal
    @customer = Customer.find(params[:customer_id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name_first, :name_last, :name_first_kana, :name_last_kana, :postal_code, :address, :phone_number, :is_deleted)
  end
end
