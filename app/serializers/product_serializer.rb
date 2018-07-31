class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category

  has_many :images

  def category
    object.category.as_json(only: [:id, :name])
  end
end
