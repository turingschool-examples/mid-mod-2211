require 'rails_helper'

describe Food do
  it "can create a new food" do
    attrs = {
      "fdcId": 2401251,
      "description": "SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY",
      "dataType": "Branded",
      "gtinUpc": "728229015529",
      "publishedDate": "2022-12-22",
      "brandOwner": "The Hain Celestial Group, Inc.",
      "brandName": "TERRA",
      "ingredients": "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.",
      "marketCountry": "United States",
      "foodCategory": "Chips, Pretzels & Snacks",
      "modifiedDate": "2021-03-11",
      "dataSource": "LI",
      "packageWeight": "5 oz/141 g",
      "servingSizeUnit": "g",
      "servingSize": 28.0,
      "householdServingFullText": "1 ONZ",
      "shortDescription": "",
      "tradeChannels": [
          "NO_TRADE_CHANNEL"
      ],
      "allHighlightFields": "<b>Ingredients</b>: A BLEND OF <em>SWEET</em> <em>POTATOES</em> (<em>SWEET</em> <em>POTATO</em>, PURPLE <em>SWEET</em> <em>POTATO</em>, BATATA), AVOCADO OIL, SEA SALT.",
      "score": -442.0328,
      "microbes": [],
      "finalFoodInputFoods": [],
      "foodMeasures": [],
      "foodAttributes": [],
      "foodAttributeTypes": [],
      "foodVersionIds": []
  }


    food = Food.new(attrs)

    expect(food).to be_an_instance_of Food
    expect(food.gtinupc).to eq("728229015529")
    expect(food.id).to eq(2401251)
    expect(food.description).to eq("SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY")
    expect(food.brand_owner).to eq("The Hain Celestial Group, Inc.")
    expect(food.ingredients).to eq("A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.")
  end
end