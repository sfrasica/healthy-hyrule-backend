class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all

        render json: ingredients #array of hashes, all of the dish instances
    end

    def create
        ingredient = Ingredient.create(ingredients_params)
        render json: ingredient #this is the response to the fetch
    end

    def update
        ingredient = Ingredient.find(id: params[:id])

        render json: ingredient
    end



    private

    def ingredients_params
        params.require(:ingredient).permit(:name, :dish_id)
    end


end
