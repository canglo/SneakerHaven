class Page < ApplicationRecord
  validates :about, :title, :phone_number, :address, :city, :province, :postal_code, :email, presence: true
end
