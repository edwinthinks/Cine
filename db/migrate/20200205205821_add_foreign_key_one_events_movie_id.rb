class AddForeignKeyOneEventsMovieId < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :events, :movies
  end
end
