class Food
  attr_reader :gtinupc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(info)
    @gtinupc = info[:gtinUpc]
    @description = info[:description]
    @brand_owner = info[:brandOwner]
    @ingredients = info[:ingredients]
  end
end