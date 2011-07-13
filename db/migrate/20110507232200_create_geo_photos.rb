class CreateGeoPhotos < ActiveRecord::Migration
  def change
    create_table :geo_photos do |t|
      t.text :notes
      t.float :latitude
      t.float :longitude
      t.string :file

      t.timestamps
    end
  end
end
