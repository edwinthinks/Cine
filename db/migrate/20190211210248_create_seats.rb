class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.integer :name
      t.integer :event_id
      t.integer :price
      t.integer :reservation_id

      t.timestamps
    end
  end
end
