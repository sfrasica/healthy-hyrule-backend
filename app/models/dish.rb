class Dish < ApplicationRecord
    has_many :ingredients , dependent: :destroy
end
