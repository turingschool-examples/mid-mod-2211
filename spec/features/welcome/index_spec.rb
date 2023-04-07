require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'As a visitor' do
    describe 'When I visit the welcome index page' do
      it 'I see a search bar where I can search for foods' do
        visit root_path

        expect(page).to have_link "Ingredient Search"
        expect(page).to have_field(:q)
        expect(page).to have_button('Search')
      end
    end
  end
end