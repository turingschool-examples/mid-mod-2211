require "rails_helper"

RSpec.describe FoodFacade do
  let(:search_facade) { FoodFacade.new.search_food_keywords("sweet potatoes") }

  describe "it creates poros for" do
    it "Foods" do
      expect(search_facade.sample).to be_a(Food)
    end
  end
end