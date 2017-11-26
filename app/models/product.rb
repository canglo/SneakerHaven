class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition
  belongs_to :owner

  has_many :line_items
  #has_many :orders, :through => :line_items

  mount_uploader :image, ImageUploader

  validates :name, :description, :size, :price, :stock_quantity, :image, presence: true

  # before_save :update_image_attributes
  #
  # private
  #   def update_image_attributes
  #     if image.present? && image_changed?
  #       self.image_content_type = image.file.content_type
  #       self.image_file_size = image.file.size
  #     end
  #   end
end
