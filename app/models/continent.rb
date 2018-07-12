class Continent < ApplicationRecord
  has_many :locations
  has_many :countries

end
