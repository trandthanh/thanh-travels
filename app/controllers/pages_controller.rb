class PagesController < ApplicationController

  def home
    # Navbar
    @asia_countries = Country.where("continent_id = '3'")

    # Featured Locations
    @featured_locations = Location.where("featured = true")
  end
end
