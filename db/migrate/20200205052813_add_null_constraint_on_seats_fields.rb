class AddNullConstraintOnSeatsFields < ActiveRecord::Migration[5.1]
  def change
    change_column_null :seats, :name, false
    change_column_null :seats, :price, false
    change_column_null :seats, :status, false
  end
end
