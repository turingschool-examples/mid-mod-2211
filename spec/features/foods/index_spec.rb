require 'rails_helper'

RSpec.describe 'Food Index Page' do
  describe 'As a visitor' do
    describe 'When I visit the food index page' do
      it 'I see a list of the 10 foods that contain the ingredient "sweet potatoes"' do
        visit root_path

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'

        expect(current_path).to eq(foods_path)
        expect(page).to have_content("38114 Results found, Displaying 10")
        expect(page).to have_content("GTIN/UPC code: 728229015529")
        expect(page).to have_content("Description: SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY")
        expect(page).to have_content("Brand Owner: The Hain Celestial Group, Inc.")
        expect(page).to have_content("Ingredients: A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.")
      end
    end
  end
end