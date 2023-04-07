require 'rails_helper'

RSpec.describe Food do
  let!(:sweet_fries) {Food.new({ description: "sweet", ingredients: "sweet potatoes"})}

  describe "#initialize" do
    it "exists" do
     expect(sweet_fries).to be_a(Food)
    end

    it "has a attributes" do
      expect(sweet_fries.description).to eq("sweet")
      expect(sweet_fries.ingredients).to eq("sweet potatoes")
    end
  end

end