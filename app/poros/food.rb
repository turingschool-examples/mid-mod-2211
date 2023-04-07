class Food
attr_reader :description,
            :brand_owner,
            :ingredients,
            :code


  def initialize(food_data)
    @description = food_data[:description]
    @code = food_data[:gtinUpc]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end

end