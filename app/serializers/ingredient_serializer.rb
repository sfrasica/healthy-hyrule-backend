class IngredientSerializer < ActiveModel::Serializer
  attributes :name, :id
  belongs_to :dish
end
