# frozen_string_literal: true

require './app/poros/food'

class FoodsController < ApplicationController
  def index
    @facade = FoodFacade.new(params)
  end
end
