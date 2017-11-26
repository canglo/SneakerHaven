class Order < ApplicationRecord
  has_many :line_items
  #belongs_to :customer

  #has_many :products, :through => :line_items

  before_save :set_subtotal

  #validates :status, :gst, :pst, :shipping_cost, presence:true

  def subtotal
    line_items.collect { |line_item| line_item.valid? ? (line_item.price*line_item.quantity) : 0}.sum
  end

  private
    def set_subtotal
      self[:subtotal] = subtotal
    end
end
