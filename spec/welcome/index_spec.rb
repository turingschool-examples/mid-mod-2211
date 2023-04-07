require "rails_helper"

RSpec.describe "Welcome Index", type: :feature do
  describe "As a user, When I visit '/'" do
    context "I fill in the search form with 'sweet potatoes' and click 'Search'" do
      it "I should be on page '/foods'"
      it "I should see a total of the number of items returned by the search"
      it "I should see a list of TEN foods that contain the ingredient 'sweet potatoes'"
      
      describe "for each of the foods I should see" do
        it "food's GTIN/UPC code"
        it "food's description"
        it " food's Brand Owner"
        it "food's ingredients"
      end
    end
  end
end