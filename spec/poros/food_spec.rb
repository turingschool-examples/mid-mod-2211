require 'rails_helper'

RSpec.describe Food do
  let(:food_data) { {description: "Cheese", gtinUpc: '12345', brandOwner: 'Taco Bell', ingredients: 'not cheese'}}
  let(:food) {Food.new(food_data)}

  it 'should have details' do
    expect(food).to be_a Food
    expect(food.description).to eq('Cheese')
    expect(food.code).to eq('12345')
    expect(food.brand_owner).to eq('Taco Bell')
    expect(food.ingredients).to eq('not cheese')
  end
end 