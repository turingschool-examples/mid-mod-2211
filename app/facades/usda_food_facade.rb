class UsdaFoodFacade

  def search_food(food_word)
    foods = UsdaFoodService.new.search_food_word(food_word)
    array = foods[:foods][0,10].map do |food|
      Food.new(food)
    end

    hash = {
      total_hit: foods[:totalHits],
      foods: array
    }
  end
end