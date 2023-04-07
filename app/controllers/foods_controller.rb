class FoodsController < ApplicationController
  def index
    @foods = UsdaFacade.new.food_search(params[:q])
    @total_hits = UsdaFacade.new.total_hits(params[:q])
  end
end