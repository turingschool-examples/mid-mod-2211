class SearchFacade
  attr_reader :search_query
  def initialize(params)
    @search_query = params[:q]
  end

  def service
    FoodService.new
  end

  def returned_foods
    json = service.ingredient_search(@search_query)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

  def number_of_returned_foods
    json = service.ingredient_search(@search_query)
    json[:totalHits]
  end
end