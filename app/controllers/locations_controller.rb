class LocationsController < ApplicationController


  def show
    @location_url = params[:url]
    @location = Location.where(url: @location_url)
  end

end
