class AddColumnsToMusics < ActiveRecord::Migration[7.0]
  def change
    add_column :musics, :album_photo, :string
    add_column :musics, :artist_photo, :string
  end
end
