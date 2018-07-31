class Image < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :product

  enum category: {
    catalog: 0,
    product_view: 1
  }
end
