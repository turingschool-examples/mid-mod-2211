class UsdaFacade
  attr_reader :service

  def initialize
    @service = UsdaService.new
  end

  def total_hits(food)
    food_data = service.food_search(food)
    food_data[:totalHits]
  end

  def food_search(food)
    food_data = service.food_search(food)
    food_data[:foods].map do |food|
      Food.new(food)
    end
  end
end