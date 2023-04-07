require 'rails_helper'

RSpec.describe UsdaFoodService do
  it "return search_food(food_word)" do
    foods_search = UsdaFoodService.new
    foods = foods_search.search_food_word("sweet potatoes")

    expect(foods).to be_a(Hash)
    expect(foods[:foods]).to_not be([])
    expect(foods[:foods][0].keys).to eq([:fdcId,
                                        :description,
                                        :dataType,
                                        :gtinUpc,
                                        :publishedDate,
                                        :brandOwner,
                                        :ingredients,
                                        :marketCountry,
                                        :foodCategory,
                                        :modifiedDate,
                                        :dataSource,
                                        :servingSizeUnit,
                                        :servingSize,
                                        :householdServingFullText,
                                        :tradeChannels,
                                        :allHighlightFields,
                                        :score,
                                        :microbes,
                                        :foodNutrients,
                                        :finalFoodInputFoods,
                                        :foodMeasures,
                                        :foodAttributes,
                                        :foodAttributeTypes,
                                        :foodVersionIds])
  end
end