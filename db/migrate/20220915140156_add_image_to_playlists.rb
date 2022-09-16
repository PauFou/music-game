class AddImageToPlaylists < ActiveRecord::Migration[7.0]
  def change
    add_column :playlists, :album_photo, :string
    add_column :playlists, :image_url, :string
  end
end
