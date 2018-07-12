class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.date :visit_date
      t.references :continent, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
