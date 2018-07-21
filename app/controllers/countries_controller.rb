class CountriesController < ApplicationController

  def show
    @country_name = params[:country_name]
    @country = Country.find_by(country_name: @country_name.downcase)

    @country_locations = Location.where("country_id = 3")

    # Navbar
    @asia_countries = Country.where("continent_id = '3'")
    @europe_countries = Country.where("continent_id = '2'")
    @namerica_countries = Country.where("continent_id = '1'")
  end

end
