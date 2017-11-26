class LineItem < ApplicationRecord

  belongs_to :order
  belongs_to :product
  #validates :quantity, :price, presence:true

  before_save :set_price
  before_save :set_total_price

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  def total_price
    price * quantity
  end

  private
  
    def set_price
      self[:price] = price
    end

    def set_total_price
      self[:total_price] = quantity * set_price
    end
end
