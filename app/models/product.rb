class Product < ApplicationRecord
  validates :name, :description, :size, :condition, :price, :stock_quantity, presence: true
end
