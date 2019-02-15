class AddStatusToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column :Seats,:status,:string
  end
end
