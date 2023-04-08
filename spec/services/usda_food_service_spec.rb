require 'rails_helper'

RSpec.describe UsdaFoodService do
  it "return search_food(food_word)" do
    foods_search = UsdaFoodService.new
    foods = foods_search.search_food_word("sweet potatoes")

    expect(foods).to be_a(Hash)
    expect(foods[:foods]).to_not be([])
    expect(foods[:foods][0].keys.count).to eq(24)                                        
  end
end