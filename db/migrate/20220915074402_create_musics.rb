class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.integer :release_date
      t.string :preview
      t.integer :bpm
      t.string :artist
      t.string :album
      t.references :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
