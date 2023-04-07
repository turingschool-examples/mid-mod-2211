# frozen_string_literal: true

class FoodFacade
  def initialize(params)
    @params = params
  end

  def foods
    json = FoodService.new.all_foods(@params[:q])
    json[:foods].map do |food_data|
      Food.new(food_data)
    end.first(10)
  end

  def count
    FoodService.new.all_foods(@params[:q])[:totalHits]
  end

  
end
