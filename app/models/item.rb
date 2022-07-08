class Item < ApplicationRecord
  belongs_to :customer
  belongs_to :genre
  has_many :carts
  attachment :image
end
