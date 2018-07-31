class ImageSerializer < ActiveModel::Serializer
  attributes :id, :category, :url

  def url
    object.image.url
  end
end
