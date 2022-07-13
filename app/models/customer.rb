class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carts
  has_many :deliveries
  has_many :orders
  
  # enum is_deleted: [:valid, :withdraw]
  
  def full_name
    self.name_first + self.name_last
  end
  
  def full_name_kana
    self.name_first_kana + self.name_last_kana
  end
  
  def address_display
    '〒' + postal_code + ' ' + address + ' ' + name_first + name_last
  end

end
