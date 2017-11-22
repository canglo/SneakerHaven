class Customer < ApplicationRecord
  has_many :orders
  belongs_to :province
  
  validates :email, :password, :first_name, :last_name, :phone_number,
            :address, :city, :postal_code, :province_id,
            presence:true
end
