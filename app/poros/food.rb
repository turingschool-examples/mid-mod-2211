class Food
  attr_reader :description,
              :gtinUpc, 
              :brandOwner, 
              :ingredients
            
  def initialize(info)
    @description = info[:description]
    @gtinUpc = info[:gtinUpc]
    @brandOwner = info[:brandOwner]
    @ingredients = info[:ingredients]
  end
end
