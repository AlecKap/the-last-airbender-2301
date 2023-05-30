class SearchController < ApplicationController
  def index
    @searchfacade = SearchFacade.new(params[:nation]) 
  end
end