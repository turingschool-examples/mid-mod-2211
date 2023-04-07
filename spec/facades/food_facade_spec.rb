# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FoodFacade do
  let(:params) { { q: 'sweet potatoes' } }

  describe '#foods' do
    it 'returns an array of food objects' do
      expect(FoodFacade.new(params).foods).to be_an Array
      expect(FoodFacade.new(params).foods.first).to be_a Food
    end
  end

  describe '#count' do
    it 'returns an integer' do
      expect(FoodFacade.new(params).count).to be_an Integer
    end
  end
end
