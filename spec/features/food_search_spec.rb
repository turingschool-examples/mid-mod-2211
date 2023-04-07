require 'rails_helper'

describe "as a user" do
  describe "when I visit '/' and fill in the search form with 'sweet potatoes' and click search" do
    before :each do
      visit '/'
      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
    end

    it "should take me to the page '/foods/" do
      expect(page.current_path).to eq(foods_path)
    end

    it "I should see a total of the number of items returned by the search (sweet potatoes should find more than 30k results)" do
      expect(page).to have_content("38114 results for foods containing 'sweet potatoes'")
    end

    it "should show a list of TEN foods that contain the ingredient sweet potatoes" do
      expect(page).to have_content("Result #", count: 10)
    end

    it "for each of the foods I should see GTIN/UPC code, description, Brand Owner, and ingredients" do
      expect(page).to have_content('728229015529')
      expect(page).to have_content("SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY")
      expect(page).to have_content("The Hain Celestial Group, Inc.")
      expect(page).to have_content("A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.")
    end
  end
end