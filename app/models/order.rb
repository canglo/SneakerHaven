class Order < ApplicationRecord
  validates :status, :gst, :pst, :shipping_cost, presence:true
end
