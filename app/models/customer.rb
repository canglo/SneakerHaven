class Customer < ApplicationRecord
  validates :email, :password, :first_name, :last_name, :phone_number,
            :address, :city, :province, :country, :postal_code,
            presence:true
end
