class Food
  attr_reader :description,
              :gtinUpc, 
              :brandOwner, 
              :ingredients,
              :marketCountry,
              :dataType,
              :dataSource,
              :foodCategory,
              :servingSizeUnit,
              :servingSize

  def initialize(info)
    @description = info[:description]
    @gtinUpc = info[:gtinUpc]
    @brandOwner = info[:brandOwner]
    @ingredients = info[:ingredients]
    @marketCountry = info[:marketCountry]
    @dataTypes = info[:dataTypes]
    @foodCategory = info[:foodCategory]
    @servingSize = info[:servingSize]
    @dataSource = info[:dataSource]
    @servingSizeUnit = info[:servingSizeUnit]
  end
end
