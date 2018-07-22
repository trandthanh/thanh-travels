class PagesController < ApplicationController

  def home
    # Navbar
    @asia_countries = Country.where("continent_id = '3'")
    @europe_countries = Country.where("continent_id = '2'")
    @namerica_countries = Country.where("continent_id = '1'")

    # Featured Locations
    @featured_locations = Location.where("featured = true")
  end

  def about
    # Navbar
    @asia_countries = Country.where("continent_id = '3'")
    @europe_countries = Country.where("continent_id = '2'")
    @namerica_countries = Country.where("continent_id = '1'")
  end
end
