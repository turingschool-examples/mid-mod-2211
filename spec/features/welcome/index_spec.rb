require 'rails_helper'

RSpec.describe 'welcome page' do
  it "have a form to search for food by word" do
    visit "/"

    expect(page).to have_link("Ingredient Search")

    fill_in "Ingredient Search", with: "sweet potatoes"

    click_on "Search"
    expect(current_path).to eq("/foods")
  end
end