class AddColumImage < ActiveRecord::Migration[5.1]
  def change
    add_column :movies,:big_image,:string
  end
end
