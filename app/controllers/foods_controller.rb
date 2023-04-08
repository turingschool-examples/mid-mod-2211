class FoodsController < ApplicationController
  def index
    @total_hit = UsdaFoodFacade.new.search_food(params[:q])
  end
end