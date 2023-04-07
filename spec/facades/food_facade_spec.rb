require "rails_helper"

RSpec.describe FoodFacade do
  let(:search_facade) { FoodFacade.new.search_food_keywords("sweet potatoes") }

  describe "it creates poros for" do
    it "Foods" do
      expect(search_facade.sample).to be_a(Food)

      # expect(search_facade.sample.gtinupc).to be_a(String)
      # expect(search_facade.sample.description).to be_a(String)
      # expect(search_facade.sample.brand_owner).to be_a(String)
      # expect(search_facade.sample.ingredients).to be_a(String)
      # need to go back and test for nil
    end
  end
end