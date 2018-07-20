class LocationsController < ApplicationController

  def show
    @location_url = params[:url]
    @location = Location.find_by(url: @location_url)

    @locations = Location.all

    @location_random = Location.all.where("url != ?", current_location.url).sample.url

    # Navbar
    @asia_countries = Country.where("continent_id = '3'")
    @europe_countries = Country.where("continent_id = '2'")
    @namerica_countries = Country.where("continent_id = '1'")
  end

  private

  def current_location
    @current_location ||= Location.find_by(url: params[:url]) if params[:url]
  end
end
