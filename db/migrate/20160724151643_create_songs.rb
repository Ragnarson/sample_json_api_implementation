class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.date :release_date
      t.text :lyrics
      t.integer :album_id

      t.timestamps
    end
  end
end
