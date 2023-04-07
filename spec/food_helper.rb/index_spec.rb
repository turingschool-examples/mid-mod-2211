require 'rails_helper'


describe 'Food Index Page' do
  context 'making a search from the welcome page' do

    before do 
      visit root_path
      fill_in 'q' with 'sweet potatoes'
      click_on 'Search'
    end

    it 'should be on the correct page' do
      expect(current_path).to eq(foods_path)
    end

    it 'should have a total number of food items' do
      expect(page).to have content('Total Hits: 57086')
    end

    it 'should only have 10 food items' do
      expect(page).to have_css("Food:", count: 10)
    end

  end
end