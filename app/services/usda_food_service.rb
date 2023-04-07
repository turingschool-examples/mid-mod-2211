class UsdaFoodService
  def search_food_word(food_word)
    JSON.parse(conn.get("fdc/v1/foods/search?query=#{food_word}&numberOfResultsPerPage=10").body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/",
    params: { api_key: ENV['FOOD_API_KEY']})
  end
end