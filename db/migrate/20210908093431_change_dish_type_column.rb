class ChangeDishTypeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :dishes, :dish_type, :string
  end
end
