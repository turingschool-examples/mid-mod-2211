# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Food Index Page', type: :feature do
  context 'making a search from the welcome page' do
    let(:response) do
      Faraday.new.get('https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet+potatoes') do |faraday|
        faraday.headers['X-API-KEY'] = ENV['usda_key']
      end
    end
    let(:json) { JSON.parse(response.body, symbolize_names: true) }
    let(:count) { json[:totalHits] }
    let(:foods) do
      json[:foods].map do |food_data|
        Food.new(food_data)
      end.first(10)
    end
    before do
      visit root_path
      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
    end

    it 'should be on the correct page' do
      expect(current_path).to eq(foods_path)
    end

    it 'should have a total number of food items' do
      expect(page).to have_content("Total Hits: #{count}")
    end

    it 'should only have 10 food items' do
      expect(page).to have_css('#food', count: 10)
    end

    it 'each food should have its details' do
      foods.each do |food|
        expect(page).to have_content(food.code)
        expect(page).to have_content(food.description)
        expect(page).to have_content(food.brand_owner)
        expect(page).to have_content(food.ingredients)
      end
    end
  end
end
