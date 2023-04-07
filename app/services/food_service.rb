# frozen_string_literal: true

class FoodService
  def all_foods(query)
    @all_foods ||= get_url("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}")
  end

  private
  def get_url(url)
    response = Faraday.get(url) do |faraday|
      faraday.headers['X-API-KEY'] = ENV['usda_key']
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end

