class Owner < ApplicationRecord
  has_many :products

  validates :first_name, :last_name, :email, :phone_number, presence:true
end
