class Product < ApplicationRecord
  belongs_to :category #there is a category_id int key in product table

  validates :name, :description, :size, :condition, :price, :stock_quantity, presence: true
end
