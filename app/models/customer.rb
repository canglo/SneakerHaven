class Customer < ApplicationRecord
  has_many :orders

  validates :email, :password, :first_name, :last_name, :phone_number,
            :address, :city, :province, :postal_code,
            presence:true
end
