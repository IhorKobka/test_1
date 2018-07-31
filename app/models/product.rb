class Product < ApplicationRecord
  belongs_to :category

  has_many :images

  validates :name, presence: true, length: { maximum: 100 }
end
