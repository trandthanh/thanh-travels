class AddFeaturedToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :featured, :boolean
  end
end
