class AddCategoryIdToPics < ActiveRecord::Migration
  def change
    add_column :pics, :category_id, :integer
  end
end
