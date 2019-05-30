class CreatePreference < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_create_artists
      t.boolean :allow_create_songs

      t.timestamps null: false
    end
  end
end
