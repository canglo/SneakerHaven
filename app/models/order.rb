class Order < ApplicationRecord
  belongs_to :customer

  has_many :line_items
  has_many :products, :through => :line_items

  validates :status, :gst, :pst, :shipping_cost, presence:true
end
