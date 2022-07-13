class Delivery < ApplicationRecord
  belongs_to :customer
  
  def address_display
    '〒' + self.post_code.to_s + ' ' + self.address + ' ' + self.name
  end
end
