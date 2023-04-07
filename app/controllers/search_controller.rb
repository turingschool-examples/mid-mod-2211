class SearchController < ApplicationController
  def index
    @facade = SearchFacade.new(params).returned_foods
  end
end