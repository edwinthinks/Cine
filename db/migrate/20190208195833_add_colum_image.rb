class AddColumImage < ActiveRecord::Migration[5.1]
  def change
    add_column :Movies,:big_image,:string
  end
end
