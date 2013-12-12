module DynamicSelect
  class CitiesController < ApplicationController
    respond_to :json

    def index
      @cities = City.where(:region_id => params[:region_id])
      respond_with(@cities)
    end
  end
end
