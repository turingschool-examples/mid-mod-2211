class SearchController < ApplicationController
  def index
    @foods = FoodService.new.ingredient_search(params[:q])
  end
end