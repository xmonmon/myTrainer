class CitiesController < ApplicationController
  
  def index
  	@all_cities = City.all
  end

  def show
  	@city = City.find_by_id(params[:id])
  end
  
end
