class IngredientSerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :dish
end
