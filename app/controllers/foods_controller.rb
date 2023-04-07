require './app/poros/food.rb'

class  FoodsController < ApplicationController

  def index
    
    response = Faraday.new.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{params[:q]}") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['usda_key']
    end
    json = JSON.parse(response.body, symbolize_names: true)
    @count = json[:totalHits]
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end.first(10)
  end
end