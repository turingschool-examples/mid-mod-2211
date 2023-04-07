require 'rails_helper'
require './app/facades/usda_food_facade'

RSpec.describe "UsdaFoodFacade" do
  it "exists" do
    usda_food_facade = UsdaFoodFacade.new
    expect(usda_food_facade).to be_an(UsdaFoodFacade)
  end

  it "return food by search wood" do
    all_foods = UsdaFoodFacade.new
    foods = all_foods.search_food("sweet potatoes")
    
    expect(foods.first.brandOwner).to be_a(String)
    expect(foods.first.ingredients).to be_a(String)
    expect(foods.first.servingSize).to be_a(Float)
  end
end