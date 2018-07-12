class PagesController < ApplicationController

  def home
    # Featured Locations
    @featured_locations = Location.where("featured = true")
  end
end
