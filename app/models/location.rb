class Location < ApplicationRecord
  belongs_to :continent
  belongs_to :country

  # attr_reader :location_name
end
