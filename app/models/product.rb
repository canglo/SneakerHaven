class Product < ApplicationRecord
  belongs_to :category, :condition

  validates :name, :description, :size, :condition, :price, :stock_quantity, presence: true
end
