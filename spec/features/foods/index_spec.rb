require 'rails_helper'

RSpec.describe 'food index page' do
  it "have a form to search for ingredient and be redirected to food index page" do
    visit "/"

    fill_in("q", with: "sweet potatoes")

    click_on("Search")
    expect(current_path).to eq("/foods")
    expect(page).to have_content("Total Hits: 51270")
    expect(page).to have_content("GTIN/UPC:", count: 10 )
  
    within "#id-8901020020844" do
      expect(page).to have_content("GTIN/UPC: 8901020020844")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
    end
  end
end