require 'rails_helper'

RSpec.describe FoodService do
  let(:query) { 'chocolate' }
  describe '#all_foods' do
    it 'returns a hash with certain attributes' do
      service = FoodService.new.all_foods(query)
      expect(service).to be_a Hash
      expect(service[:totalHits]).to be_an Integer
      expect(service[:foods][0][:description]).to be_a String
      expect(service[:foods][0][:gtinUpc]).to be_a String
      expect(service[:foods][0][:brandOwner]).to be_a String
      expect(service[:foods][0][:ingredients]).to be_a String
    end
  end


end