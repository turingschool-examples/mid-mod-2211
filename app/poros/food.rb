class Food
  attr_reader :id, :gtinupc, :description, :brand_owner, :ingredients
  def initialize(attrs)
    @id = attrs[:fdcId]
    @gtinupc = attrs[:gtinUpc]
    @description = attrs[:description]
    @brand_owner = attrs[:brandOwner]
    @ingredients = attrs[:ingredients]
  end
end