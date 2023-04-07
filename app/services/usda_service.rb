class UsdaService
  def food_search(food)
    response = conn.get("/fdc/v1/foods/search?ingredients=#{food}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['USDA_API_KEY']
    end
  end
end