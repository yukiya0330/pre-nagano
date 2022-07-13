class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  has_many :items, through: :order_details
  has_many :deliveries, through: :customer
  
  enum payment_method: [:credit, :bank]
  
  def address_display
    '〒' + postal_code.to_s + ' ' + address + ' ' + name
  end
end
