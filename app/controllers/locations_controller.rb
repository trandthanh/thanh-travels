class LocationsController < ApplicationController


  def show
    @location_url = params[:url]
    @location = Location.find_by(url: @location_url)
  end

end
