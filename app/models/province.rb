class Province < ApplicationRecord
  has_many :customers
  validates :name, :pst, :gst, presence:true
end
