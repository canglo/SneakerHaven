class Order < ApplicationRecord
  belongs_to :customer

  validates :status, :gst, :pst, :shipping_cost, presence:true
end
