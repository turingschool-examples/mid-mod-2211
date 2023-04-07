class < FoodController < ApplicationController

  def index
    response = Faraday.new.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{params[:foods]}") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['usda_key']
    end
    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json[:data].map do |food_data|
      food.new(food_data, params[:state])
    end
  end
end