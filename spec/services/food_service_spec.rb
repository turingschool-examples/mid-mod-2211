require "rails_helper"

RSpec.describe FoodService do
  let(:search_service) { FoodService.new.search_foods("sweet potatoes") }

  describe "it establishes a connection for" do
    it "Searching a Food by name" do
      expect(search_service).to be_an(Array)
      expect(search_service[0].keys.count).to eq(24)
      expect(search_service[0][:description].downcase).to eq("sweet potatoes")
    end
  end
end