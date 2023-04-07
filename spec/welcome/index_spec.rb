require "rails_helper"

RSpec.describe "Welcome Index", type: :feature do
  describe "As a user, When I visit '/'" do
    context "I fill in the search form with 'sweet potatoes' and click 'Search'" do
      it "I should be on page '/foods'"
    end
  end
end