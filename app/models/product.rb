class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition
  belongs_to :owner



  validates :name, :description, :size, :price, :stock_quantity, presence: true
end
