class Item < ApplicationRecord
  belongs_to :genre
  has_many :carts
  has_many :order_details
  attachment :image
  
  def with_tax_price
    (price * 1.1).floor
  end
  
  # enum item_status: [:sale, :sale_stop]
end
