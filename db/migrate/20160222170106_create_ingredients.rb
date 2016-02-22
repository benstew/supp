class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.string :location_made
      t.text :composition
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
