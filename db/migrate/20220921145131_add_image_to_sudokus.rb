class AddImageToSudokus < ActiveRecord::Migration[7.0]
  def change
    add_column :sudokus, :image_url, :string
  end
end
