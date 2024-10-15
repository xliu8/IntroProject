class CreateStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :stocks do |t|
      t.references :store, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
