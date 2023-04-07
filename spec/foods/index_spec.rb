require "rails_helper"

RSpec.describe "Foods Index", type: :feature do
  describe "As a user, When I visit '/foods'" do
    let(:search) { FoodFacade.new.search_food_keywords("sweet potatoes") }

    before do
      visit "/"
      fill_in :q, with: "sweet potatoes"
      click_on "Search"
    end

    context "I fill in the search form on '/' with 'sweet potatoes' and click 'Search'" do
      it "I should be on page '/foods'" do
        expect(current_path).to eq("/foods")
        expect(page).to have_content("Foods that match your search:")
      end

      # it "I should see a total of the number of items returned by the search" do
      # set up service wrong - need to go back and redo
      # end


      it "I should see a list of TEN foods that contain the ingredient 'sweet potatoes'" do
        expect(page).to have_content(search.first.description)
      end
      
      describe "for each of the foods I should see" do
        it "food's GTIN/UPC code"
        it "food's description"
        it " food's Brand Owner"
        it "food's ingredients"
      end
    end
  end
end