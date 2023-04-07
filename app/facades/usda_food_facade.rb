class UsdaFoodFacade
  def search_food(food_word)
    foods = UsdaFoodService.new.search_food_word(food_word)
    foods[:foods].map do |food|
      binding.pry
      Food.new(food)
    end
  end
end