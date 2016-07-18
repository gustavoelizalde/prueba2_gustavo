class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :serial, null: false
      t.string :name
      t.integer :wheel
      t.string :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :inventories, :serial, unique: true
  end
end
