class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :category_id

      t.timestamps
    end
  end
end
