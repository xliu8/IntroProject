class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.float :price
      t.integer :model_year

      t.timestamps
    end
  end
end
