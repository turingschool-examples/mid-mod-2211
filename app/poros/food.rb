class Food
attr_reader :description
  def initialize(food_data)
    @description = food_data[:description]
  end
end