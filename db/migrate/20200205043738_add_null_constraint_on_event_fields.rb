class AddNullConstraintOnEventFields < ActiveRecord::Migration[5.1]
  def change
    change_column_null :events, :movie_id, false
    change_column_null :events, :date, false
    change_column_null :events, :time_start, false
    change_column_null :events, :time_end, false
    change_column_null :events, :capacity, false
    change_column_null :events, :hall, false
  end
end
