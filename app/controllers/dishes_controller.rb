class DishesController < ApplicationController

    def index
        dishes = Dish.all

        render json: dishes #array of hashes, all of the dish instances
    end

    def show
        dish = Dish.find_by(id: params[:id])
        render json: dish
    end

    def destroy
        dish = Dish.find_by(id: params[:id])
        dish.destroy
        
    end


    private
    
    def dishes_params
        params.require(:dish).permit(:name)
    end


end
