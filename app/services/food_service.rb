class FoodService
  def ingredient_search(ingredient)
    get_url("/fdc/v1/foods/search?ingredients=#{ingredient}&api_key=#{ENV["FDCENTRAL_API_KEY"]}")
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/")
  end
end