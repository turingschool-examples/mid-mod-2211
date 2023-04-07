class FoodFacade
  attr_reader :service

  def initialize
    @service = FoodService.new
  end

  def search_food_keywords(food)
    json = service.search_foods(food)
    json.map do |data|
      Food.new(data)
    end
  end
end