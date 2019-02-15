class AddStatusToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column :seats,:status,:string
  end
end
