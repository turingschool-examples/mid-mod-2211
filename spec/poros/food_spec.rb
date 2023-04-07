require 'rails_helper'

RSpec.describe Food do
  describe 'instance methods' do
    describe '#initialize' do
      it 'exists and has attributes' do

        food_data = {
          gtin_upc: '986986',
          description: 'Sweet Potatoes',
          brand_owner: 'Potato Bois Inc.',
          ingredients: 'Organic Sweet Potatoes'
        }
        food = Food.new(food_data)

        expect(food).to be_a(Food)
        expect(food.gtin_upc).to eq('986986')
        expect(food.description).to eq('Sweet Potatoes')
        expect(food.brand_owner).to eq('Potato Bois Inc.')
        expect(food.ingredients).to eq('Organic Sweet Potatoes')
      end
    end
  end
end