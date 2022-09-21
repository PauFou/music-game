class CreateSudokus < ActiveRecord::Migration[7.0]
  def change
    create_table :sudokus do |t|
      t.string :level
      t.integer :grid, array: true, default: []
      t.timestamps
    end
  end
end
