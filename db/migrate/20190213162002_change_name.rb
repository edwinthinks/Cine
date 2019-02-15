class ChangeName < ActiveRecord::Migration[5.1]
  def change
    change_column :seats, :name, :string
  end
end
