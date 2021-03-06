class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :name
      t.references :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
