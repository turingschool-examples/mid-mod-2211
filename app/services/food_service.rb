class FoodService

  def search_foods(food)
    response = connection.get("foods/search?query=#{food}")
    JSON.parse(response.body, symbolize_names: true)[:foods]
  end

  private
  def connection
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.params["api_key"] = ENV["api_key"]
    end
  end
end