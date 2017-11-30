class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  belongs_to :province

  validates :email, :password, :first_name, :last_name, :phone_number,
            :address, :city, :postal_code, :province_id,
            presence:true
end
