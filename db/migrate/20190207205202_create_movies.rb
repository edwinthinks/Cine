class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :duration
      t.string :synopsis
      t.string :genre
      t.string :trailer
      t.string :image

      t.timestamps
    end
  end
end
