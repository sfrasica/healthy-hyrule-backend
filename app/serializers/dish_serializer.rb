class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url
  has_many :ingredients
end
