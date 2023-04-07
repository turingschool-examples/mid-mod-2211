class FoodsController < ApplicationController
  def index
    @search_results = FoodFacade.new.search_food_keywords(params[:q])
  end
end