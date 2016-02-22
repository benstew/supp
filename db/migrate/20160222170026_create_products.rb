class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :serving_size
      t.integer :product_size
      t.string :family
      t.integer :goal_id

      t.timestamps null: false
    end
  end
end
