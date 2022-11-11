class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.decimal :price, null: false
      t.string :description, null: false
      t.integer :brand, null: false
      t.integer :condition, null: false
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
