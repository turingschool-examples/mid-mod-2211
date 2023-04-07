require "rails_helper"

RSpec.describe Food do
  it "Creates an Object for Food" do
    food = FoodFacade.new.search_food_keywords("sweet potatoes").first

    expect(food.gtinupc).to be_a(String)
    expect(food.description).to be_a(String)
    expect(food.brand_owner).to be_a(String)
    expect(food.ingredients).to be_a(String)
  end
end