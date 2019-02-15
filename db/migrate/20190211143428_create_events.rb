class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :movie_id
      t.date :date
      t.time :time_start
      t.time :time_end
      t.integer :capacity
      t.integer :hall

      t.timestamps
    end
  end
end
