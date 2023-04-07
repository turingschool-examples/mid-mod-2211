require "rails_helper"

RSpec.describe "Welcome Index", type: :feature do
  describe "As a user, When I visit '/'" do
    context "I fill in the search form with 'sweet potatoes' and click 'Search'" do
      it "I should be on page '/foods'" do
        visit "/"
        fill_in :q, with: "sweet potatoes"
        click_on "Search"
        expect(current_path).to eq("/foods")
      end
    end
  end
end