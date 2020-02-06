class AddNullConstraintOnMoviesFields < ActiveRecord::Migration[5.1]
  def change
    change_column_null :movies, :name, false
    change_column_null :movies, :duration, false
    change_column_null :movies, :synopsis, false
    change_column_null :movies, :genre, false
    change_column_null :movies, :trailer, false
    change_column_null :movies, :image, false
    change_column_null :movies, :big_image, false
  end
end
