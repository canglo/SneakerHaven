class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition
  belongs_to :owner

  has_many :line_items
  #has_many :orders, :through => :line_items

  mount_uploader :image, ImageUploader

  validates :name, :description, :size, :price, :stock_quantity, :image, presence: true

  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end
end
